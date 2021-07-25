local Utils = require(script:GetCustomProperty("Utils"))

local QUEST_TABLE = require(script:GetCustomProperty("QuestTable"))
local QUEST_LOCATIONS = script:GetCustomProperty("QuestLocations"):WaitForObject()

Task.Wait(1)

if not Object.IsValid(script) then return end

for _, location in ipairs(QUEST_LOCATIONS:GetChildren()) do
  local objectToSpawn = QUEST_TABLE[math.random(1, #QUEST_TABLE)]

  local spawnedQuest = World.SpawnAsset(objectToSpawn, {position = Utils.groundBelowPoint(location:GetWorldPosition()) or location:GetWorldPosition(), rotation = location:GetWorldRotation()})

  script.destroyEvent:Connect(function()
    if Object.IsValid(spawnedQuest) then
      spawnedQuest:Destroy()
    end
  end)
end
