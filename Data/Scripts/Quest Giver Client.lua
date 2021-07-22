local Utils = require(script:GetCustomProperty("Utils"))

local EXCLAMATION_POINT = script:GetCustomProperty("ExclamationPoint"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local ACCEPT_SFX = script:GetCustomProperty("AcceptSFX")

local clientPlayer = Game.GetLocalPlayer()

TRIGGER.interactionLabel = "ACCEPT QUEST"

function onInteracted(thisTrigger, other)
	if other == clientPlayer then
    EXCLAMATION_POINT.visibility = Visibility.FORCE_OFF
    TRIGGER.collision = Collision.FORCE_OFF

    if ACCEPT_SFX then
      Utils.playSoundEffect(ACCEPT_SFX, TRIGGER:GetWorldPosition(), 0.75, math.random(-2, 2) * 100)
    end

    Utils.throttleToServer("AcceptQuest")
	end
end

TRIGGER.interactedEvent:Connect(onInteracted)
