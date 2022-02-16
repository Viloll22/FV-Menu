ESX                     = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

RegisterNetEvent('fv:tshirt')
AddEventHandler('fv:tshirt', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
	

		local clothesSkin = {
		['tshirt_1'] = 15, ['tshirt_2'] = 0,
		['torso_1'] = 15, ['torso_2'] = 0,
		['arms'] = 15, ['arms_2'] = 0
		}
		TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
	end)
	exports['mythic_notify']:SendAlert('error', 'Du hast dein T-Shirt ausgezogen!')

end)
RegisterNetEvent('fv:hose')
AddEventHandler('fv:hose', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
	

		local clothesSkin = {
		['pants_1'] = 21, ['pants_2'] = 0
		}
		TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
	end)
	exports['mythic_notify']:SendAlert('error', 'Du hast deine Hose ausgezogen!')
end)

RegisterNetEvent('fv:schuhe')
AddEventHandler('fv:schuhe', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
	

		local clothesSkin = {
		['shoes_1'] = 34, ['shoes_2'] = 0
		}
		TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
	end)
	exports['mythic_notify']:SendAlert('error', 'Du hast deine Schuhe ausgezogen!')
end)

RegisterNetEvent('fv:helm')
AddEventHandler('fv:helm', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
	

		local clothesSkin = {
		['helmet_1'] = 121, ['helmet_2'] = 0
		}
		TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
	end)
	exports['mythic_notify']:SendAlert('error', 'Du hast dein Helm ausgezogen!')
end)

RegisterNetEvent('fv:maske')
AddEventHandler('fv:maske', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
	

		local clothesSkin = {
		['mask_1'] = 120, ['mask_2'] = 0
		}
		TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
	end)
	exports['mythic_notify']:SendAlert('error', 'Du hast dein Helm ausgezogen!')
end)

RegisterNetEvent('fv:brille')
AddEventHandler('fv:brille', function()
	TriggerEvent('skinchanger:getSkin', function(skin)
	

		local clothesSkin = {
		['glasses_1'] = 6, ['glasses_2'] = 0
		}
		TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
	end)
	exports['mythic_notify']:SendAlert('error', 'Du hast dein Helm ausgezogen!')
end)


function OpenActionMenuInteraction(target)

	local elements = {}

	table.insert(elements, {label = ('put on clothes'), value = 'ubie'})
	table.insert(elements, {label = ('remove shirt'), value = 'tul'})
	table.insert(elements, {label = ('remove pants'), value = 'spo'})
    table.insert(elements, {label = ('take off shoes'), value = 'but'})
    table.insert(elements, {label = ('take off helmet'), value = 'hel'})
    table.insert(elements, {label = ('take off mask'), value = 'mas'})
    table.insert(elements, {label = ('take off glasses'), value = 'gla'})
  		ESX.UI.Menu.CloseAll()	


	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'action_menu',
		{
			title    = ('Clothes'),
			align    = 'top-left',
			elements = elements
		},
    function(data, menu)



		
		if data.current.value == 'ubie' then			
		ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
		    TriggerEvent('skinchanger:loadSkin', skin)
		end)
		ESX.UI.Menu.CloseAll()	
		elseif data.current.value == 'tul' then
		TriggerEvent('fv:tshirt')
		ESX.UI.Menu.CloseAll()	
		elseif data.current.value == 'spo' then
		TriggerEvent('fv:hose')
		ESX.UI.Menu.CloseAll()	
		elseif data.current.value == 'but' then
		TriggerEvent('fv:schuhe')
        ESX.UI.Menu.CloseAll()	
        elseif data.current.value == 'hel' then
		TriggerEvent('fv:helm')
        ESX.UI.Menu.CloseAll()	
        elseif data.current.value == 'mas' then
		TriggerEvent('fv:maske')
        ESX.UI.Menu.CloseAll()	
        elseif data.current.value == 'mas' then
		TriggerEvent('fv:brille')
		ESX.UI.Menu.CloseAll()	
	  end
	  end
	end)


end

RegisterNetEvent('fizz:loadskin')
AddEventHandler('fizz:loadskin', function()
    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
        TriggerEvent('skinchanger:loadSkin', skin)
	end)
	exports['mythic_notify']:SendAlert('success', 'Du hast deine Klamotten angezogen!')
end)		
	
-- Citizen.CreateThread(function()
--   while true do
--     Citizen.Wait(0)
--     if IsControlJustReleased(0, 57) and not ESX.UI.Menu.IsOpen('default', GetCurrentResourceName(), 'action_menu') then
-- 		OpenActionMenuInteraction()
--     end
--   end
-- end)

local cantaDurum = true
local ayakkabiDurum = true
local pantolonDurum = true
local tisortDurum = true

local borsa = nil
local ayakkabi = nil
local ayakkabi2 = nil
local pantolon = nil
local pantolon2 = nil
local tisort = nil
local tisort2 = nil
local torso = nil
local torso2 = nil
local arms = nil
local arms2 = nil
local decals = nil
local decals2 = nil

"