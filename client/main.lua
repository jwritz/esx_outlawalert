ESX = nil

local timing, isPlayerWhitelisted = math.ceil(Config.Timer * 60000), false
local streetName, playerGender

local soundQueue = {}
local soundQueueLength = 0;
local isPrevShotsFiredCooldown, prevShotsFiredLocation = false, nil
local isPrevCombatTimeCooldown, prevCombatLocation = false, nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	ESX.PlayerData = ESX.GetPlayerData()

	TriggerEvent('skinchanger:getSkin', function(skin)
		playerGender = skin.sex
	end)

	isPlayerWhitelisted = refreshPlayerWhitelisted()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job

	isPlayerWhitelisted = refreshPlayerWhitelisted()
end)

RegisterNetEvent('esx_outlawalert:outlawNotify')
AddEventHandler('esx_outlawalert:outlawNotify', function(alert)
	if isPlayerWhitelisted then
		if Config.ShowTextNotification then
			ESX.ShowNotification(alert)
		end
	end
end)

RegisterNetEvent('esx_outlawalert:outlawSoundNotify')
AddEventHandler('esx_outlawalert:outlawSoundNotify', function(type, playerGender, streetName)
	if isPlayerWhitelisted then
		if Config.PlaySoundNotification then 
			PlaySoundNotification(type, playerGender, streetName)
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(100)

		if NetworkIsSessionStarted() then
			DecorRegister('isOutlaw', 3)
			DecorSetInt(PlayerPedId(), 'isOutlaw', 1)
			return
		end
	end
end)

-- Gets the player's current street.
-- Aaalso get the current player gender
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(3000)

		local playerCoords = GetEntityCoords(PlayerPedId())
		streetName,_ = GetStreetNameAtCoord(playerCoords.x, playerCoords.y, playerCoords.z)
		streetName = GetStreetNameFromHashKey(streetName)
	end
end)

AddEventHandler('skinchanger:loadSkin', function(character)
	playerGender = character.sex
end)

function refreshPlayerWhitelisted()
	if not ESX.PlayerData then
		return false
	end

	if not ESX.PlayerData.job then
		return false
	end

	for k,v in ipairs(Config.WhitelistedCops) do
		if v == ESX.PlayerData.job.name then
			return true
		end
	end

	return false
end

RegisterNetEvent('esx_outlawalert:carJackInProgress')
AddEventHandler('esx_outlawalert:carJackInProgress', function(targetCoords)
	if isPlayerWhitelisted then
		if Config.CarJackingAlert then
			local alpha = 250
			local thiefBlip = AddBlipForRadius(targetCoords.x, targetCoords.y, targetCoords.z, Config.BlipJackingRadius)

			SetBlipHighDetail(thiefBlip, true)
			SetBlipColour(thiefBlip, 1)
			SetBlipAlpha(thiefBlip, alpha)
			SetBlipAsShortRange(thiefBlip, true)

			pressToRespond(targetCoords.x, targetCoords.y)

			while alpha ~= 0 do
				Citizen.Wait(Config.BlipJackingTime * 4)
				alpha = alpha - 1
				SetBlipAlpha(thiefBlip, alpha)

				if alpha == 0 then
					RemoveBlip(thiefBlip)
					return
				end
			end

		end
	end
end)

RegisterNetEvent('esx_outlawalert:gunshotInProgress')
AddEventHandler('esx_outlawalert:gunshotInProgress', function(targetCoords)
	if isPlayerWhitelisted and Config.GunshotAlert then
		local alpha = 250
		local gunshotBlip = AddBlipForRadius(targetCoords.x, targetCoords.y, targetCoords.z, Config.BlipGunRadius)
		print("gunshotBlip coords : x=" .. targetCoords.x .. ", y=" .. targetCoords.y .. ", z=" .. targetCoords.z)--DELETE
		SetBlipHighDetail(gunshotBlip, true)
		SetBlipColour(gunshotBlip, 1)
		SetBlipAlpha(gunshotBlip, alpha)
		SetBlipAsShortRange(gunshotBlip, true)

		pressToRespond(targetCoords.x, targetCoords.y)

		while alpha ~= 0 do
			Citizen.Wait(Config.BlipGunTime * 4)
			alpha = alpha - 1
			SetBlipAlpha(gunshotBlip, alpha)

			if alpha == 0 then
				RemoveBlip(gunshotBlip)
				return
			end
		end
	end
end)

