local HITBOX = script:GetCustomProperty("Hitbox"):WaitForObject()
local DESTROY_VFX = script:GetCustomProperty("DestroyVFX")

local prop = script.parent

function onBeginOverlap(whichTrigger, other)
	if other:IsA("Trigger") and other.parent:IsA("Equipment") then
    local vfx = nil

    if DESTROY_VFX then
      vfx = World.SpawnAsset(DESTROY_VFX, {position = prop:GetWorldPosition()})
    end

    if Object.IsValid(prop) then prop:Destroy() end

    Task.Wait(5)

    if Object.IsValid(vfx) then vfx:Destroy() end
	end
end

HITBOX.beginOverlapEvent:Connect(onBeginOverlap)
