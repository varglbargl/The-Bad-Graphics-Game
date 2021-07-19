local Utils = require(script:GetCustomProperty("Utils"))

local enemy = script.parent.parent

local MESH = script:GetCustomProperty("AnimatedMesh"):WaitForObject()

local IDLE_ANIM = script:GetCustomProperty("IdleAnimation")
local READY_ANIM = script:GetCustomProperty("ReadyAnimation")
local WALK_ANIM = script:GetCustomProperty("WalkAnimation")
local RUN_ANIM = script:GetCustomProperty("RunAnimation")
local ATTACK_ANIM = script:GetCustomProperty("AttackAnimation")
local DIE_ANIM = script:GetCustomProperty("DieAnimation")

if IDLE_ANIM ~= "" then MESH.animationStance = IDLE_ANIM end

local DAMAGED_VFX = script:GetCustomProperty("DamagedVFX")
local DEATH_VFX = script:GetCustomProperty("DeathVFX")
local ATTACK_VFX = script:GetCustomProperty("AttackVFX")
local IDLE_SFX = script:GetCustomProperty("IdleSFX")

local NAMEPLATE = script:GetCustomProperty("Nameplate"):WaitForObject()

local isDead = false
local lastKnownPosition = MESH:GetWorldPosition()
local clientPlayer = Game.GetLocalPlayer()

local idleMessages = {
  "glowers at you dupiously.",
  "has something shiny in its mouth.",
  "squeaks. *SQUEAK*",
  "squeaks twice. *SQUEAK SQUEAK*",
  "says something racist so it's fine if you kill it now.",
  "eyes you suspiciously.",
  "looks like it's coming right for you!",
  "is minding its business.",
  "twitches a little.",
  "sniffs the air.",
  "winks at you. *ding*",
  "grooms itself with its paws.",
  "looks hungry.",
  "judges you amiably.",
  "glares are you threateningly.",
  "looks your way apprehensively.",
  "regards you indifferently.",
  "looks upon you warmly.",
  "regards you as an ally.",
  "is shaped like a friend.",
  "looks evil. You should probably kill it.",
  "doesn't look like much of a challenge.",
  "looks like a reasonably safe opponent.",
  "scowls at you, ready to attack! What would you like your tombstone to say?"
}

local ratNames = {
  "Good Graphics Rat",
  "Rat of Stunning Fidelity",
  "High Definition Rat",
  "Impressive Looking Rat",
  "Rat of Impeccable Clarity",
  "Amazing Graphics Rat",
  "Very Good Graphics Rat",
  "High-Poly Rat",
  "Immaculately Rendered Rat",
  "Awe-Inspiring Rat",
  "Rat, Technological Marvel",
  "Rat, 3D Masterwork",
  "Expertly Sculpted Rat",
  "Rat of Ample Verticies",
  "Intricately Detailed Rat",
  "Masterfully Recreated Rat",
  "Astonishingly Realistic Rat",
  "Rat of Painstaking Exactitude",
  "Rat of True Verisimilitude",
  "A Glimpse into the Future of Computerized Rat Recreation",
  "The Sequel to Rats with Five Electric Asses",
  "Rat of Voracious Veracity",
  "Remarkably Lifelike Rat",
  "Computationally Exorbitant Rat",
  "Good Lookin' Rat",
  "Perfectly Simulated Rat"
}

local ratName = ratNames[math.random(1, #ratNames)]

NAMEPLATE.text = string.upper(ratName)

function idleLoop()
  Task.Wait(math.random(50, 100) / 10)

  if isDead or not Object.IsValid(enemy) then return end

  local nearbyPlayers = Game.FindPlayersInSphere(enemy:GetWorldPosition(), 1000)

  for i, player in ipairs(nearbyPlayers) do
    if player == clientPlayer then
      local message = ratName.." "..idleMessages[math.random(1, #idleMessages)]
      Chat.LocalMessage(message)

      if IDLE_SFX then
        Utils.playSoundEffect(IDLE_SFX, enemy:GetWorldPosition(), 0.2, math.random(-2, 2) * 100)
      end

      break
    end
  end

  idleLoop()
end

Task.Spawn(idleLoop)

function movingAnimationCheckLoop()
  if isDead or (WALK_ANIM == "" and RUN_ANIM == "") or not Object.IsValid(enemy) then return end

  local currentPosition = MESH:GetWorldPosition()

  if RUN_ANIM ~= "" and (currentPosition - lastKnownPosition).size > 20 then
    MESH.animationStance = RUN_ANIM
  elseif WALK_ANIM ~= "" and (currentPosition - lastKnownPosition).size > 1 then
    MESH.animationStance = WALK_ANIM
  else
    MESH.animationStance = IDLE_ANIM
  end

  lastKnownPosition = currentPosition
  Task.Wait(0.1)
  movingAnimationCheckLoop()
end

Task.Spawn(movingAnimationCheckLoop)

function hitEnemy(player, damage)
  if not Object.IsValid(enemy) then return end

  MESH:PlayAnimation("unarmed_react_damage")
  if not isDead and READY_ANIM ~= "" then MESH.animationStance = READY_ANIM end

  if player == clientPlayer then
    Utils.showFlyupText(damage, enemy:GetWorldPosition(), Utils.color.attack)
  end

  if DAMAGED_VFX then
    local vfx = World.SpawnAsset(DAMAGED_VFX, {position = script:GetWorldPosition()})

    Task.Wait(5)

    if Object.IsValid(vfx) then vfx:Destroy() end
  end
end

function onEnemiesHit(attackingPlayer, ...)
  if not Object.IsValid(enemy) then return end

  local enemyDamagePairs = {...}

  for i, v in ipairs(enemyDamagePairs) do
    if v == enemy.id then
      hitEnemy(attackingPlayer, enemyDamagePairs[i+1])
      break
    end
  end
end

function onEnemyDied(killingPlayer, id, damage)
  if not Object.IsValid(enemy) then return end

  if id == enemy.id then
    isDead = true
    if DIE_ANIM ~= "" then MESH:PlayAnimation(DIE_ANIM, {shouldLoop = true}) end

    if killingPlayer == clientPlayer then
      Utils.showFlyupText(damage, enemy:GetWorldPosition(), Utils.color.attack)
    end

    if DEATH_VFX then
      local vfx = World.SpawnAsset(DEATH_VFX, {position = script:GetWorldPosition()})
      Task.Wait(5)
      if Object.IsValid(vfx) then vfx:Destroy() end
    end
  end
end

function onEnemyAttacked(attackedPlayer, id)
  if not Object.IsValid(enemy) then return end

  if id == enemy.id then
    if ATTACK_ANIM ~= "" then MESH:PlayAnimation(ATTACK_ANIM, {playbackRate = 2.5, shouldLoop = false}) end

    if ATTACK_VFX then
      local vfx = World.SpawnAsset(ATTACK_VFX, {position = script:GetWorldPosition(), rotation = script:GetWorldRotation()})
      Task.Wait(5)
      if Object.IsValid(vfx) then vfx:Destroy() end
    end
  end
end

-- handler params: Player_attackingPlayer, String_id, Integer_damage
Events.Connect("eHit", onEnemiesHit)

-- handler params: Player_killingPlayer, String_id, Integer_damage
Events.Connect("eDie", onEnemyDied)

-- handler params: Player_attackedPlayer, String_id, Integer_reflectedDamage, Bool_survived
Events.Connect("eAtt", onEnemyAttacked)
