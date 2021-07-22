local Givers = script:GetCustomProperties()

local giverList = {}

for name, giver in pairs(Givers) do
  table.insert(giverList, giver)
end

return giverList
