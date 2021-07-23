local Utils = require(script:GetCustomProperty("Utils"))
local SegmentTable = require(script:GetCustomProperty("LevelSegmentTable"))

local DEAD_END = script:GetCustomProperty("DeadEnd")
local SPAWN_ZONE_BOUNDING_BOX = script:GetCustomProperty("SpawnZoneBoundingBox"):WaitForObject()

local totalSegs = 1
local maxSegs = 50

local boundingBoxes = {SPAWN_ZONE_BOUNDING_BOX}

function placeSeg(segPos, segRot)
  totalSegs = totalSegs + 1

  print("Now serving segment number "..totalSegs.." at window number "..math.random(1, 6)..".")

  local segToSpawn = nil

  if totalSegs < maxSegs then
    segToSpawn = SegmentTable[math.random(1, #SegmentTable)]
  else
    segToSpawn = DEAD_END
  end

  local thisSeg = World.SpawnAsset(segToSpawn, {position = segPos, rotation = segRot})

  if segToSpawn == DEAD_END then return end

  local BOUNDING_BOX = thisSeg:GetCustomProperty("BoundingBox"):WaitForObject()

  for _, box in ipairs(boundingBoxes) do
    if BOUNDING_BOX:IsOverlapping(box) then
      print("Whoops looks like there's already a level there haha my bad sorry ma'am.")
      thisSeg:Destroy()
      World.SpawnAsset(DEAD_END, {position = segPos, rotation = segRot})
      return
    end
  end

  table.insert(boundingBoxes, BOUNDING_BOX)

  local exitFolder = thisSeg:GetCustomProperty("ExitLocations"):WaitForObject()

  if not Object.IsValid(exitFolder) then return end

  local exits = exitFolder:GetChildren()

  Utils.shuffleArray(exits)

  for _, exit in ipairs(exits) do
    if Object.IsValid(exit) then
      Task.Wait()
      placeSeg(exit:GetWorldPosition(), exit:GetWorldRotation())
    end
  end
end

placeSeg(Vector3.ZERO, Rotation.ZERO)

for _, box in ipairs(boundingBoxes) do
  box:Destroy()
end
