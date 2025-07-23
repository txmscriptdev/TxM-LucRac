
local QBCore = exports['qb-core']:GetCoreObject()
local searched = {} -- { [entity] = expireTime }
local COOLDOWN = Config.Timer or 500 -- giây
local canSearch = true

RegisterNetEvent('TxM-LucRac:client:searchtrash', function()
    if not canSearch then return end

    local ped = PlayerPedId()
    local pos = GetEntityCoords(ped)

    for i = 1, #Config.Objects do
        local dumpster = GetClosestObjectOfType(pos.x, pos.y, pos.z, 1.0, Config.Objects[i], false, false, false)

        if dumpster ~= 0 then
            local dumpPos = GetEntityCoords(dumpster)
            local dist = #(pos - dumpPos)

            if dist < 2.0 then
                local entity = dumpster
                local now = GetGameTimer()
                local expireTime = searched[entity]

                if expireTime and now < expireTime then
                    local remaining = math.floor((expireTime - now) / 1000)
                    QBCore.Functions.Notify('Thùng rác này đã bị lục. Còn ' .. remaining .. ' giây mới có thể lục lại.', 'error')
                else
                    -- Lục thùng rác được
                    searched[entity] = now + (COOLDOWN * 1000)
                    TriggerEvent('TxM-LucRac:client:progressbar')
                    TriggerServerEvent('TxM-LucRac:server:startDumpsterTimer', entity)
                end
            end
        end
    end
end)
RegisterNetEvent('TxM-LucRac:server:removeDumpster', function(object)
    for i = 1, #searched do
        if searched[i] == object then
            table.remove(searched, i)
        end
    end
end)

RegisterNetEvent('TxM-LucRac:client:progressbar', function()
    local itemIndex = math.random(#Config.RewardsSmall)
    local reward = Config.RewardsSmall[itemIndex]
    local itemName = reward.item
    local itemAmount = math.random(reward.minAmount, reward.maxAmount)
    local itemInfo = QBCore.Shared.Items[itemName]

    QBCore.Functions.Progressbar("trash_find", "Đang lục thùng rác...", math.random(3000, 5000), false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "amb@prop_human_bum_bin@idle_b",
        anim = "idle_d",
        flags = 16,
    }, {}, {}, function() -- Done
        StopAnimTask(PlayerPedId(), "amb@prop_human_bum_bin@idle_b", "idle_d", 1.0)
        TriggerServerEvent('TxM-LucRac:server:recieveItem', itemName, itemAmount)
        QBCore.Functions.Notify("Bạn vừa nhận được " .. itemInfo.label, "success")
        TriggerEvent('inventory:client:ItemBox', itemInfo, "add")
    end, function()
        StopAnimTask(PlayerPedId(), "amb@prop_human_bum_bin@idle_b", "idle_d", 1.0)
        QBCore.Functions.Notify("Đã huỷ lục thùng rác", "error")
    end)
end)

CreateThread(function()
    exports['qb-target']:AddTargetModel(Config.Objects, {
        options = {
            {
                type = "client",
                event = "TxM-LucRac:client:openTrash",
                icon = "fas fa-trash",
                label = "Mở thùng rác",
                order = 1,
            },
            {
                type = "client",
                event = "TxM-LucRac:client:searchtrash",
                icon = "fas fa-search",
                label = "Lục thùng rác",
                order = 2,
            },
        },
        distance = 2.1
    })
end)
