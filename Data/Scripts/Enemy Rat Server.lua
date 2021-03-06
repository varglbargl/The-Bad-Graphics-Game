local Utils = require(script:GetCustomProperty("Utils"))

local enemy = script.parent

local WANDER = script:GetCustomProperty("Wander")
local HITBOX = script:GetCustomProperty("Hitbox"):WaitForObject()

local LOOT_DROP = script:GetCustomProperty("LootDrop")

local isDead = false
local isFighting = false
local experiencePlayers = {}
local maxHitPoints = 5
local hitPoints = maxHitPoints

local spawnPoint = Utils.groundBelowPoint(enemy:GetWorldPosition())

enemy:SetWorldRotation(Rotation.New(0, 0, math.random(1, 360)))
HITBOX.serverUserData["Enemy"] = enemy

if not spawnPoint then
  spawnPoint = enemy:GetWorldPosition()
else
  enemy:SetWorldPosition(spawnPoint)
end

if WANDER then
  enemy:SetRotation(Rotation.New(0, 0, math.random(360)))
end

local defaultScale = enemy:GetWorldScale()

enemy:SetWorldScale(Vector3.ONE * 0.25)
enemy:ScaleTo(defaultScale, 0.2)

function startFighting(player)
  if not Object.IsValid(player) then return end
  -- print("Oh ho ho you are so going down, "..player.name.."!")

  isFighting = player
  enemy:LookAtContinuous(player, true, 500)
  enemy:StopMove()

  Task.Spawn(function() fight(player) end)
end

function fight(player)
  local fromVector = nil

  Task.Wait()

  while Object.IsValid(player) and Object.IsValid(enemy) and not isDead and isFighting do
    fromVector = enemy:GetWorldPosition()

    if player.isDead or (fromVector - spawnPoint).size > 2000 then
      stopFighting()
      return
    end

    local distanceToPlayer = (player:GetWorldPosition() - fromVector).size

    if distanceToPlayer < 500 and distanceToPlayer > 150 then
      local toPosition = Utils.groundBelowPoint(player:GetWorldPosition() + (fromVector - player:GetWorldPosition()):GetNormalized() * 200)

      if toPosition then
        enemy:MoveTo(toPosition, distanceToPlayer / 800)

        Task.Wait(distanceToPlayer / 800)

        attack(player)
      end
    elseif distanceToPlayer >= 150 then

      local toVector = Utils.groundBelowPoint(fromVector + (player:GetWorldPosition() - fromVector):GetNormalized() * 400)

      if not toVector then
        -- print("Must have been nothing...")
      else
        enemy:MoveTo(toVector, 0.5)
      end
    else
      attack(player)
    end

    Task.Wait(0.5)
  end

  -- something has gone wrong idk what but just reset safely okay?
  stopFighting()
end

function stopFighting()
  if isDead or not Object.IsValid(enemy) then return end

  experiencePlayers = {}

  if (enemy:GetWorldPosition() - spawnPoint).size > 10 then
    enemy:LookAt(spawnPoint)
  end

  enemy:MoveTo(spawnPoint, 2)
  enemy.collision = Collision.FORCE_OFF
  hitPoints = maxHitPoints

  Task.Wait(2)

  if isDead or not Object.IsValid(enemy) then return end

  enemy:RotateTo(Rotation.New(0, 0, enemy:GetWorldRotation().z), 0.25)

  isFighting = false
  enemy.collision = Collision.INHERIT

  if WANDER then
    wanderLoop()
  end
end

function attack(target)
  if isDead or not Object.IsValid(target) or not Object.IsValid(enemy) then return end

  local damage = Damage.New(math.random(1, 3))

  Utils.throttleToAllPlayers("eAtt", target, enemy.id)

  target:ApplyDamage(damage)
  Task.Wait(1)
end

