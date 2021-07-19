local SCREEN_CONTAINER = script:GetCustomProperty("ScreenContainer"):WaitForObject()

local clientPlayer = Game.GetLocalPlayer()

SCREEN_CONTAINER:AttachToLocalView()

function Tick()
  SCREEN_CONTAINER:SetWorldRotation(clientPlayer:GetLookWorldRotation())
end
