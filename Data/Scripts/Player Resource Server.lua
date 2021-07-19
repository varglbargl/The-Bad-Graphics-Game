local Utils = require(script:GetCustomProperty("Utils"))

function onPlayerDamaged(player)
  player:SetResource("HitPoints", math.max(0, player.hitPoints))

  player.serverUserData["RecentlyDamaged"] = Task.Spawn(function()
    Task.Wait(5)
  end)
end

function onPlayerHealed(player, newTotal)
  player:SetResource("HitPoints", player.hitPoints)
end

function playerSpawned(player)
  player:SetResource("HitPoints", player.hitPoints)
end

function onPlayerJoined(player)
  local yourLevel = player:SetResource("Level", 1)
  player:SetResource("Gold", 0)

  Utils.throttleMessage(player.name.." (Level "..yourLevel.." Ratventurer) has joined the game!")

  player.maxHitPoints = 10
  player.hitPoints = player.maxHitPoints

  player:SetResource("MaxHitPoints", player.maxHitPoints)
  player:SetResource("HitPoints", player.hitPoints)

  player.serverUserData["RecentlyDamaged"] = Task.Spawn(function()
    Task.Wait(3)
  end)

  -- handler params: Player_player, Damage_damage
  player.damagedEvent:Connect(onPlayerDamaged)

  -- handler params: Player_player
  player.spawnedEvent:Connect(playerSpawned)

  -- DEBUG!!

  if Environment.IsPreview() then
    -- handler params: Player_player, string_keyCode
    player.bindingPressedEvent:Connect(function(thisPlayer, keyCode)
      if keyCode == "ability_extra_38" then
        print("Hello "..thisPlayer.name)
      end
    end)
  end

  Task.Spawn(function() resourceTicker(player) end)
end

function onPlayerLeft(player)
end

function onRatKilled(player)
  local amount = math.random(1, 3)

  player:GrantRewardPoints(amount, "RatKill")
  player:AddResource("RP", amount)
end

function resourceTicker(player)
  -- if not Object.IsValid(player) then return end

  -- if player.hitPoints < player.maxHitPoints and player.serverUserData["RecentlyDamaged"] and player.serverUserData["RecentlyDamaged"]:GetStatus() == TaskStatus.UNINITIALIZED then

  --   player.hitPoints = math.min(player.maxHitPoints, player:GetResource("HitPoints") + math.floor(player:GetResource("Grit") / 5 + 1.5))
  --   player:SetResource("HitPoints", player.hitPoints)
  -- end

  -- Task.Wait(1)
  -- resourceTicker(player)
end

-- on player joined/left functions need to be defined before calling event:Connect()
Game.playerJoinedEvent:Connect(onPlayerJoined)
Game.playerLeftEvent:Connect(onPlayerLeft)

-- handler params: Player_player, integer_newTotal
Events.Connect("PlayerHealed", onPlayerHealed)

-- handler params: Player_player
Events.Connect("RatKilled", onRatKilled)
