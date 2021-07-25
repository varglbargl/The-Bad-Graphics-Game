local trigger = script.parent

Task.Wait(1)

if not Object.IsValid(script) then return end

Events.Broadcast("TeleporterPlaced", trigger, script:GetWorldPosition(), script:GetWorldRotation())
