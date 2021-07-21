local Consumables = script:GetCustomProperties()

local consumableList = {}

for name, consumable in pairs(Consumables) do
  table.insert(consumableList, consumable)
end

return consumableList
