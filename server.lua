ESX             = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('drp_hospital_ai:billing')
AddEventHandler('drp_hospital_ai:billing', function()
    local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	local text_string = Config.text
			xPlayer.removeBank(Config.price)
		TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'success', text = (text_string), length = 4000})
end)
