local uiOpen, executions, uniqueIdCounter = false, {}, 0

local function AddUniqueIdsToItems(items)
    for _, item in pairs(items) do
        item.uniqueId = "id_" .. uniqueIdCounter
        uniqueIdCounter = uniqueIdCounter + 1
        executions[item.uniqueId] = item.execute
        if item.items then
            AddUniqueIdsToItems(item.items)
        end
    end
    
    return items
end

local function RemoveExecuteFunctionsFromItems(items)
    for _, item in pairs(items) do
        if item.execute then
            item.execute = nil
        end
        if item.items then
            RemoveExecuteFunctionsFromItems(item.items)
        end
    end
    return items
end

RegisterCommand('openXMenu', function()
    if uiOpen then
        SendNUIMessage({ action = "toggle", state = false })
        SetNuiFocus(false, false)
        SetNuiFocusKeepInput(false)
        uiOpen = false
    else
        if #Config.Items == 0 then return; end
        
        SendNUIMessage({ action = "toggle", state = true })
        SetNuiFocus(true, true)
        SetCursorLocation(0.5, 0.5)
        SetNuiFocusKeepInput(Config.AllowMovement)
        uiOpen = true
    end
end, false)

RegisterKeyMapping('openXMenu', 'Open X-Menu', 'keyboard', Config.Keybind)

RegisterNUICallback('close', function()
    SetNuiFocus(false, false)
    uiOpen = false
end)

RegisterNUICallback('init', function(data, cb)
    Config.Items = AddUniqueIdsToItems(Config.Items)
    cb({ openKey = Config.Keybind, items = RemoveExecuteFunctionsFromItems(Config.Items), holdToShow = Config.HoldToShow})
end)

RegisterNUICallback('execute', function(data)
    if executions[data.uniqueId] then
        executions[data.uniqueId]()
    end
end)

if Config.AllowMovement then
    CreateThread(function()
        while true do
            if uiOpen then
                if Config.DisableMouseClicks then
                    DisableControlAction(0, 24, true)
                    DisableControlAction(0, 25, true)
                end
                if Config.DisableMouseMovement then
                    DisableControlAction(0, 1)
                    DisableControlAction(0, 2) 
                end
            end
            Wait(uiOpen and 0 or 1000)
        end
    end)
end
