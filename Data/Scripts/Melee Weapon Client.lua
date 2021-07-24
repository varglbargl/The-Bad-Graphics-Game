local Utils = require(script:GetCustomProperty("Utils"))

local EQUIP_SFX = script:GetCustomProperty("EquipSFX")

local weapon = script:FindAncestorByType("Equipment")

local ICON = weapon:GetCustomProperty("Icon")

local clientPlayer = Game.GetLocalPlayer()
local prefix, suffix = Utils.getItemEnchant()

function onEquipped(thisWeapon, owner)
  if owner ~= clientPlayer then return end

  Chat.LocalMessage("      New weapon! Get equipped with: "..prefix.." "..weapon.name.." of "..suffix.."!")

  Utils.playSoundEffect(EQUIP_SFX)

  if ICON then
    Events.Broadcast("UpdateWeapon")
  end
end

function onUnequipped(thisWeapon, owner)
  if owner ~= clientPlayer then return end

  Events.Broadcast("UpdateWeapon")
end

if ICON then
  -- handler params: Equipment_equipment, Player_player
  weapon.equippedEvent:Connect(onEquipped)

  -- handler params: Equipment_equipment, Player_player
  weapon.unequippedEvent:Connect(onUnequipped)
end

if weapon.owner then
  onEquipped(weapon, weapon.owner)
end
