local Utils = require(script:GetCustomProperty("Utils"))
local SegmentTable = require(script:GetCustomProperty("LevelSegmentTable"))

local DEAD_END = script:GetCustomProperty("DeadEnd")
local SPAWN_ZONE_BOUNDING_BOX = script:GetCustomProperty("SpawnZoneBoundingBox"):WaitForObject()

local totalSegs = 1
local maxSegs = 50

local boundingBoxes = {SPAWN_ZONE_BOUNDING_BOX}
local levelExits = {}
local placedSegs = {}
local teleporterNodes = {}

function placeSeg(segPos, segRot)
  local segToSpawn = nil

  if totalSegs < maxSegs then
    segToSpawn = SegmentTable[math.random(1, #SegmentTable)]
  else
    segToSpawn = DEAD_END
  end

  local flipHorizontal = Vector3.New(1, math.random(0, 1) * 2 - 1, 1)

  local thisSeg = World.SpawnAsset(segToSpawn, {position = segPos, rotation = segRot, scale = flipHorizontal})

  if segToSpawn == DEAD_END then
    table.insert(placedSegs, thisSeg)
    return
  end

  local thisBoundingBox = thisSeg:GetCustomProperty("BoundingBox"):WaitForObject()

  for _, box in ipairs(boundingBoxes) do
    if thisBoundingBox:IsOverlapping(box) then
      print("Whoops looks like there's already a level there haha my bad sorry ma'am.")
      thisSeg:Destroy()
      thisSeg = World.SpawnAsset(DEAD_END, {position = segPos, rotation = segRot})

      table.insert(placedSegs, thisSeg)
      return
    end
  end

  totalSegs = totalSegs + 1

  table.insert(placedSegs, thisSeg)
  table.insert(boundingBoxes, thisBoundingBox)

  local exitFolder = thisSeg:GetCustomProperty("ExitLocations"):WaitForObject()

  if not Object.IsValid(exitFolder) then return end

  local exits = exitFolder:GetChildren()
  local exitsToPlace = 0

  for _, exit in ipairs(exits) do
    if Object.IsValid(exit) then
      exitsToPlace = exitsToPlace + 1

      table.insert(levelExits, math.random(1, #levelExits + 1), exit)
      -- table.insert(levelExits, 1, exit)
    end
  end

  for i = 1, exitsToPlace do
    local thisExit = table.remove(levelExits, #levelExits)
    Task.Wait()
    placeSeg(thisExit:GetWorldPosition(), thisExit:GetWorldRotation())
  end

  if Object.IsValid(thisBoundingBox) then
    thisBoundingBox:Destroy()
  end
end

function generateLevel()
  Events.Broadcast("LevelBeingGenerated")

  if #placedSegs > 0 then
    destroyLevel()
  end

  placeSeg(Vector3.ZERO, Rotation.ZERO)

  boundingBoxes = {SPAWN_ZONE_BOUNDING_BOX}

  Events.Broadcast("LevelGenerated")
end

function destroyLevel()
  Events.Broadcast("LevelBeingDestroyed")

  for _, seg in ipairs(placedSegs) do
    if Object.IsValid(seg) then
      seg:Destroy()
      -- Task.Wait()
    end
  end

  placedSegs = {}
  teleporterNodes = {}

  Events.Broadcast("LevelDestroyed")
end

function addTeleporter(trigger, position, rotation)
  table.insert(teleporterNodes, math.random(1, #teleporterNodes + 1), {trigger = trigger, position = position + Vector3.UP * 50, rotation = rotation})

  local index = #teleporterNodes

  trigger.interactedEvent:Connect(function(thisTrigger, player)
    if not Object.IsValid(player) then return end
    local teleportTo = teleporterNodes[index % #teleporterNodes + 1]

    player.isMovementEnabled = false
    Utils.throttleToPlayer(player, "FadeToBlack", time())

    Task.Wait(0.5)
    if not Object.IsValid(player) then return end

    player:SetWorldPosition(teleportTo.position)
    player:SetWorldRotation(teleportTo.rotation)
    player.isMovementEnabled = true
  end)
end

Events.Connect("TeleporterPlaced", addTeleporter)

generateLevel()
