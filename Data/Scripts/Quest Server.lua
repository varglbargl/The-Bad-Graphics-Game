local Utils = require(script:GetCustomProperty("Utils"))

function onPlayerJoined(player)
  player.serverUserData["Weapon"] = nil

  player.serverUserData["Quests"] = {}

  -- DEBUG!!

  if Environment.IsPreview() then
    -- handler params: Player_player, string_keyCode
    player.bindingPressedEvent:Connect(function(thisPlayer, keyCode)
      if keyCode == "ability_extra_29" then
        if player:IsBindingPressed("ability_feet") then
          for i = 1, 10 do
            onQuestAccepted(thisPlayer)
          end
        else
          onQuestAccepted(thisPlayer)
        end
      end
    end)
  end
end

function onQuestAccepted(player)
  if not Object.IsValid(player) then return end

  if #player.serverUserData["Quests"] < 10 then
    table.insert(player.serverUserData["Quests"], 0)

    Utils.updatePrivateNetworkedData(player, "Quests")
  end
end

function onRatKilled(player)
  if not Object.IsValid(player) then return end

  local questsCompeted = 0

  for i, quest in ipairs(player.serverUserData["Quests"]) do
    quest = math.min(quest + 1, 10)

    player.serverUserData["Quests"][i] = quest

    if quest >= 10 then
      questsCompeted = questsCompeted + 1
    end
  end

  Utils.updatePrivateNetworkedData(player, "Quests")

  if questsCompeted > 0 then
    player:GrantRewardPoints(questsCompeted * 10, "RatKill")
    player:AddResource("RP", questsCompeted * 10)

    for i = 1, 10 do
      if player.serverUserData["Quests"][1] and player.serverUserData["Quests"][1] >= 10 then
        table.remove(player.serverUserData["Quests"], 1)
      end
    end

    Task.Wait(1)
    if not Object.IsValid(player) then return end

    Utils.updatePrivateNetworkedData(player, "Quests")
  end
end

function equipToPlayer(player, item)
  if not Object.IsValid(player) then return end
end

Game.playerJoinedEvent:Connect(onPlayerJoined)

Events.ConnectForPlayer("AcceptQuest", onQuestAccepted)
Events.Connect("RatKilled", onRatKilled)
