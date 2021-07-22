local Jars = script:GetCustomProperties()

local jarList = {}

for name, jar in pairs(Jars) do
  table.insert(jarList, jar)
end

return jarList
