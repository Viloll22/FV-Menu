RegisterNetEvent('fv:givekeys')
AddEventHandler('fv:givekeys', function()
    local playerPed = GetPlayerPed(-1)
	local coords    = GetEntityCoords(playerPed)

	if IsPedInAnyVehicle(playerPed,  false) then
        vehicle = GetVehiclePedIsIn(playerPed, false)			
    else
        vehicle = GetClosestVehicle(coords.x, coords.y, coords.z, 7.0, 0, 70)
    end

	local plate = GetVehicleNumberPlateText(vehicle)
	local vehicleProps = ESX.Game.GetVehicleProperties(vehicle)


	ESX.TriggerServerCallback('esx_givecarkeys:requestPlayerCars', function(isOwnedVehicle)

		if isOwnedVehicle then

		local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

if closestPlayer == -1 or closestDistance > 3.0 then
  ESX.ShowNotification('No players nearby!')
else
  ESX.ShowNotification('Du hast deine Autoschlüssel weitergegeben!)
  TriggerServerEvent('esx_givecarkeys:setVehicleOwnedPlayerId', GetPlayerServerId(closestPlayer), vehicleProps)
end

		end
	end, GetVehicleNumberPlateText(vehicle))
end
end)