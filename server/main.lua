ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_outlawalert:carJackInProgress')
AddEventHandler('esx_outlawalert:carJackInProgress', function(targetCoords, streetName, vehicleLabel, playerGender)
	local gender = playerGender
	if playerGender == 0 then
		playerGender = _U('male')
	else
		playerGender = _U('female')
	end

	TriggerClientEvent('esx_outlawalert:outlawNotify', -1, _U('carjack', playerGender, vehicleLabel, streetName))
	TriggerClientEvent('esx_outlawalert:outlawSoundNotify', -1, 'carjack', gender, streetName)
	TriggerClientEvent('esx_outlawalert:carJackInProgress', -1, targetCoords)
end)

RegisterServerEvent('esx_outlawalert:combatInProgress')
AddEventHandler('esx_outlawalert:combatInProgress', function(targetCoords, streetName, playerGender)
	local gender = playerGender
	if playerGender == 0 then
		playerGender = _U('male')
	else
		playerGender = _U('female')
	end

	TriggerClientEvent('esx_outlawalert:outlawNotify', -1, _U('combat', playerGender, streetName))
	TriggerClientEvent('esx_outlawalert:outlawSoundNotify', -1, 'combat', gender, streetName)
	TriggerClientEvent('esx_outlawalert:combatInProgress', -1, targetCoords)
end)

RegisterServerEvent('esx_outlawalert:gunshotInProgress')
AddEventHandler('esx_outlawalert:gunshotInProgress', function(targetCoords, streetName, playerGender)
	local gender = playerGender
	if playerGender == 0 then
		playerGender = _U('male')
	else
		playerGender = _U('female')
	end

	TriggerClientEvent('esx_outlawalert:outlawNotify', -1, _U('gunshot', playerGender, streetName))
	TriggerClientEvent('esx_outlawalert:outlawSoundNotify', -1, 'gunshot', gender, streetName)
	TriggerClientEvent('esx_outlawalert:gunshotInProgress', -1, targetCoords)
end)

ESX.RegisterServerCallback('esx_outlawalert:isVehicleOwner', function(source, cb, plate)
	local identifier = GetPlayerIdentifier(source, 0)

	MySQL.Async.fetchAll('SELECT owner FROM owned_vehicles WHERE owner = @owner AND plate = @plate', {
		['@owner'] = identifier,
		['@plate'] = plate
	}, function(result)
		if result[1] then
			cb(result[1].owner == identifier)
		else
			cb(false)
		end
	end)
end)
