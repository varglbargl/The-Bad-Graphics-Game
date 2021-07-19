local EQUIPMENT = script:GetCustomProperty("Equipment")

function OnPlayerJoined(player)
  local gear = World.SpawnAsset(EQUIPMENT)
  gear:Equip(player)
end

-- on player joined/left functions need to be defined before calling event:Connect()
Game.playerJoinedEvent:Connect(OnPlayerJoined)
