local Utils = require(script:GetCustomProperty("Utils"))

local QUEST_LOG = script:GetCustomProperty("QuestLog"):WaitForObject()
local COMPLETED_SFX = script:GetCustomProperty("CompletedSFX")
local NO_QUESTS = script:GetCustomProperty("NoQuests"):WaitForObject()

local questEntries = QUEST_LOG:GetChildren()
local sfx = nil

local clientPlayer = Game.GetLocalPlayer()

clientPlayer.clientUserData["Quests"] = {}

function onPrivateNetworkedDataChanged(player, key)
  if player ~= clientPlayer or not Object.IsValid(player) then return end

  local data = clientPlayer:GetPrivateNetworkedData(key)

  if key == "Quests" then
    local questsCompeted = false

    for i = 1, 10 do
      local quest = questEntries[i]

      if data[i] then

        quest.visibility = Visibility.INHERIT

        quest:FindChildByName("Progress").text = math.min(data[i], 10).."/10"

        if data[i] >= 10 then
          questsCompeted = true
          quest:FindChildByName("Progress"):SetColor(Utils.color.questCompete)
          quest:FindChildByName("Name"):SetColor(Utils.color.questCompete)
          quest:FindChildByName("Check").visibility = Visibility.INHERIT
        else
          quest:FindChildByName("Progress"):SetColor(Utils.color.quest)
          quest:FindChildByName("Name"):SetColor(Utils.color.quest)
          quest:FindChildByName("Check").visibility = Visibility.FORCE_OFF
        end
      else
        quest.visibility = Visibility.FORCE_OFF
        quest:FindChildByName("Check").visibility = Visibility.FORCE_OFF
      end
    end

    if questsCompeted then
      Events.Broadcast("NewGear")

      if Object.IsValid(sfx) then sfx:Destroy() end

      sfx = Utils.playSoundEffect(COMPLETED_SFX, nil, 0.75)
    end

    if #data > 0 then
      NO_QUESTS.visibility = Visibility.FORCE_OFF
    else
      NO_QUESTS.visibility = Visibility.INHERIT
    end
  end

  clientPlayer.clientUserData[key] = data
end

-- handler params: Player_player, string_key
clientPlayer.privateNetworkedDataChangedEvent:Connect(onPrivateNetworkedDataChanged)
