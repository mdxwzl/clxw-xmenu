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
    if #Config.Items == 0 then return; end
        
    SendNUIMessage({ action = "toggle", state = true })
    SetNuiFocus(true, true)
    SetNuiFocusKeepInput(Config.AllowMovement)
    uiOpen = true
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

if Config.DisableLeftClick then
    CreateThread(function()
        while true do
            if uiOpen then
                DisableControlAction(0, 24, true)
            end
            
            Wait(uiOpen and 0 or 1000)
        end
    end)
end