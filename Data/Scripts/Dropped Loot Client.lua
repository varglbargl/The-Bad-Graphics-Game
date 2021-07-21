local Utils = require(script:GetCustomProperty("Utils"))

local SERVER = script:GetCustomProperty("DroppedLootServer"):WaitForObject()
local PICKUP_TRIGGER = script:GetCustomProperty("PickupTrigger"):WaitForObject()
local PICKUP_SFX = script:GetCustomProperty("PickupSFX")

local loot = SERVER:GetCustomProperty("DroppedLoot")
local lootPosition = PICKUP_TRIGGER:GetWorldPosition()

function onNetworkedPropertyChanged()
  loot = SERVER:GetCustomProperty("DroppedLoot")

  showItem(loot)
end

function showItem(item)
  World.SpawnAsset(item, {parent = script.parent, rotation = Rotation.New(25, 25, 25), position = Vector3.New(10, 0, 0)})
end

if loot then
  showItem(loot)
else
  SERVER.networkedPropertyChangedEvent:Connect(onNetworkedPropertyChanged)
end

function getYeLoot(thisTrigger, other)
  if not Object.IsValid(other) or not other:IsA("Player") then return end

  Utils.playSoundEffect(PICKUP_SFX, lootPosition)
end

if PICKUP_TRIGGER.isInteractable then
  PICKUP_TRIGGER.interactedEvent:Connect(getYeLoot)
else
  PICKUP_TRIGGER.beginOverlapEvent:Connect(getYeLoot)
end
