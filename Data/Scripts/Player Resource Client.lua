local Utils = require(script:GetCustomProperty("Utils"))

local REWARD_POINT_SFX = script:GetCustomProperty("RewardPointSFX")

local clientPlayer = Game.GetLocalPlayer()

local myHitPoints = "nothin"

local myGold = "nothin"

function onResourceChanged(player, name, newTotal)
  -- print(player.name.."'s "..name.." changed to "..newTotal.."!")
  if name == "HitPoints" then

    if myHitPoints ~= "nothin" then
      local difference = newTotal - myHitPoints

      if difference > 0 then
        if not player.isDead then
          Utils.showFlyupText("+"..Utils.formatInt(difference), clientPlayer:GetWorldPosition(), Utils.color.heal)
        end
      elseif difference < 0 then
        Utils.showFlyupText(Utils.formatInt(math.abs(difference)), clientPlayer:GetWorldPosition(), Utils.color.hurt)
      end
    end

    myHitPoints = player.hitPoints
  elseif name == "Gold" then

    if myGold ~= "nothin" then
      local difference = newTotal - myGold
      if difference > 0 then

        Task.Wait(0.1)

        if REWARD_POINT_SFX then
          Utils.playSoundEffect(REWARD_POINT_SFX, nil, 0.2, 200)
        end

        Utils.showFlyupText("+"..Utils.formatInt(difference * 5).." RP", clientPlayer:GetWorldPosition(), Utils.color.rp)
      end
    end

    myGold = newTotal
  end
end

-- handler params: Player_player, string_resourceName, integer_newTotal
clientPlayer.resourceChangedEvent:Connect(onResourceChanged)
