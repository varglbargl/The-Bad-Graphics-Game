function updateIdle(player, stance)
  player.serverUserData["IdleAnimation"] = stance
end

function hurtAnimation(player, damage)
  if not Object.IsValid(player) then return end

  if player.hitPoints > 0 then
    if math.random(1, 2) == 1 then
      player.animationStance = "unarmed_stun_electric"
    else
      player.animationStance = "unarmed_stun_dizzy"
    end

    Task.Wait(0.5)
    if not Object.IsValid(player) or (player.animationStance ~= "unarmed_stun_electric" and player.animationStance ~= "unarmed_stun_dizzy") then return end

    player.animationStance = player.serverUserData["IdleAnimation"]
  end
end

function deathAnimation(player, damage)
  player.animationStance = "unarmed_death_spin"
end

function spawnAnimation(player, damage)
  player.animationStance = player.serverUserData["IdleAnimation"]
end

function onPlayerJoined(player)
	print("Assigning animations to " .. player.name)

  player.serverUserData["IdleAnimation"] = "unarmed_ready"

  -- handler params: Player_player, Damage_damage
  player.damagedEvent:Connect(hurtAnimation)

  -- handler params: Player_player, Damage_damage
  player.diedEvent:Connect(deathAnimation)

  -- handler params: Player_player
  player.spawnedEvent:Connect(spawnAnimation)
end


-- on player joined/left functions need to be defined before calling event:Connect()
Game.playerJoinedEvent:Connect(onPlayerJoined)

Events.Connect("UpdateIdleStance", updateIdle)
