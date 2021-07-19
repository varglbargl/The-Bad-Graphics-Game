local clientPlayer = Game.GetLocalPlayer()

function Tick()
  script.parent:SetWorldPosition(clientPlayer:GetWorldPosition())
end
