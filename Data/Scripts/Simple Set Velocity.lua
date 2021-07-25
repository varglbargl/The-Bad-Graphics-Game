local VELOCITY_MIN = script:GetCustomProperty("VelocityMin")
local VELOCITY_MAX = script:GetCustomProperty("VelocityMax")
local DELAY_START = script:GetCustomProperty("DelayStart")

local ball = script.parent

if DELAY_START > 0 then
  Task.Wait(DELAY_START)
end

local randomVel = Vector3.New(
  math.random(VELOCITY_MIN.x, VELOCITY_MAX.x),
  math.random(VELOCITY_MIN.y, VELOCITY_MAX.y),
  math.random(VELOCITY_MIN.z, VELOCITY_MAX.z)
)

ball:SetVelocity(randomVel)
ball:SetAngularVelocity(randomVel)