RegisterNetEvent('esx_outlawalert:combatInProgress')
AddEventHandler('esx_outlawalert:combatInProgress', function(targetCoords)
	if isPlayerWhitelisted and Config.MeleeAlert then
		local alpha = 250
		local meleeBlip = AddBlipForRadius(targetCoords.x, targetCoords.y, targetCoords.z, Config.BlipMeleeRadius)

		SetBlipHighDetail(meleeBlip, true)
		SetBlipColour(meleeBlip, 17)
		SetBlipAlpha(meleeBlip, alpha)
		SetBlipAsShortRange(meleeBlip, true)

		pressToRespond(targetCoords.x, targetCoords.y)

		while alpha ~= 0 do
			Citizen.Wait(Config.BlipMeleeTime * 4)
			alpha = alpha - 1
			SetBlipAlpha(meleeBlip, alpha)

			if alpha == 0 then
				RemoveBlip(meleeBlip)
				return
			end
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(2000)

		if DecorGetInt(PlayerPedId(), 'isOutlaw') == 2 then
			Citizen.Wait(timing)
			DecorSetInt(PlayerPedId(), 'isOutlaw', 1)
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		local playerPed = PlayerPedId()
		local playerCoords = GetEntityCoords(playerPed)

		-- is jackin'
		if (IsPedTryingToEnterALockedVehicle(playerPed) or IsPedJacking(playerPed)) and Config.CarJackingAlert then

			Citizen.Wait(3000)
			local vehicle = GetVehiclePedIsIn(playerPed, true)

			if vehicle and ((isPlayerWhitelisted and Config.ShowCopsMisbehave) or not isPlayerWhitelisted) then
				local plate = ESX.Math.Trim(GetVehicleNumberPlateText(vehicle))

				ESX.TriggerServerCallback('esx_outlawalert:isVehicleOwner', function(owner)
					if not owner then

						local vehicleLabel = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
						vehicleLabel = GetLabelText(vehicleLabel)

						DecorSetInt(playerPed, 'isOutlaw', 2)

						TriggerServerEvent('esx_outlawalert:carJackInProgress', {
							x = ESX.Math.Round(playerCoords.x, 1),
							y = ESX.Math.Round(playerCoords.y, 1),
							z = ESX.Math.Round(playerCoords.z, 1)
						}, streetName, vehicleLabel, playerGender)
					end
				end, plate)
			end

		elseif IsPedInMeleeCombat(playerPed) and Config.MeleeAlert then

			Citizen.Wait(3000)

			local curX = ESX.Math.Round(playerCoords.x, 1)
			local curY = ESX.Math.Round(playerCoords.y, 1)
			local curZ = ESX.Math.Round(playerCoords.z, 1)
			-- if prevShotsFiredLocation ~= nil then --DEBUG
			-- 	print("Distance : " .. Vdist(curX, curY, curZ, prevShotsFiredLocation.x, prevShotsFiredLocation.y, prevShotsFiredLocation.z))
			-- end
			if ((prevCombatLocation == nil) or (Vdist(curX, curY, curZ, prevCombatLocation.x, prevCombatLocation.y, prevCombatLocation.z) > Config.DuplicateReportDistance)) or (not isPrevCombatTimeCooldown) then
				if (isPlayerWhitelisted and Config.ShowCopsMisbehave) or not isPlayerWhitelisted then
					DecorSetInt(playerPed, 'isOutlaw', 2)
					prevCombatLocation = {x = curX, y = curY, z = curZ}--Update prevLocation 
					combatCooldown()--Start cooldown
					TriggerServerEvent('esx_outlawalert:combatInProgress', {x = curX, y = curY, z = curZ}, streetName, playerGender)
				end
			end
		elseif IsPedShooting(playerPed) and not IsPedCurrentWeaponSilenced(playerPed) and Config.GunshotAlert then

			Citizen.Wait(3000)

			local curX = ESX.Math.Round(playerCoords.x, 1)
			local curY = ESX.Math.Round(playerCoords.y, 1)
			local curZ = ESX.Math.Round(playerCoords.z, 1)
			-- if prevShotsFiredLocation ~= nil then --DEBUG
			-- 	print("Distance : " .. Vdist(curX, curY, curZ, prevShotsFiredLocation.x, prevShotsFiredLocation.y, prevShotsFiredLocation.z))
			-- end
			print("gunshotLocation coords : x=" .. curX .. ", y=" .. curY .. ", z=" .. curZ)--DELETE
			if ((prevShotsFiredLocation == nil) or (Vdist(curX, curY, curZ, prevShotsFiredLocation.x, prevShotsFiredLocation.y, prevShotsFiredLocation.z) > Config.DuplicateReportDistance)) or (not isPrevShotsFiredCooldown) then
				if (isPlayerWhitelisted and Config.ShowCopsMisbehave) or not isPlayerWhitelisted then
					DecorSetInt(playerPed, 'isOutlaw', 2)
					prevShotsFiredLocation = {x = curX, y = curY, z = curZ}--Update prevLocation
					shotsFiredCooldown()--Start cooldown
					TriggerServerEvent('esx_outlawalert:gunshotInProgress', {x = curX, y = curY, z = curZ}, streetName, playerGender)
				end
			end
		end
	end
end)

