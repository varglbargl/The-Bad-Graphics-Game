local SPEED = script:GetCustomProperty("Speed")
local IS_LOCAL = script:GetCustomProperty("IsLocal")

script.parent:ScaleContinuous(Vector3.ONE + Vector3.ONE * SPEED, IS_LOCAL)
