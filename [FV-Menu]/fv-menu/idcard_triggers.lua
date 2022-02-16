ESX = nil
interactionDistance = 3.5
lockDistance = 25 
engineoff = false
saved = false
controlsave_bool = false
IsEngineOn = true
Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(5)
  end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)





RegisterNetEvent('license:ps')
AddEventHandler('license:ps', function()
local player, distance = ESX.Game.GetClosestPlayer()
	TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()))
end)
RegisterNetEvent('license:fs')
AddEventHandler('license:fs', function()
local player, distance = ESX.Game.GetClosestPlayer()
	TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'driver')
end)
RegisterNetEvent('license:ws')
AddEventHandler('license:ws', function()
local player, distance = ESX.Game.GetClosestPlayer()
	TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'weapon')
end)

RegisterNetEvent('license:pz')
AddEventHandler('license:pz', function()
    local player, distance = ESX.Game.GetClosestPlayer()	

if distance ~= -1 and distance <= 3.0 then
  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player))
else
  ESX.ShowNotification('Keine Person in der Nähe!')
    end
end)

RegisterNetEvent('license:fz')
AddEventHandler('license:fz', function()
    local player, distance = ESX.Game.GetClosestPlayer()

if distance ~= -1 and distance <= 3.0 then
  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'driver')
else
  ESX.ShowNotification('Keine Person in der Nähe!')
    end
end)

RegisterNetEvent('license:wz')
AddEventHandler('license:wz', function()
    local player, distance = ESX.Game.GetClosestPlayer()

if distance ~= -1 and distance <= 3.0 then
  TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'weapon')
else
  ESX.ShowNotification('Keine Person in der Nähe!')
    end
end)


RegisterNetEvent('st:emsRevive')
AddEventHandler('st:emsRevive', function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    local ReviveReward = 1000

  if closestPlayer == -1 or closestDistance > 1.0 then
        TriggerServerEvent('esx_ambulancejob:removeItem', 'medikit')
        TriggerServerEvent('esx_ambulancejob:revive', GetPlayerServerId(closestPlayer))
     else
      exports['mythic_notify']:SendAlert('error', 'Kişinin kritik durumu yok', 4000)
     end
end)