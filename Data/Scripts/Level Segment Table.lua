local Segments = script:GetCustomProperties()

local segmentList = {}

for name, segment in pairs(Segments) do
  table.insert(segmentList, segment)
end

return segmentList
