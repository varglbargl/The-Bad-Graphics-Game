local Utils = require(script:GetCustomProperty("Utils"))

local CLOCK_PIVOT = script:GetCustomProperty("ClockPivot"):WaitForObject()
local COMPASS = script:GetCustomProperty("Compass"):WaitForObject()
local WEATHER = script:GetCustomProperty("Weather"):WaitForObject()

local NO_WEAPON = script:GetCustomProperty("NoWeapon")
local WEAPON = script:GetCustomProperty("Weapon"):WaitForObject()
local HAT = script:GetCustomProperty("Hat"):WaitForObject()
local CAPE = script:GetCustomProperty("Cape"):WaitForObject()
local RING = script:GetCustomProperty("Ring"):WaitForObject()
local ARMOR = script:GetCustomProperty("Armor"):WaitForObject()
local BRACER = script:GetCustomProperty("Bracer"):WaitForObject()
local SHOE = script:GetCustomProperty("Shoe"):WaitForObject()

local clientPlayer = Game.GetLocalPlayer()
local shoudAnnounce = false

WEAPON:SetImage(NO_WEAPON)

function initIcons(defaultIcon)
  local results = {}

  local icons = defaultIcon:GetCustomProperties()

  for i, icon in pairs(icons) do
    table.insert(results, icon)
  end

  return results
end

local weatherIcons = initIcons(WEATHER)

local hatIcons = initIcons(HAT)
local capeIcons = initIcons(CAPE)
local ringIcons = initIcons(RING)
local armorIcons = initIcons(ARMOR)
local bracerIcons = initIcons(BRACER)
local shoeIcons = initIcons(SHOE)

function setRandomIcon(uiImage, icons)
  uiImage:SetImage(icons[math.random(1, #icons)])
end

function Tick()
  CLOCK_PIVOT.rotationAngle = CLOCK_PIVOT.rotationAngle + 0.1
  COMPASS.rotationAngle = -clientPlayer:GetLookWorldRotation().z + 130
end

function weatherLoop()
  setRandomIcon(WEATHER, weatherIcons)

  Task.Wait(math.random(120, 300))

  Chat.LocalMessage("You feel like the weather may have changed outside. Wonder what that's like.")
  weatherLoop()
end

Task.Spawn(weatherLoop)

function onWeaponUpdated()
  local allEquipment = clientPlayer:GetEquipment()
  local icon = nil

  for i, equipent in ipairs(allEquipment) do
    icon = equipent:GetCustomProperty("Icon")

    if icon then break end
  end

  if icon then
    WEAPON:SetImage(icon)
  else
    WEAPON:SetImage(NO_WEAPON)
  end
end

function onNewGear()
  local randomSlot = math.random(1, 6)
  local prefix, suffix = Utils.getItemEnchant()

  if randomSlot == 1 then
    setRandomIcon(HAT, hatIcons)
    if shoudAnnounce then Chat.LocalMessage("      New hat! Get equipped with: "..prefix.." Headpiece of "..suffix.."!") end
  elseif randomSlot == 2 then
    setRandomIcon(CAPE, capeIcons)
    if shoudAnnounce then Chat.LocalMessage("      New cape! Get equipped with: "..prefix.." Cloak of "..suffix.."!") end
  elseif randomSlot == 3 then
    setRandomIcon(RING, ringIcons)
    if shoudAnnounce then Chat.LocalMessage("      New ring! Get equipped with: "..prefix.." Ring of "..suffix.."!") end
  elseif randomSlot == 4 then
    setRandomIcon(ARMOR, armorIcons)
    if shoudAnnounce then Chat.LocalMessage("      New armor! Get equipped with: "..prefix.." Chestpiece of "..suffix.."!") end
  elseif randomSlot == 5 then
    setRandomIcon(BRACER, bracerIcons)
    if shoudAnnounce then Chat.LocalMessage("      New bracers! Get equipped with: "..prefix.." Bracers of "..suffix.."!") end
  else
    setRandomIcon(SHOE, shoeIcons)
    if shoudAnnounce then Chat.LocalMessage("      New shoes! Get equipped with: "..prefix.." Boots of "..suffix.."!") end
  end
end

Events.Connect("UpdateWeapon", onWeaponUpdated)
Events.Connect("NewGear", onNewGear)

setRandomIcon(HAT, hatIcons)
setRandomIcon(CAPE, capeIcons)
setRandomIcon(RING, ringIcons)
setRandomIcon(ARMOR, armorIcons)
setRandomIcon(BRACER, bracerIcons)
setRandomIcon(SHOE, shoeIcons)

Task.Wait(3)

shoudAnnounce = true
