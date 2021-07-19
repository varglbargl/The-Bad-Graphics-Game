local thing = script.parent

while Task.Wait() do
  if not Object.IsValid(thing) then break end
  thing:SetWorldRotation(Rotation.New(0, 0, thing:GetWorldRotation().z))
end
