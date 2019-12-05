Config = {}

Config.Locale = 'en'

-- Set the time (in minutes) during the player is outlaw
Config.Timer = 1

-- Set if show alert when player use gun
Config.GunshotAlert = true

-- Set if show when player do carjacking
Config.CarJackingAlert = true

-- Set if show when player fight in melee
Config.MeleeAlert = true

-- In seconds
Config.BlipGunTime = 5

-- Blip radius, in float value!
Config.BlipGunRadius = 50.0

-- In seconds
Config.BlipMeleeTime = 7

-- Blip radius, in float value!
Config.BlipMeleeRadius = 50.0

-- In seconds
Config.BlipJackingTime = 10

-- Blip radius, in float value!
Config.BlipJackingRadius = 50.0

-- Show notification when cops steal too?
Config.ShowCopsMisbehave = false

-- Show text notification
Config.ShowTextNotification = true

-- Play sound notification
Config.PlaySoundNotification = true
Config.DefaultVolume = 0.5

-- Time after call that cops can press 'E' (38 = INPUT_PICKUP) to get a waypoint
Config.PressToRepondTime = 7 -- Seconds

-- Distance and time in between reports of a single player's crime  
-- 		(No report occurs only if both conditions are met (ie Duplicate report will be triggered if player is more
-- 		than __ away from previous location OR more then __ seconds have passed since previous))
Config.DuplicateReportDistance = 100; -- If a player does the same crime within __ distance of previous report, it will not be reported
Config.DuplicateReportTime = 30; --(Seconds) - If a player does the same crime (ie shots fired) within __ seconds of previous report, it will not be reported until more then __ seconds

-- Jobs in this table are considered as cops
Config.WhitelistedCops = {
	'police'
}

Config.SoundFiles = {
	-- ["assault_full"] = "WE_HAVE_A_POSSIBLE_ASSAULT_full.ogg",
	-- ["gta_full"] = "WE_HAVE_A_GRAND_THEFT_AUTO_full.ogg",
	-- ["shots_fired_full"] = "WE_HAVE_SHOTS_FIRED_full.ogg",
	["dispatch_outro"] = "OUTRO_01.ogg",
	["static"] = "NOISE_LOOP_01.ogg",
	["assault"] = "WE_HAVE_A_POSSIBLE_ASSAULT_NEAR.ogg",
	["gta"] = "WE_HAVE_A_GRAND_THEFT_AUTO_NEAR.ogg",
	["shots_fired"] = "WE_HAVE_SHOTS_FIRED_NEAR.ogg",
	["suspect_male"] = "SUSPECT_IS_A_MALE.ogg",
	["suspect_female"] = "SUSPECT_IS_A_FEMALE.ogg"
	
}
