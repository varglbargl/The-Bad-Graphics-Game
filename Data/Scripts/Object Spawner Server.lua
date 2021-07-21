local Utils = require(script:GetCustomProperty("Utils"))
local ObjectTable = require(script:GetCustomProperty("ObjectTable"))

local SPAWN_VFX = script:GetCustomProperty("SpawnVFX")
local RESPAWN_TIME = script:GetCustomProperty("RespawnTime")
local RANDOM_SPAWN_ROTATION = script:GetCustomProperty("RandomSpawnRotation")
local SPAWN_ONCE = script:GetCustomProperty("SpawnOnce")

local spawnPoint = Utils.groundBelowPoint(script:GetWorldPosition())

assert(spawnPoint, script.id.." is in an invalid location. Can't find any ground below it to spawn something on.")

local spawnRotation = nil

if RANDOM_SPAWN_ROTATION then
  spawnRotation = Rotation.New(0, 0, math.random(1, 360))
else
  spawnRotation = script:GetWorldRotation()
end

local spawnedObject = nil
local destroyEvent = nil
local shouldSpawn = true

function areTherePlayersNearby()
  local players = Game.GetPlayers()

  for _, player in ipairs(players) do
    if Object.IsValid(player) and (player:GetWorldPosition() - spawnPoint).size < 8000 then
      return "I hate players."
    end
  end

  return false
end

function spawnObject()
  if Object.IsValid(spawnedObject) or not shouldSpawn then return end

  if SPAWN_VFX then
    local spawnVfx = World.SpawnAsset(SPAWN_VFX, {position = spawnPoint})

    if spawnVfx.lifeSpan == 0 then
      spawnVfx.lifeSpan = 5
    end
  end

  local objectToSpawn = ObjectTable[math.random(1, #ObjectTable)]

  spawnedObject = World.SpawnAsset(objectToSpawn, {position = spawnPoint, rotation = spawnRotation})

  if SPAWN_ONCE then return end

  -- handler params: CoreObject_coreObject
  destroyEvent = spawnedObject.destroyEvent:Connect(respawnTimer)
end

function despawnObject()
  if not Object.IsValid(spawnedObject) then return end

  if destroyEvent then
    destroyEvent:Disconnect()
    destroyEvent = nil
  end
end

function respawnTimer()
  shouldSpawn = false

  if destroyEvent then
    destroyEvent:Disconnect()
    destroyEvent = nil
  end

  Task.Wait(RESPAWN_TIME)

  shouldSpawn = true
end

function spawnLoop()
  if areTherePlayersNearby() and not Object.IsValid(spawnedObject) then

    spawnObject()
  elseif not areTherePlayersNearby() and Object.IsValid(spawnedObject) then

    despawnObject()
  end

  Task.Wait(2 + math.random() * 3)

  -- print("Guess I'll just wait here. Not existing.")

  spawnLoop()
end

if SPAWN_ONCE then
  spawnObject()
else
  spawnLoop()
end
