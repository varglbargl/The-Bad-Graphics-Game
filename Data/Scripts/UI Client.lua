local CLOCK_PIVOT = script:GetCustomProperty("ClockPivot"):WaitForObject()
local COMPASS = script:GetCustomProperty("Compass"):WaitForObject()

local clientPlayer = Game.GetLocalPlayer()

function Tick()
  CLOCK_PIVOT.rotationAngle = CLOCK_PIVOT.rotationAngle + 0.1
  COMPASS.rotationAngle = -clientPlayer:GetLookWorldRotation().z + 130
end
