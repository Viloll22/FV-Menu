RegisterNetEvent("fesseln")
AddEventHandler("fesseln", function()
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

    if closestPlayer == -1 or closestDistance > 2.0 then
        exports.pNotify:SendNotification({text = "Yakınında Oyuncu Yok!", type = "error", timeout = math.random(1000, 4000)})
    else
        TriggerServerEvent('esx_policejob:handcuff', GetPlayerServerId(closestPlayer))
    end	
end)