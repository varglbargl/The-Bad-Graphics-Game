local FLY_UP_FONT = script:GetCustomProperty("FlyupFont")

local Utils = {}

-- MY COLORS

Utils.color = {
  xp       = Color.New(0.9, 0.1, 0.7),
  rp       = Color.New(0.4, 0.2, 0.95),
  hurt     = Color.New(1, 0.1, 0.05),
  heal     = Color.New(0.1, 1, 0.5),
  attack   = Color.New(1, 0.95, 0.1),
  gold     = Color.New(1, 0.7, 0.3),
  quest    = Color.New(0.8, 0.8, 0.7),
  questCompete = Color.New(0, 0.5, 0),

  common   = Color.New(0.9, 0.8, 0.7),
  rare     = Color.New(0.35, 1, 0.5),
  epic     = Color.New(0.7, 0.45, 1),
  unique   = Color.New(1, 0.38, 0.3)
}

-- GENERATORS

local ranks = {
  "Plucky Ratventurer",
  "Measly Cheesesqueak",
  "Junior Wheel Runner",
  "Apprentice Ankle Biter",
  "Fluffy Pesterknight",
  "Minor Meadowsneak",
  "Pipsqueak Punisher",
  "Inscrupulous Shrew",
  "Pesky Pizza Thief",
  "Lesser Meadowalker",
  "Skeevy Den Delver",
  "Lesser Wolverkinight",
  "Rattata Wrestler",
  "Gnashing Gnawbones",
  "Scavenging Rodentivore",
  "Lesser Whiskermage",
  "Raticidal Poisoneer",
  "Verminally Capricious",
  "Cursed Hexterminator",
  "Whispy Willowinder",
  "Happy Habitrailer",
  "Secretive Nimhspeaker",
  "Notorious Capybasher",
  "Arsenic Ratnip",
  "Vermine Labrattler",
  "Muridae Murderer",
  "Scrupulous Shrew",
  "Grim Exterminatrix",
  "Rodentious Redwaller",
  "Sagely Soothsquaker",
  "Bubonic Plaguesploder",
  "Radical Ratsweeper",
  "Raticate Culler",
  "Greater Whiskermage",
  "Burrowing Warrenlord",
  "Mighty Wolverkinight",
  "Avatar of Muskwrath",
  "Major Meadowstrider",
  "Ratatoskr's Demise",
  "Plaguewarden Prime",
  "Rattus Ex Infernis",
  "Mayor of Gnashville",
  "Ascendant Cheesesqueak",
  "Exterminus Rex",
  "Senior Wheel Runner",
  "Grand Exterminatriarch",
  "Legendary Pizza Thief",
  "Fabled Fursuiter",
  "Ratpocalypse Arisen",
  "Harbinger of Ratnarok"
}

local stats = {
  "Hair Length",
  "Carrying Capacity",
  "Determination",
  "Skin Moisture",
  "Shoe Size",
  "Arm Length",
  "Fingers",
  "Eyes",
  "Popularity",
  "Body Temperature",
  "Smoothness",
  "Lung Capacity",
  "Snakes",
  "Think Power",
  "Skull Hardness",
  "Bite Pressure",
  "Perception",
  "Reading Comprehension",
  "Brain Weight",
  "Organ Capacity",
  "Gel Viscocity",
  "Grist Limit",
  "Criticism Resistence",
  "Gumption",
  "Reflexes",
  "Scrutibility",
  "Confidence",
  "Ironic Distance",
  "Saliva Production",
  "Dinosaur Facts",
  "Pupil Radius",
  "Maximum Hats",
  "Cooking Skill",
  "Pet Fondness",
  "Charm",
  "Surface Area",
  "Dance Skill",
  "Gritpoints",
  "Witpoints",
  "Spitpoints",
  "Vigor",
  "Erudicity",
  "Rat Resistence",
  "Turn Radius",
  "Sleeve Length",
  "Dream Vividness",
  "Sheen",
  "Piano Skill",
  "Vertebrae",
  "Polygons",
  "Density",
  "Buoyancy",
  "Dart Skill",
  "Tattoos",
  "Piercings",
  "Fuel Efficiency",
  "Fishing Skill",
  "Boondollars",
  "Mindfulness",
  "Hacking",
  "Depression",
  "Numbness",
  "Restlessness",
  "Awkwardness",
  "Free Will",
  "Nihilism",
  "Kindness",
  "Caring",
  "Alcohol Tolerance",
  "Verisimilitude",
  "Cunning",
  "Musk",
  "Nightmares",
  "Greed",
  "Nimbleness",
  "Stoutness",
  "Courage",
  "Batting Average",
  "Luck",
  "Nerves",
  "Memories",
  "Fate",
  "Writing",
  "Leatherworking",
  "Managerial Experience",
  "Sponsorships",
  "Typing Speed",
  "Dramatic Posing",
  "Leadership",
  "Plausible Deniability",
  "Durability"
}

