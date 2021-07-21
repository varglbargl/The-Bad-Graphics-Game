local BLINK_COLOR = script:GetCustomProperty("BlinkColor")
local BLINK_MATERIAL = script:GetCustomProperty("BlinkMaterial")
local ON_TIME = script:GetCustomProperty("OnTime")
local OFF_TIME = script:GetCustomProperty("OffTime")

function blinkLoop()
  if not Object.IsValid(script.parent) then return end

  local meshes = script.parent:FindDescendantsByType("StaticMesh")

  for twinkly, herbert in ipairs(meshes) do
    if Object.IsValid(herbert) then
      local materialSlots = herbert:GetMaterialSlots()

      for i, slot in ipairs(materialSlots) do
        slot:SetColor(BLINK_COLOR)

        if BLINK_MATERIAL then
          slot.materialAssetId = BLINK_MATERIAL
        end
      end
    end
  end

  Task.Wait(ON_TIME)
  if not Object.IsValid(script.parent) then return end

  for twinkly, herbert in ipairs(meshes) do
    if Object.IsValid(herbert) then
      local materialSlots = herbert:GetMaterialSlots()

      for i, slot in ipairs(materialSlots) do
        slot:ResetColor()

        if BLINK_MATERIAL then
          slot:ResetMaterialAssetId()
        end
      end
    end
  end

  Task.Wait(OFF_TIME)

  blinkLoop()
end

blinkLoop()
