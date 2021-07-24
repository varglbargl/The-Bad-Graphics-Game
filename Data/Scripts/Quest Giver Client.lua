local Utils = require(script:GetCustomProperty("Utils"))

local EXCLAMATION_POINT = script:GetCustomProperty("ExclamationPoint"):WaitForObject()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local ACCEPT_SFX = script:GetCustomProperty("AcceptSFX")
local LOG_FULL_SFX = script:GetCustomProperty("LogFullSFX")

local clientPlayer = Game.GetLocalPlayer()

TRIGGER.interactionLabel = "ACCEPT QUEST"

function onInteracted(thisTrigger, other)
	if other == clientPlayer then
    if not clientPlayer.clientUserData["Quests"] or #clientPlayer.clientUserData["Quests"] < 10 then
      EXCLAMATION_POINT.visibility = Visibility.FORCE_OFF
      TRIGGER.collision = Collision.FORCE_OFF

      Utils.playSoundEffect(ACCEPT_SFX, TRIGGER:GetWorldPosition(), 0.75, math.random(-2, 2) * 100)
      Utils.showFlyupText("QUEST ACCEPTED")
      Utils.throttleToServer("AcceptQuest")

      Task.Wait(60)

      if Object.IsValid(script) and Object.IsValid(TRIGGER) then
        TRIGGER.collision = Collision.FORCE_ON
        EXCLAMATION_POINT.visibility = Visibility.INHERIT
      end
    else
      Utils.playSoundEffect(LOG_FULL_SFX, TRIGGER:GetWorldPosition(), 0.75, math.random(-2, 2) * 100)
      Utils.showFlyupText("QUEST LOG FULL", nil, Utils.color.hurt)
    end
	end
end

TRIGGER.interactedEvent:Connect(onInteracted)
