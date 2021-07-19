local MESH = script:GetCustomProperty("Mesh"):WaitForObject()

local parts = script.parent:GetChildren()

for _, part in pairs(parts) do
  if part:IsA("Folder") then
    MESH:AttachCoreObject(part, part.name)
  end
end
