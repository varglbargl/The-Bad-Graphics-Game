local trigger = script.parent

Events.Broadcast("TeleporterPlaced", trigger, script:GetWorldPosition(), script:GetWorldRotation())
