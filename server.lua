-- /ref for police
-- Made by Crishe

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('ref:reference')
AddEventHandler('ref:reference', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	if xPlayer.job.name == 'police' then
		TriggerClientEvent("ref:addBlip", -1, tonumber(_source))
	else
		TriggerClientEvent('esx:showNotification', _source, 'You are not police.')
	end
end)