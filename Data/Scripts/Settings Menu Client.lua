local Utils = require(script:GetCustomProperty("Utils"))

local CURSOR = script:GetCustomProperty("Cursor"):WaitForObject()

local OPEN_SFX = script:GetCustomProperty("OpenSFX")
local CLOSE_SFX = script:GetCustomProperty("CloseSFX")
local SELECT_SFX = script:GetCustomProperty("SelectSFX")

local SETTINGS_MENU = script:GetCustomProperty("SettingsMenu"):WaitForObject()
local CLOSE = script:GetCustomProperty("Close"):WaitForObject()
local LOADING = script:GetCustomProperty("Loading"):WaitForObject()

local CAMERA = script:GetCustomProperty("Camera"):WaitForObject()

local GRAPHICS_QUALITY = script:GetCustomProperty("GraphicsQuality"):WaitForObject()
local COMBAT_ANIMATION = script:GetCustomProperty("CombatAnimation"):WaitForObject()

local VERY_BAD = script:GetCustomProperty("VeryBad"):WaitForObject()
local EXTREMELY_BAD = script:GetCustomProperty("ExtremelyBad"):WaitForObject()
local UNPLAYABLY_BAD = script:GetCustomProperty("UnplayablyBad"):WaitForObject()

local clientPlayer = Game.GetLocalPlayer()
local settingsOpen = false

local currentGraphicsQuality = clientPlayer:GetResource("GraphicsQuality")
local currentCombatAnimations = clientPlayer:GetResource("CombatAnimations")

function changeGraphicsQuality(value)
  if value == 1 then
    CAMERA.fieldOfView = 70
    CAMERA.currentDistance = math.max(CAMERA.currentDistance, 1200)
    VERY_BAD.visibility = Visibility.FORCE_OFF
    EXTREMELY_BAD.visibility = Visibility.FORCE_OFF
    UNPLAYABLY_BAD.visibility = Visibility.INHERIT
  elseif value == 2 then
    CAMERA.fieldOfView = 70
    CAMERA.currentDistance = math.max(CAMERA.currentDistance, 1200)
    VERY_BAD.visibility = Visibility.FORCE_OFF
    EXTREMELY_BAD.visibility = Visibility.INHERIT
    UNPLAYABLY_BAD.visibility = Visibility.FORCE_OFF
  elseif value == 3 then
    CAMERA.fieldOfView = 70
    CAMERA.currentDistance = math.max(CAMERA.currentDistance, 1200)
    VERY_BAD.visibility = Visibility.INHERIT
    EXTREMELY_BAD.visibility = Visibility.FORCE_OFF
    UNPLAYABLY_BAD.visibility = Visibility.FORCE_OFF
  elseif value == 4 then
    CAMERA.currentDistance = math.min(CAMERA.currentDistance, 500)
    CAMERA.fieldOfView = 90
    VERY_BAD.visibility = Visibility.FORCE_OFF
    EXTREMELY_BAD.visibility = Visibility.FORCE_OFF
    UNPLAYABLY_BAD.visibility = Visibility.FORCE_OFF
  end

  if value == currentGraphicsQuality then return end

  currentGraphicsQuality = value

  Utils.throttleToServer("UpdateGraphicsQuality", value)
end

function changeCombatAnimation(value)
  Utils.throttleToServer("UpdateCombatAnimation", value)
end

function initRadioButtons(container, callback, defaultValue)
  local selected = nil

  for _, button in ipairs(container:FindDescendantsByType("UIButton")) do
    local value = button:GetCustomProperty("Value")

    if value == defaultValue then
      button:FindChildByName("Selected").visibility = Visibility.INHERIT
      selected = button
    else
      button:FindChildByName("Selected").visibility = Visibility.FORCE_OFF
    end

    button.clickedEvent:Connect(function(thisButton)
      if Object.IsValid(selected) then
        if selected == thisButton then return end

        selected:FindChildByName("Selected").visibility = Visibility.FORCE_OFF
      end

      thisButton:FindChildByName("Selected").visibility = Visibility.INHERIT

      Utils.playSoundEffect(SELECT_SFX)
      selected = thisButton
      callback(value)
      Events.Broadcast("DisableButtons")
    end)

    Events.Connect("DisableButtons", function() disableButton(button) end)
  end
end

function disableButton(button)
  button.isInteractable = false

  Task.Wait(1)

  button.isInteractable = true
end

function cursorFollowLoop()
  if CURSOR.visibility == Visibility.FORCE_OFF then return end

  local mousePosition = UI.GetCursorPosition()

  CURSOR.x = mousePosition.x
  CURSOR.y = mousePosition.y

  Task.Wait()

  cursorFollowLoop()
end

function openSettings()
  settingsOpen = true
  Utils.playSoundEffect(OPEN_SFX)
  SETTINGS_MENU.visibility = Visibility.INHERIT

  -- UI.SetCursorVisible(true)
  CURSOR.visibility = Visibility.INHERIT
  UI.SetCanCursorInteractWithUI(true)

  Task.Spawn(cursorFollowLoop)
end

function closeSettings()
  settingsOpen = false
  Utils.playSoundEffect(CLOSE_SFX)
  SETTINGS_MENU.visibility = Visibility.FORCE_OFF

  -- UI.SetCursorVisible(false)
  CURSOR.visibility = Visibility.FORCE_OFF
  UI.SetCanCursorInteractWithUI(false)
end

function toggleSettingsOpen()
  if settingsOpen then
    closeSettings()
  else
    openSettings()
  end
end

function onBindingPressed(thisPlayer, keyCode)
  if keyCode == "ability_extra_4" then
    toggleSettingsOpen()
  end
end

CLOSE.clickedEvent:Connect(closeSettings)
clientPlayer.bindingPressedEvent:Connect(onBindingPressed)

while currentGraphicsQuality == 0 or currentCombatAnimations == 0 do
  currentGraphicsQuality = clientPlayer:GetResource("GraphicsQuality")
  currentCombatAnimations = clientPlayer:GetResource("CombatAnimations")
  Task.Wait(0.5)
end

LOADING.visibility = Visibility.FORCE_OFF
changeGraphicsQuality(currentGraphicsQuality)

Events.Connect("ToggleSettings", toggleSettingsOpen)

initRadioButtons(GRAPHICS_QUALITY, changeGraphicsQuality, currentGraphicsQuality)
initRadioButtons(COMBAT_ANIMATION, changeCombatAnimation, currentCombatAnimations)
