local Utils = require(script:GetCustomProperty("Utils"))

local LEVEL_UP_VFX = script:GetCustomProperty("LevelUpVFX")

function onPlayerDamaged(player)
  player:SetResource("HitPoints", math.max(0, player.hitPoints))

  player.serverUserData["RecentlyDamaged"] = Task.Spawn(function()
    Task.Wait(5)
  end)
end

function onPlayerHealed(player, newTotal)
  player:SetResource("HitPoints", player.hitPoints)
end

function updateCombatAnim(player, value)
  player:SetResource("CombatAnimations", value)
end

function updateGraphicsQuality(player, value)
  player:SetResource("GraphicsQuality", value)
end

function playerSpawned(player)
  player:SetResource("HitPoints", player.hitPoints)
end
function onPlayerJoined(player)

  local saveData = Storage.GetPlayerData(player) or {}

  local yourXP = 0

  if saveData.xp then
    yourXP = player:SetResource("XP", saveData.xp)
  else
    player:SetResource("XP", 0)
  end

  if saveData.rank then
    player.serverUserData["Rank"] = saveData.rank
  else
    player.serverUserData["Rank"] = Utils.getRank(math.floor(yourXP / 25) + 1)
  end

  if saveData.anims and saveData.anims ~= 0 then
    player:SetResource("CombatAnimations", saveData.anims)
  else
    player:SetResource("CombatAnimations", 1)
  end

  if saveData.graphics and saveData.graphics ~= 0 then
    player:SetResource("GraphicsQuality", saveData.graphics)
  else
    player:SetResource("GraphicsQuality", 4)
  end

  player.serverUserData["Level"] = math.floor(yourXP / 25) + 1

  player:SetResource("RP", 0)
  player:SetResource("Grip", 0)

  Utils.updatePrivateNetworkedData(player, "Rank")

  Utils.throttleMessage(player.name.." (Level "..(math.floor(yourXP / 25) + 1).." "..player.serverUserData["Rank"]..") has joined the game!")

  player.maxHitPoints = 25
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
        player:AddResource("XP", 25)
        checkLevelUp(player)
      end
    end)
  end

  Task.Spawn(function() resourceTicker(player) end)
end

function onPlayerLeft(player)
  local saveData = {
    xp = player:GetResource("XP"),
    rank = player.serverUserData["Rank"],
    anims = player:GetResource("CombatAnimations"),
    graphics = player:GetResource("GraphicsQuality")
  }

  if saveData.anims == 0 then
    saveData.anims = 1
  end

  if saveData.graphics == 0 then
    saveData.graphics = 4
  end

  -- if Environment.IsPreview() then saveData = {} end

  Storage.SetPlayerData(player, saveData)
end

function onRatKilled(player)
  if not Object.IsValid(player) then return end

  player:AddResource("XP", 1)

  checkLevelUp(player)
end

function checkLevelUp(player)
  if not Object.IsValid(player) then return end

  local currentXP = player:GetResource("XP")
  local currentLevel = player.serverUserData["Level"]
  local levelsGained = 0

  while currentXP >= 25 * (currentLevel + levelsGained) do
    levelsGained = levelsGained + 1
  end

  if levelsGained > 0 then
    if LEVEL_UP_VFX then
      World.SpawnAsset(LEVEL_UP_VFX, {position = player:GetWorldPosition()})
    end

    player.serverUserData["Level"] = math.floor(currentXP / 25) + 1
    player.hitPoints = math.min(player.hitPoints + 10, player.maxHitPoints)
    player:SetResource("HitPoints", player.hitPoints)
    player.serverUserData["Rank"] = Utils.getRank(player.serverUserData["Level"])

    Utils.updatePrivateNetworkedData(player, "Rank")
  end
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

-- handler params: Player_player
Events.Connect("CheckLevelUp", checkLevelUp)

Events.ConnectForPlayer("UpdateCombatAnimation", updateCombatAnim)
Events.ConnectForPlayer("UpdateGraphicsQuality", updateGraphicsQuality)
