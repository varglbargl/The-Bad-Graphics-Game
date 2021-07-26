local Utils = require(script:GetCustomProperty("Utils"))

local RESOURCE = script:GetCustomProperty("Resource")
local MIN_AMOUNT = script:GetCustomProperty("MinAmount")
local MAX_AMOUNT = script:GetCustomProperty("MaxAmount")

local loot = script.parent
local amount = math.random(MIN_AMOUNT, MAX_AMOUNT)

function onPickup(thisLoot, owner)
  if not Object.IsValid(owner) then return end

  if RESOURCE == "HP" or RESOURCE == "Health" or RESOURCE == "HitPoints" then
    owner.hitPoints = math.min(owner.hitPoints + amount, owner.maxHitPoints)
    Events.Broadcast("PlayerHealed", owner)
  elseif RESOURCE == "Gear" then
    Utils.throttleToPlayer(owner, "NewGear")
  elseif RESOURCE == "RP" or RESOURCE == "RewardPoints" then
    amount = amount * math.ceil(owner.serverUserData["Level"] / 50)

    owner:GrantRewardPoints(amount, "Consumable")
    owner:AddResource("RP", amount)
  elseif RESOURCE == "Grip" then
    local currentGrip = owner:GetResource("Grip")

    if currentGrip > 0 and currentGrip < 25 then
      owner:SetResource("Grip", math.min(currentGrip + amount, 25))
    end
  else
    owner:AddResource(RESOURCE, amount)
  end

  loot:Destroy()
end

-- handler params: Equipment_equipment, Player_player
loot.equippedEvent:Connect(onPickup)
