local Rats = script:GetCustomProperties()

local ratList = {}

for name, rat in pairs(Rats) do
  table.insert(ratList, rat)
end

return ratList