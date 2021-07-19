local Utils = require(script:GetCustomProperty("Utils"))

local obj = script.parent
local ground = Utils.groundBelowPoint(obj:GetWorldPosition() + Vector3.UP * 100)

if ground then
  obj:SetWorldPosition(ground)
end
