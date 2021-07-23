local Utils = require(script:GetCustomProperty("Utils"))

local REWARD_POINT_SFX = script:GetCustomProperty("RewardPointSFX")

local HEALTH_BAR = script:GetCustomProperty("HealthBar"):WaitForObject()
local GRIP_BAR = script:GetCustomProperty("GripBar"):WaitForObject()
local XP_BAR = script:GetCustomProperty("XPBar"):WaitForObject()

local HEALTH_NUMBER = script:GetCustomProperty("HealthNumber"):WaitForObject()
local GRIP_NUMBER = script:GetCustomProperty("GripNumber"):WaitForObject()
local XP_NUMBER = script:GetCustomProperty("XPNumber"):WaitForObject()
local LEVEL_NUMBER = script:GetCustomProperty("LevelNumber"):WaitForObject()

local PLAYER_NAME = script:GetCustomProperty("PlayerName"):WaitForObject()
local PLAYER_RANK = script:GetCustomProperty("PlayerRank"):WaitForObject()

local clientPlayer = Game.GetLocalPlayer()

local myHitPoints = clientPlayer:GetResource("HitPoints") or "nothin"
local myLevel = 1
local myRank = clientPlayer:GetPrivateNetworkedData("Rank")

local myRP = clientPlayer:GetResource("RP") or "nothin"
local myXP = clientPlayer:GetResource("XP") or "nothin"

PLAYER_NAME.text = clientPlayer.name

function onResourceChanged(player, name, newTotal)
  -- print(clientPlayer.name.."'s "..name.." changed to "..newTotal.."!")
  if name == "HitPoints" then

    if myHitPoints ~= "nothin" then
      local difference = newTotal - myHitPoints

      if difference > 0 then
        if not clientPlayer.isDead then
          Utils.showFlyupText("+"..Utils.formatInt(difference), clientPlayer:GetWorldPosition(), Utils.color.heal)
        end
      elseif difference < 0 then
        Utils.showFlyupText(Utils.formatInt(difference), clientPlayer:GetWorldPosition(), Utils.color.hurt)
      end
    end

    HEALTH_BAR.progress = newTotal / 25
    HEALTH_NUMBER.text = Utils.formatInt(newTotal).."/25 HP"
    myHitPoints = newTotal
  elseif name == "RP" then

    if myRP ~= "nothin" then
      local difference = newTotal - myRP
      if difference > 0 then

        Task.Wait(0.1)

        Utils.playSoundEffect(REWARD_POINT_SFX, nil, 0.2, 200)
        Utils.showFlyupText("+"..Utils.formatInt(difference).." RP", clientPlayer:GetWorldPosition(), Utils.color.rp)
      end
    end

    myRP = newTotal
  elseif name == "XP" then
    if myXP ~= "nothin" then
      local difference = newTotal - myXP
      if difference > 0 then
        Utils.showFlyupText("+"..Utils.formatInt(difference).." XP", clientPlayer:GetWorldPosition(), Utils.color.xp)
      end
    end

    myXP = newTotal
    XP_BAR.progress = (myXP % 25) / 25
    XP_NUMBER.text = (myXP % 25).."/25 XP"

    myLevel = math.floor(myXP / 25) + 1
    LEVEL_NUMBER.text = Utils.formatInt(myLevel)
  elseif name == "Grip" then
    GRIP_BAR.progress = newTotal / 25
    GRIP_NUMBER.text = newTotal.."/25 Grip"
  end
end

function onPrivateNetworkedDataChanged(player, key)
  if player ~= clientPlayer then return end

  local data = clientPlayer:GetPrivateNetworkedData(key)

  if key == "Rank" then
    if myRank then
      PLAYER_RANK.text = data

      local stat1, stat2, stat3 = Utils.getRandomStats()

      Chat.LocalMessage(" ")
      Chat.LocalMessage("   You gained a level! You are now a Level "..myLevel.." "..data..[[!]])
      Chat.LocalMessage("      +"..math.random(1, 4).." "..stat1)
      Chat.LocalMessage("      +"..math.random(1, 4).." "..stat2)
      Chat.LocalMessage("       -"..math.random(1, 3).." "..stat3)
      Chat.LocalMessage(" ")

      Events.Broadcast("LeveledUp")

    else
      myRank = data
      PLAYER_RANK.text = myRank
    end
  end
end

-- handler params: Player_player, string_resourceName, integer_newTotal
clientPlayer.resourceChangedEvent:Connect(onResourceChanged)

-- handler params: Player_player, string_keyName
clientPlayer.privateNetworkedDataChangedEvent:Connect(onPrivateNetworkedDataChanged)