function die(killer, damage)
  if not Object.IsValid(enemy) then return end
  -- print("I AM SLAIN!!!")

  enemy:StopMove()
  enemy:StopRotate()
  enemy.collision = Collision.FORCE_OFF
  isDead = true
  Utils.throttleToAllPlayers("eDie", killer, enemy.id, damage)

  for _, player in ipairs(Game.FindPlayersInSphere(enemy:GetWorldPosition(), 2000)) do
    if Object.IsValid(player) then experiencePlayers[player] = true end
  end

  for _, player in ipairs(Game.FindPlayersInSphere(killer:GetWorldPosition(), 2000)) do
    if Object.IsValid(player) then experiencePlayers[player] = true end
  end

  for xpPlayer in pairs(experiencePlayers) do
    if Object.IsValid(xpPlayer) then
      Events.Broadcast("RatKilled", xpPlayer)
    end
  end

  experiencePlayers = {}

  if LOOT_DROP and math.random() < 0.75 then
    local loot = World.SpawnAsset(LOOT_DROP, {position = enemy:GetWorldPosition()})

    loot.lifeSpan = 10
  end

  enemy:MoveTo(enemy:GetWorldPosition() + Vector3.UP * 25, 1)

  Task.Wait(2)
  if not Object.IsValid(enemy) then return end
  enemy:MoveTo(enemy:GetWorldPosition() + Vector3.UP * -500, 5)

  Task.Wait(5)
  if not Object.IsValid(enemy) then return end

  enemy:Destroy()
end

function onWeaponHit(thisEnemy, weapon, damage)
  if not Object.IsValid(enemy) or not Object.IsValid(thisEnemy) or enemy ~= thisEnemy or isDead then return end

  -- print("I, a humble "..enemy.name..", have just been assaulted by "..weapon.owner.name.." with a "..weapon.name.." for a truly uncalled for "..damage.." damage!")
  hitPoints = hitPoints - damage

  local attacker = nil

  if weapon then
    attacker = weapon.owner or weapon.serverUserData["Thrower"]
  end

  if attacker then
    experiencePlayers[attacker] = true
  end

  if attacker and not isFighting then
    startFighting(attacker)
  end

  if hitPoints > 0 then
    if weapon then Utils.throttlePlayerAttack(attacker, enemy, damage) end
  else
    hitPoints = 0
    die(attacker, damage)
  end
end

function wanderLoop()
  Task.Wait(math.random(20, 80) / 10)
  if isFighting or isDead or not Object.IsValid(enemy) then return end

  local fromPosition = enemy:GetWorldPosition()

  local toDirection = Rotation.New(0, 0, math.random(360)) * Vector3.FORWARD
  local toPosition = fromPosition + Vector3.UP * 10 + toDirection * 500

  local toRaycast = World.Raycast(fromPosition + Vector3.UP * 10, toPosition)

  if toRaycast then
    local distance = (toRaycast:GetImpactPosition() - fromPosition).size - 50

    toPosition = fromPosition + (toRaycast:GetImpactPosition() - fromPosition):GetNormalized() * distance
  end

  toPosition = Utils.groundBelowPoint(toPosition)

  if (not toPosition or (spawnPoint - fromPosition).size > 1000) and (spawnPoint - fromPosition).size > 1 then
    -- print("im scared and im going home.")
    toPosition = Utils.groundBelowPoint(fromPosition + (spawnPoint - fromPosition):GetNormalized() * 300)

    if not toPosition then
      toPosition = fromPosition + (spawnPoint - fromPosition):GetNormalized() * 300
    end
  end

  if toPosition then
    enemy:LookAt(toPosition)
    enemy:MoveTo(toPosition, 5)
  end

  Task.Wait(4.5)
  if isFighting or isDead or not Object.IsValid(enemy) then return end

  enemy:RotateTo(Rotation.New(0, 0, enemy:GetWorldRotation().z), 0.75)

  wanderLoop()
end

if WANDER then
  Task.Spawn(wanderLoop)
end

Task.Wait()

Events.Connect("WeaponHit", onWeaponHit)
