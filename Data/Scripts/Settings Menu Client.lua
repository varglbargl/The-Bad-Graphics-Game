local Utils = require(script:GetCustomProperty("Utils"))

local OPEN_SFX = script:GetCustomProperty("OpenSFX")
local CLOSE_SFX = script:GetCustomProperty("CloseSFX")
local SELECT_SFX = script:GetCustomProperty("SelectSFX")

local SETTINGS_MENU = script:GetCustomProperty("SettingsMenu"):WaitForObject()
local CLOSE = script:GetCustomProperty("Close"):WaitForObject()

local CAMERA = script:GetCustomProperty("Camera"):WaitForObject()

local GRAPHICS_QUALITY = script:GetCustomProperty("GraphicsQuality"):WaitForObject()
local COMBAT_ANIMATIONS = script:GetCustomProperty("CombatAnimations"):WaitForObject()

local VERY_BAD = script:GetCustomProperty("VeryBad"):WaitForObject()
local EXTREMELY_BAD = script:GetCustomProperty("ExtremelyBad"):WaitForObject()
local UNPLAYABLY_BAD = script:GetCustomProperty("UnplayablyBad"):WaitForObject()

local clientPlayer = Game.GetLocalPlayer()
local settingsOpen = false

function changeGraphicsSettings(value)
  if value == 1 then
    CAMERA.fieldOfView = 70
    VERY_BAD.visibility = Visibility.FORCE_OFF
    EXTREMELY_BAD.visibility = Visibility.FORCE_OFF
    UNPLAYABLY_BAD.visibility = Visibility.INHERIT
  elseif value == 2 then
    CAMERA.fieldOfView = 70
    VERY_BAD.visibility = Visibility.FORCE_OFF
    EXTREMELY_BAD.visibility = Visibility.INHERIT
    UNPLAYABLY_BAD.visibility = Visibility.FORCE_OFF
  elseif value == 3 then
    CAMERA.fieldOfView = 70
    VERY_BAD.visibility = Visibility.INHERIT
    EXTREMELY_BAD.visibility = Visibility.FORCE_OFF
    UNPLAYABLY_BAD.visibility = Visibility.FORCE_OFF
  elseif value == 4 then
    CAMERA.fieldOfView = 90
    VERY_BAD.visibility = Visibility.FORCE_OFF
    EXTREMELY_BAD.visibility = Visibility.FORCE_OFF
    UNPLAYABLY_BAD.visibility = Visibility.FORCE_OFF
  end
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

      selected = thisButton
      callback(value)
    end)
  end
end

initRadioButtons(GRAPHICS_QUALITY, changeGraphicsSettings, 4)

function openSettings()
  settingsOpen = true
  Utils.playSoundEffect(OPEN_SFX)
  SETTINGS_MENU.visibility = Visibility.INHERIT

  UI.SetCursorVisible(true)
  UI.SetCanCursorInteractWithUI(true)
end

function closeSettings()
  settingsOpen = false
  Utils.playSoundEffect(CLOSE_SFX)
  SETTINGS_MENU.visibility = Visibility.FORCE_OFF

  UI.SetCursorVisible(false)
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

Events.Connect("ToggleSettings", toggleSettingsOpen)
