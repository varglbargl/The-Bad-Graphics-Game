local DAMAGED_DEFAULT = script:GetCustomProperty("DamagedDefault")
local DEATH_DEFAULT = script:GetCustomProperty("DeathDefault")
local DEATH_POKEMON = script:GetCustomProperty("DeathPokemon")
local DAMAGED_PINATA = script:GetCustomProperty("DamagedPinata")
local DEATH_PINATA = script:GetCustomProperty("DeathPinata")

local CombatAnimations = {}

local animations = {

  -- 1 - Default
  {
    callback = function(mesh) end,
    damaged = DAMAGED_DEFAULT,
    death = DEATH_DEFAULT
  },

  -- 2 - Pokemon
  {
    callback = function(mesh) mesh:ScaleTo(Vector3.ZERO, 0.5) end,
    damaged = DAMAGED_DEFAULT,
    death = DEATH_POKEMON
  },

  -- 3 - Pinata
  {
    callback = function(mesh) mesh.visibility = Visibility.FORCE_OFF end,
    damaged = DAMAGED_PINATA,
    death = DEATH_PINATA,
  }
}

function CombatAnimations.getForPlayer(player)
  local anims = player:GetResource("CombatAnimations")

  return animations[math.max(anims, 1)]
end

return CombatAnimations
