local Utils = require(script:GetCustomProperty("Utils"))

local OPEN_SFX = script:GetCustomProperty("OpenSFX")
local CLOSE_SFX = script:GetCustomProperty("CloseSFX")
local BLACK = script:GetCustomProperty("Black"):WaitForObject()

BLACK.visibility = Visibility.FORCE_OFF

function fadeToBlack(startTime)

  BLACK.visibility = Visibility.INHERIT
  Utils.playSoundEffect(OPEN_SFX)

  local function fadeLoop()
    local now = time() - startTime

    if now > 1 then
      BLACK.visibility = Visibility.FORCE_OFF
      Utils.playSoundEffect(CLOSE_SFX)
      return
    elseif now  > 0.5 then
      BLACK.width = math.floor(BLACK.parent.width * (1.5 - now * 1.5))
      BLACK.height = math.floor(BLACK.parent.height * (1.5 - now * 1.5))
    else
      BLACK.width = math.floor(BLACK.parent.width * now * 2.5)
      BLACK.height = math.floor(BLACK.parent.height * now * 2.5)
    end

    Task.Wait(0.08)

    fadeLoop()
  end

  fadeLoop()
end

Events.Connect("FadeToBlack", fadeToBlack)
