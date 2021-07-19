local FLY_UP_FONT = script:GetCustomProperty("FlyUpFont")

local Utils = {}

-- MY COLORS

Utils.color = {
  rp       = Color.New(0.4, 0.2, 0.95),
  hurt     = Color.New(1, 0.1, 0.05),
  heal     = Color.New(0.1, 1, 0.5),
  attack   = Color.New(1, 0.95, 0.8),
  magic    = Color.New(1, 0.95, 0.1),
  gold     = Color.New(1, 0.7, 0.3),

  common   = Color.New(0.9, 0.8, 0.7),
  rare     = Color.New(0.35, 1, 0.5),
  epic     = Color.New(0.7, 0.45, 1),
  unique   = Color.New(1, 0.38, 0.3)
}

-- GAME MECHANICS

function Utils.formatInt(amount)
  local formatted = math.floor(amount)
  while true do
    formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
    if (k==0) then
      break
    end
  end

  return formatted
end

function Utils.showFlyupText(text, pos, color)
  if Environment.IsServer() then
    Utils.throttleToAllPlayers("FlyupText", text, pos, color)
    return
  end

  pos = pos or Game.GetLocalPlayer():GetWorldPosition()

  color = color or Color.New(0.7, 0.9, 1)

  if type(text) == "number" then
    text = Utils.formatInt(text)
  else
    text = tostring(text)
  end

  UI.ShowFlyUpText(text, pos + Vector3.New(math.random(-60, 60), math.random(-60, 60), math.random(50, 100)), {font = FLY_UP_FONT, isBig = true, duration = 2, color = color})
end

-- NETWORKED DATA

function Utils.updatePrivateNetworkedData(player, key)
  if not Object.IsValid(player) or Environment.IsClient() then return end

  player:SetPrivateNetworkedData(key, player.serverUserData[key])
end

local attackEvents = {}
local howMany = 2

local function unleashAttacks(player)
  if not Object.IsValid(player) or not attackEvents[player] then return end

  local nowAttacking = 0

  while #attackEvents[player] >= nowAttacking do
    if not Object.IsValid(player) then return end

    local whomst = {}

    for i = 1, howMany do
      if attackEvents[player][nowAttacking + i] and Object.IsValid(attackEvents[player][nowAttacking + i].enemy) then
        table.insert(whomst, attackEvents[player][nowAttacking + i].enemy.id)
        table.insert(whomst, attackEvents[player][nowAttacking + i].damage)
      end
    end

    Utils.throttleToAllPlayers("eHit", player, table.unpack(whomst))

    nowAttacking = nowAttacking + howMany
  end

  attackEvents[player] = nil
end

function Utils.throttlePlayerAttack(player, enemy, damage)
  if attackEvents[player] == nil then
    attackEvents[player] = {}

    Task.Spawn(function() unleashAttacks(player) end)
  end

  table.insert(attackEvents[player], {enemy = enemy, damage = damage})
end

function Utils.throttleToServer(evtName, ...)
  local result = Events.BroadcastToServer(evtName, ...)

  if result == BroadcastEventResultCode.EXCEEDED_RATE_LIMIT then
    Task.Wait(0.1)
    Utils.throttleToServer(evtName, ...)
  end
end

function Utils.throttleToAllPlayers(evtName, ...)
  local result = Events.BroadcastToAllPlayers(evtName, ...)

  if result == BroadcastEventResultCode.EXCEEDED_RATE_LIMIT then
    Task.Wait(0.1)
    Utils.throttleToAllPlayers(evtName, ...)
  end
end

function Utils.throttleToPlayer(player, evtName, ...)
  local result = Events.BroadcastToPlayer(player, evtName, ...)

  if result == BroadcastEventResultCode.EXCEEDED_RATE_LIMIT then
    Task.Wait(0.1)
    Utils.throttleToPlayer(player, evtName, ...)
  end
end

function Utils.throttleMessage(message)
  local result = Chat.BroadcastMessage(message)

  if result == BroadcastEventResultCode.EXCEEDED_RATE_LIMIT then
    Task.Wait(0.1)
    Utils.throttleToPlayer(message)
  end
end

-- GENERAL UTILITY

function Utils.groundBelowPoint(vec3)
  local hitResult = World.Raycast(vec3 + Vector3.UP * 200, vec3 - Vector3.UP * 10000, {ignorePlayers = true})
  if hitResult then
    return hitResult:GetImpactPosition()
  else
    return false
  end
end

function Utils.playSoundEffect(audio, location, volume, pitch)
  volume = volume or 1
  pitch = pitch or 0

  local sfx = World.SpawnAsset(audio)

  sfx.isTransient = true
  sfx.volume = volume
  sfx.pitch = pitch

  if location then
    sfx:SetWorldPosition(location)
  else
    sfx.isAttenuationEnabled = false
    sfx.isOcclusionEnabled = false
    sfx.isSpatializationEnabled = false
  end

  sfx:Play()

  return sfx
end

return Utils
