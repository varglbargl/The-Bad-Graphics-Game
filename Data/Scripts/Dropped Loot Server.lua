local LootTable = require(script:GetCustomProperty("LootTable"))

local PICKUP_TRIGGER = script:GetCustomProperty("PickupTrigger"):WaitForObject()

local loot = LootTable[math.random(1, #LootTable)]

local lootName = string.upper(string.match(loot, ":(.+)")) or "LOOT"

PICKUP_TRIGGER.collision = Collision.FORCE_OFF

function getYeLoot(thisTrigger, other)
  if not Object.IsValid(other) or not other:IsA("Player") then return end

  local spawnedLoot = World.SpawnAsset(loot)

  local playerEquipment = other:GetEquipment()

  for i, equipment in ipairs(playerEquipment) do
    if equipment.socket == spawnedLoot.socket then
      equipment:Destroy()
    end
  end

  spawnedLoot:Equip(other)

  script.parent:Destroy()
end

if PICKUP_TRIGGER.isInteractable then
  PICKUP_TRIGGER.interactionLabel = "GET YE "..lootName
  PICKUP_TRIGGER.interactedEvent:Connect(getYeLoot)
else
  PICKUP_TRIGGER.beginOverlapEvent:Connect(getYeLoot)
end

script:SetNetworkedCustomProperty("DroppedLoot", loot)

Task.Wait()

PICKUP_TRIGGER.collision = Collision.FORCE_ON
