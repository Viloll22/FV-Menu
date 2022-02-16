RegisterNetEvent("geisel")
AddEventHandler("geisel", function()
local player, distance = ESX.Game.GetClosestPlayer()
if distance ~= -1 and distance <= 3.0 then
	TriggerClientEvent("TakeHostage:syncTarget", targetSrc, source)
	takingHostage[source] = targetSrc
	takenHostage[targetSrc] = source
	end
end)