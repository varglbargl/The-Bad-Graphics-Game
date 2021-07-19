local trigger = script.parent

local DAMAGE = script:GetCustomProperty("Damage")
local PERCENT = script:GetCustomProperty("Percent")

function Tick()
  for i, other in ipairs(trigger:GetOverlappingObjects()) do
    if other:IsA("Player") and not other.isDead then
      local howMuch = DAMAGE

      if PERCENT then
        howMuch = math.floor(DAMAGE / 100 * other.maxHitPoints)
      end

      if DAMAGE > 0 then
        other:ApplyDamage(Damage.New(howMuch))
      elseif DAMAGE < 0 and other.hitPoints ~= other.maxHitPoints then
        other.hitPoints = math.min(other.hitPoints - howMuch, other.maxHitPoints)
        Events.Broadcast("PlayerHealed", other, -howMuch)
      end
    end
  end

  Task.Wait(1)
end