function Utils.getRank(level)
  local tier = math.ceil(level / 50)

  if tier == 1 then
    return ranks[(level - 1) % 50 + 1]
  else
    return ranks[(level - 1) % 50 + 1].." Tier "..tier
  end
end

function Utils.getRandomStats()
  Utils.shuffleArray(stats, 3)
  return stats[1], stats[2], stats[3]
end

local prefixes = {
  "Really Spicy",
  "Angry",
  "Extremely Loud",
  "Flavor Blasted",
  "Totally Rad",
  "Burning",
  "Oafish",
  "Vulgar",
  "Bloody",
  "Featureless",
  "Pointless",
  "Worthless",
  "Hardcore",
  "Hellacious",
  "Illusory",
  "Amorphous",
  "Weirdly Kinda Wet",
  "Ancient",
  "Ensorceled",
  "Cursed",
  "Otherworldly",
  "Possessed",
  "Very Spooky",
  "Sinister",
  "Demifungal",
  "Twitching",
  "The Prince's Stolen",
  "Suspiciously Ticking",
  "Booby Trapped",
  "Spring-Loaded",
  "Distracting",
  "Reversible",
  "Collapsible",
  "Kinda Shady",
  "Super Iffy",
  "Inconspicuous",
  "Conspicuous",
  "Sketcky",
  "Dastardly",
  "Padded",
  "Ergonomic",
  "Calming and Soothing",
  "Weighted Plush",
  "Wholesome",
  "Edible",
  "Sanitary",
  "Lemon Scented",
  "Inflatable",
  "Very Expensive",
  "Very Stylish",
  "Bejeweled",
  "Resplendent",
  "Bespoke and Baroque",
  "Silver Filigreed",
  "Dave Strider's"
}

local suffixes = {
  "Muscles",
  "Fang and Bone",
  "the Gamer",
  "the Bully",
  "Smashing",
  "Violence",
  "Extreme Violence",
  "Fightin'",
  "Bar Fights",
  "Broken Glass",
  "Punching Bricks",
  "Partying",
  "Breaking Things",
  "the Dinosaur",
  "Big Dumb Idiots",
  "Doin' a Kickflip",
  "Whatever",
  "Nothing in Particular",
  "Brutality",
  "Blunt Force Trauma",
  "Hog Wrasslin'",
  "the Owl",
  "the Wilderwitch",
  "the Swamp",
  "Doom",
  "Certain Doom",
  "Omens and Portents",
  "the Anomolous and Superliminal Arts",
  "the Wizened",
  "the Placebo Effect",
  "the Rapacious Void",
  "the Goopwalker",
  "the Obelisk",
  "Catalytic Transmutation",
  "the Strange and Unusual",
  "the Ecto-Biologist",
  "the Furthest Ring",
  "the World Tree",
  "Alethiometry",
  "the Annoying Seagull",
  "the Goose! HONK",
  "Pure Skill",
  "the Long Con",
  "Swindin'",
  "Extremely Bad Luck",
  "the Daredevil",
  "the Streets",
  "the Smooth Criminal",
  "Getting Away With It",
  "Fraudulence",
  "Running with Scissors",
  "Absconding with the Biscuits",
  "the Imminently Deceased",
  "Doin' Crimes",
  "Eye Gouging",
  "Mustache Twirling",
  "Punchability",
  "the Dolphin",
  "Halting",
  "OSHA Compliance",
  "Hugging",
  "Pills and Good Advice",
  "Dying Less Often",
  "Feelin' Fine",
  "Just Vibin",
  "Good Times",
  "Whimzy",
  "Talking About Your Feelings",
  "ASMR",
  "the Panda",
  "Cookie Dough",
  "Friendship",
  "Kindness",
  "Napping",
  "the Cuddlefish",
  "Accessibility",
  "the Teddy Bear",
  "the Lion and the Unicorn",
  "the Hummingbird",
  "Craftsmanship",
  "the Professional",
  "Attractiveness",
  "Gettin' It Done",
  "Bookin' It",
  "Running Away",
  "the Queen's Court",
  "Regicide"
}

function Utils.getItemEnchant()
  return prefixes[math.random(1, #prefixes)], suffixes[math.random(1, #suffixes)]
end

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

function Utils.shuffleArray(arr, n)
  n = n or #arr

  for i = 1, n do
    local j = math.random(i, #arr)
    arr[i], arr[j] = arr[j], arr[i]
  end

  return arr
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
