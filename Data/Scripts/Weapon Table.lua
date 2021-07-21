local Weapons = script:GetCustomProperties()

local weaponList = {}

for name, weapon in pairs(Weapons) do
  table.insert(weaponList, weapon)
end

return weaponList