function PlaySoundNotification(type, playerGender, streetName)
	if type == "carjack" then
		addSoundToQueue(Config.SoundFiles["gta"])
		addSoundToQueue(getStreetFilename(streetName))
		if playerGender == 0 then
			addSoundToQueue(Config.SoundFiles["suspect_male"])
		else
			addSoundToQueue(Config.SoundFiles["suspect_female"])
		end
		addSoundToQueue(Config.SoundFiles["dispatch_outro"])
	elseif type == "combat" then
		addSoundToQueue(Config.SoundFiles["assault"])
		addSoundToQueue(getStreetFilename(streetName))
		if playerGender == 0 then
			addSoundToQueue(Config.SoundFiles["suspect_male"])
		else
			addSoundToQueue(Config.SoundFiles["suspect_female"])
		end
		addSoundToQueue(Config.SoundFiles["dispatch_outro"])
	elseif type == "gunshot" then
		addSoundToQueue(Config.SoundFiles["shots_fired"])
		addSoundToQueue(getStreetFilename(streetName))
		if playerGender == 0 then
			addSoundToQueue(Config.SoundFiles["suspect_male"])
		else
			addSoundToQueue(Config.SoundFiles["suspect_female"])
		end
		addSoundToQueue(Config.SoundFiles["dispatch_outro"])
	end
end

function PlaySound(soundFile) 
	SendNUIMessage({
        type = 'outlawAlert',
        filename = soundFile,
        volume   = Config.DefaultVolume
    })
end

function addSoundToQueue(soundFile) 
	table.insert(soundQueue, soundFile)
	soundQueueLength = soundQueueLength + 1

	if soundQueueLength == 1 then
		PlaySound(soundFile)
	end
end

function getStreetFilename(streetName)
	streetName = string.upper(streetName)
	streetName = string.gsub(streetName, " ", "_")
	streetName = string.gsub(streetName, "ROAD", "RD")
	streetName = string.gsub(streetName, "STREET", "ST")
	local filename = "STREETS/STREET_" .. streetName .. ".wav"
	return filename
end

RegisterNUICallback("esx_outlawAlert:endSound", function()
	table.remove(soundQueue, 1)
	soundQueueLength = soundQueueLength - 1
	if soundQueueLength > 0 then
		PlaySound(soundQueue[1])
	end
end)

function shotsFiredCooldown()
	Citizen.CreateThread(function()
		isPrevShotsFiredCooldown = true
		Citizen.Wait(Config.DuplicateReportTime * 1000)
		isPrevShotsFiredCooldown = false
	end)
end

function combatCooldown()
	Citizen.CreateThread(function()
		isPrevCombatTimeCooldown = true
		Citizen.Wait(Config.DuplicateReportTime * 1000)
		isPrevCombatTimeCooldown = false
	end)
end

function pressToRespond(x, y)
	Citizen.CreateThread(function()
		local countdown = Config.PressToRepondTime * 1000 --3 seconds
		--Display message
		BeginTextCommandDisplayHelp("STRING")
		AddTextComponentSubstringPlayerName("Press ~INPUT_PICKUP~ to respond")
		EndTextCommandDisplayHelp(0, false, true, countdown)

		while(countdown >= 0) do
			--Check for input
			if IsControlJustReleased(0, 38) then --38 = INPUT_PICKUP (default is 'E')
				--Set Waypoint
				SetNewWaypoint(x, y)
				countdown = 0
			end

			--Wait
			Citizen.Wait(5)
			countdown = countdown - 5
		end
	end)
end