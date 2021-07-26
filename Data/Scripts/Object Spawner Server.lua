local Utils = require(script:GetCustomProperty("Utils"))

local SPAWN_VFX = script:GetCustomProperty("SpawnVFX")

local RAT_TABLE = require(script:GetCustomProperty("RatTable"))
local DESTRUCTIBLE_TABLE = require(script:GetCustomProperty("DestructibleTable"))

local RAT_LOCATIONS = script:GetCustomProperty("RatLocations"):WaitForObject()
local DESTRUCTIBLE_LOCATIONS = script:GetCustomProperty("DestructibleLocations"):WaitForObject()

function areTherePlayersNearby(where)
  local players = Game.GetPlayers()

  for _, player in ipairs(players) do
    if Object.IsValid(player) then

      local range = player:GetWorldPosition() - where
      local inRange = range.size < 4250
      local inVerticalRange = range.z < 2250 and range.z > -1250

      if inRange and inVerticalRange then
        -- local closeRange = range < 1000
        -- local outaSight = World.Raycast(where + Vector3.UP * 100, player:GetWorldPosition())

        -- print("I am "..range.." units away from "..player.name.." and "..tostring(outaSight and outaSight.other.id).." is in my way of seeing her.")

        -- if closeRange or not outaSight then
          return "I hate players."
        -- end
      end
    end
  end

  return false
end

function spawnObject(settings)
  if not settings.shouldSpawn  then return end

  if SPAWN_VFX then
    local spawnVfx = World.SpawnAsset(SPAWN_VFX, {position = settings.spawnPoint})

    if spawnVfx.lifeSpan == 0 then
      spawnVfx.lifeSpan = 5
    end
  end

  local objectToSpawn = settings.objectTable[math.random(1, #settings.objectTable)]

  settings.spawnedObject = World.SpawnAsset(objectToSpawn, {position = settings.spawnPoint, rotation = settings.spawnRotation})

  if settings.respawnTime then
    -- handler params: CoreObject_coreObject
    settings.destroyEvent = settings.spawnedObject.destroyEvent:Connect(function() respawnTimer(settings) end)
  end

  return settings.spawnedObject
end

function despawnObject(settings)
  if settings.destroyEvent then
    settings.destroyEvent:Disconnect()
    settings.destroyEvent = nil
  end

  if not Object.IsValid(settings.spawnedObject) then return end

  settings.spawnedObject:Destroy()
end

function respawnTimer(settings)
  settings.shouldSpawn = false

  if settings.destroyEvent then
    settings.destroyEvent:Disconnect()
    settings.destroyEvent = nil
  end

  Task.Wait(settings.respawnTime)
  if not Object.IsValid(script) then return end

  settings.shouldSpawn = true
end

function spawnLoop(settings)
  if not Object.IsValid(script) then
    -- Shows over, folks. Level's been destroyed.
    despawnObject(settings)

    return Task.GetCurrent():Cancel()
  end

  if areTherePlayersNearby(settings.spawnPoint) and not Object.IsValid(settings.spawnedObject) then

    settings.spawnedObject = spawnObject(settings)
  elseif not areTherePlayersNearby(settings.spawnPoint) and Object.IsValid(settings.spawnedObject) then

    despawnObject(settings)
  end

  Task.Wait(1 + math.random() * 2)

  spawnLoop(settings)
end

function initSpawners(objectTable, locations, respawnTime)
  local spawnPoints = locations:GetChildren()

  for _, location in ipairs(spawnPoints) do
    local settings = {
      objectTable = objectTable,
      spawnPoint = Utils.groundBelowPoint(location:GetWorldPosition()) or location:GetWorldPosition(),
      spawnRotation = location:GetWorldRotation(),
      spawnedObject = nil,
      respawnTime = respawnTime,
      shouldSpawn = true,
      destroyEvent = nil
    }

    local destroyLevelEvent = nil

    destroyLevelEvent = script.destroyEvent:Connect(function()
      despawnObject(settings)
      destroyLevelEvent:Disconnect()
    end)

    if respawnTime then
      Task.Spawn(function() spawnLoop(settings) end)
    else
      spawnObject(settings)
    end
  end
end

Task.Wait(1)

if Object.IsValid(script) then
  initSpawners(RAT_TABLE, RAT_LOCATIONS, 90)
  initSpawners(DESTRUCTIBLE_TABLE, DESTRUCTIBLE_LOCATIONS, 90)
end
