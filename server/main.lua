local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('TxM-LucRac:server:startDumpsterTimer', function(dumpster)
    startTimer(source, dumpster)
end)

RegisterNetEvent('TxM-LucRac:server:recieveItem', function(item, itemAmount)
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)
    ply.Functions.AddItem(item, itemAmount)
end)

function startTimer(id, object)
    local timer = Config.Timer * 1000
    while timer > 0 do
        Wait(100)
        timer = timer - 10
        if timer == 0 then
            TriggerClientEvent('TxM-LucRac:server:removeDumpster', id, object)
        end
    end
end