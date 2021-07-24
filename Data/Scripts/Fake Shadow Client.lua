local shadow = script.parent
local caster = shadow.parent

function Tick()
  local ground = World.Raycast(caster:GetWorldPosition() + Vector3.UP * 50, caster:GetWorldPosition() + Vector3.UP * -10000, {ignorePlayers = true})
  shadow:SetWorldRotation(Rotation.ZERO)

  if ground then
    shadow.visibility = Visibility.FORCE_ON
    shadow:SetWorldPosition(ground:GetImpactPosition() + Vector3.UP)
  else
    shadow.visibility = Visibility.FORCE_OFF
  end
end
