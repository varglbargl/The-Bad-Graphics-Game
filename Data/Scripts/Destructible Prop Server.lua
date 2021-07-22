local HITBOX = script:GetCustomProperty("Hitbox"):WaitForObject()
local DESTROY_VFX = script:GetCustomProperty("DestroyVFX")

local LOOT_DROP = script:GetCustomProperty("LootDrop")
local LOOT_DROP_CHANCE = script:GetCustomProperty("LootDropChance")

local prop = script.parent

function onBeginOverlap(whichTrigger, other)
	if other:IsA("Trigger") and other.parent:IsA("Equipment") then
    local vfx = nil

    if DESTROY_VFX then
      vfx = World.SpawnAsset(DESTROY_VFX, {position = prop:GetWorldPosition()})
    end

    if LOOT_DROP then
      if math.random() < LOOT_DROP_CHANCE then
        local droppedLoot = World.SpawnAsset(LOOT_DROP, {position = prop:GetWorldPosition()})

        if droppedLoot.lifeSpan == 0 then
          droppedLoot.lifeSpan = 10
        end

        -- local moveToLocation = Rotation.New(0, 0, math.random(-30, 30)) * (prop:GetWorldPosition() - other:GetWorldPosition()):GetNormalized() * 500

        -- local hitResult = World.Raycast(prop:GetWorldPosition(), moveToLocation)

        -- if hitResult then
        --   moveToLocation = hitResult:GetImpactPosition()
        -- end

        -- droppedLoot:MoveTo(moveToLocation, 1)
      end
    end

    if Object.IsValid(prop) then prop:Destroy() end

    Task.Wait(5)

    if Object.IsValid(vfx) then vfx:Destroy() end
	end
end

HITBOX.beginOverlapEvent:Connect(onBeginOverlap)
