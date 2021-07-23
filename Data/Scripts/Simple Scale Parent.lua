local SPEED = script:GetCustomProperty("Speed")
local DELAY_START = script:GetCustomProperty("DelayStart")
local IS_LOCAL = script:GetCustomProperty("IsLocal")

if DELAY_START > 0 then
  Task.Wait(DELAY_START)
end

script.parent:ScaleContinuous(Vector3.ONE + Vector3.ONE * SPEED, IS_LOCAL)
