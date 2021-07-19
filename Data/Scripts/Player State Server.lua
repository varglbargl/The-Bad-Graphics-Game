function playerDied(player, damage)
  player.isMovementEnabled = false

  Task.Wait(5)

  player:Spawn({spawnKey = "Graveyard"})
end

function playerSpawned(player)
  player.isMovementEnabled = true
end

function onPlayerJoined(player)
	print("Assigning states to " .. player.name)

  -- handler params: Player_player, Damage_damage
  player.diedEvent:Connect(playerDied)

  -- handler params: Player_player
  player.spawnedEvent:Connect(playerSpawned)
end


-- on player joined/left functions need to be defined before calling event:Connect()
Game.playerJoinedEvent:Connect(onPlayerJoined)
