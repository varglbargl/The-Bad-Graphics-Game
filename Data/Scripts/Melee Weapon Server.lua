local Utils = require(script:GetCustomProperty("Utils"))

local weapon = script.parent

local DAMAGE = weapon:GetCustomProperty("Damage")
local STANCE = weapon:GetCustomProperty("AnimationStance")

local HITBOX = script:GetCustomProperty("Hitbox"):WaitForObject()
HITBOX.collision = Collision.FORCE_OFF

local hitEnemies = {}

function onAbilityCast(thisAbility)
  hitEnemies = {}

  HITBOX.collision = Collision.INHERIT
end

function onAbilityEnd(thisAbility)
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
    player.animationStance = STANCE
    Events.Broadcast("UpdateIdleStance", player, STANCE)
  end
end

function onUnequipped(thisEquipment, player)
  player.animationStance = "unarmed_ready"
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