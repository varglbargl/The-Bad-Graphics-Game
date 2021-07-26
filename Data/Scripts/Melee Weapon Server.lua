local Utils = require(script:GetCustomProperty("Utils"))

local GRIPLESS = script:GetCustomProperty("Gripless")
local EXPLODE_VFX = script:GetCustomProperty("ExplodeVFX")
local THROW_SFX = script:GetCustomProperty("ThrowSFX")
local SWOOSH_SFX = script:GetCustomProperty("SwooshSFX")

local weapon = script.parent

local DAMAGE = weapon:GetCustomProperty("Damage")
local STANCE = weapon:GetCustomProperty("AnimationStance")

local HITBOX = script:GetCustomProperty("Hitbox"):WaitForObject()
HITBOX.collision = Collision.FORCE_OFF

local hitEnemies = {}
local throwEvent = nil

function throwWeapon(thrower)
  if not Object.IsValid(thrower) or not Object.IsValid(weapon) then return end

  thrower:SetResource("Grip", 0)

  DAMAGE = 999
  weapon:Unequip()
  weapon.serverUserData["Thrower"] = thrower

  local throwDirection = thrower:GetLookWorldRotation()
  local fromPosition = weapon:GetWorldPosition()
  local toPosition = thrower:GetWorldPosition() + throwDirection * Vector3.FORWARD * 4000
  local throwTarget = World.Raycast(fromPosition, toPosition, {ignorePlayers = true})

  if throwTarget then
    toPosition = throwTarget:GetImpactPosition()
  end

  local throwDistance = (fromPosition - toPosition).size

  HITBOX.collision = Collision.INHERIT

  weapon:RotateContinuous(Vector3.RIGHT * 23 + Vector3.FORWARD * 17 + Vector3.UP * 11, true)
  weapon:MoveTo(toPosition, throwDistance / 4000)

  Task.Wait(throwDistance / 4000)
  if not Object.IsValid(weapon) then return end

  HITBOX:SetScale(Vector3.ONE * 10)

  if EXPLODE_VFX then
    World.SpawnAsset(EXPLODE_VFX, {position = toPosition})
  end

  Task.Wait(0.1)
  if not Object.IsValid(weapon) then return end

  weapon:Destroy()
  return
end

function onAbilityCast(thisAbility)
  if not Object.IsValid(weapon) or not Object.IsValid(thisAbility) or not Object.IsValid(thisAbility.owner) then return end

  hitEnemies = {}

  Utils.playSoundEffect(SWOOSH_SFX, weapon:GetWorldPosition(), 0.4, (thisAbility.castPhaseSettings.duration - 0.25) * -8000)

  if GRIPLESS then
    HITBOX.collision = Collision.INHERIT
    return
  end

  local currentGrip = thisAbility.owner:RemoveResource("Grip", DAMAGE)

  if currentGrip <= 0 then
    Task.Wait(thisAbility.castPhaseSettings.duration * 0.75)
    if not Object.IsValid(weapon) or not Object.IsValid(thisAbility) or not Object.IsValid(thisAbility.owner) then return end

    Utils.playSoundEffect(THROW_SFX, weapon:GetWorldPosition(), 1, -400 * HITBOX:GetWorldScale().size)

    throwWeapon(thisAbility.owner)
  else
    HITBOX.collision = Collision.INHERIT
  end
end

function onAbilityEnd(thisAbility)
  if not Object.IsValid(weapon) or not Object.IsValid(thisAbility) or not Object.IsValid(thisAbility.owner) then return end
  hitEnemies = {}

  HITBOX.collision = Collision.FORCE_OFF
end

function onHitboxOverlap(thisTrigger, other)
  local enemy = other.serverUserData["Enemy"]

  if enemy and not hitEnemies[enemy] then
    hitEnemies[enemy] = true

    Events.Broadcast("WeaponHit", enemy, weapon, DAMAGE)
  end
end

function onEquipped(thisEquipment, player)
  if STANCE then
    Events.Broadcast("UpdateIdleStance", player, STANCE)
  end

  Task.Wait()

  if GRIPLESS then return end

  local throwEvent = player.bindingPressedEvent:Connect(function(thisPlayer, keyCode)
    if not Object.IsValid(weapon) or not Object.IsValid(weapon.owner) or weapon.owner.isDead or weapon.owner ~= thisPlayer then return end

    if keyCode == "ability_secondary" then
      thisPlayer:SetResource("Grip", 0)

      for i, abil in ipairs(weapon:GetAbilities()) do
        if abil:GetCurrentPhase() == AbilityPhase.READY then
          abil:Activate()
          break
        end
      end
    end
  end)

  player:SetResource("Grip", 25)

  for i, fist in ipairs(player:GetAbilities()) do
    if fist.name == "Punch" then
      fist.isEnabled = false
    end
  end
end

function onUnequipped(thisEquipment, player)
  Events.Broadcast("UpdateIdleStance", player, "unarmed_ready")

  if throwEvent then
    throwEvent:Disconnect()
    throwEvent = nil
  end

  for i, fist in ipairs(player:GetAbilities()) do
    if fist.name == "Punch" then
      fist.isEnabled = true
    end
  end
end

-- handler params: Equipment_equipment, Player_player
weapon.equippedEvent:Connect(onEquipped)

-- handler params: Equipment_equipment, Player_player
weapon.unequippedEvent:Connect(onUnequipped)

-- handler params: Trigger_trigger, Object_other
HITBOX.beginOverlapEvent:Connect(onHitboxOverlap)

for i, abil in ipairs(weapon:GetAbilities()) do
  -- handler params: Ability_ability
  abil.castEvent:Connect(onAbilityCast)

  -- handler params: Ability_ability
  abil.recoveryEvent:Connect(onAbilityEnd)

  -- handler params: Ability_ability
  abil.interruptedEvent:Connect(onAbilityEnd)
end
