local BOUNCE_HEIGHT = script:GetCustomProperty("BounceHeight")
local AIR_TIME = script:GetCustomProperty("AirTime")
local START_OFFSET = script:GetCustomProperty("StartOffset")

if AIR_TIME == 0 or BOUNCE_HEIGHT == 0 then
  return
end

if START_OFFSET == 0 then
  START_OFFSET = math.random() * AIR_TIME
end

local curveKeys = {
  CurveKey.New(0, 0, {interpolation = CurveInterpolation.CUBIC, leaveTangent = 4}),
  CurveKey.New(AIR_TIME, 0, {interpolation = CurveInterpolation.CUBIC, arriveTangent = -4})
}

local curveSettings = {
  preExtrapolation = CurveExtrapolation.CYCLE,
  postExtrapolation = CurveExtrapolation.CYCLE
}

local curve = SimpleCurve.New(curveKeys, curveSettings)
local startPosition = script.parent:GetPosition()

function bounceLoop(dt)
  if not Object.IsValid(script.parent) then return end
  local curveValue = Vector3.New(0, 0, curve:GetValue(time() + START_OFFSET))

  script.parent:SetPosition(startPosition + curveValue * BOUNCE_HEIGHT)


  bounceLoop(Task.Wait())
end

bounceLoop(Task.Wait())
