local SECS = script:GetCustomProperty("Secs")

Task.Wait(SECS)

script.parent:Stop()
