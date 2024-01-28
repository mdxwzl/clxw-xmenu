Config = {
    Keybind = 'X',

    AllowMovement = true,
    DisableLeftClick = true, -- prevents accidentally hitting someone if allowMovement is enabled
    HoldToShow = true,

    --- ICON SOURCE: https://icon-sets.iconify.design/
    Items = {
        {
            label = "Event",
            icon = "streamline:business-handshake-solid",
            execute = function()
                TriggerEvent('esx_ambulancejob:revive')
            end
        },
        {
            label = "Submenu",
            icon = "streamline:business-handshake-solid",
            execute = function()
                TriggerEvent('esx_ambulancejob:revive')
            end,
            sub = true,
            items = {
                {
                    label = "Event",
                    icon = "streamline:business-handshake-solid",
                    execute = function()
                        TriggerEvent('esx_ambulancejob:revive')
                    end
                },
                {
                    label = "Event",
                    icon = "streamline:business-handshake-solid",
                    execute = function()
                        TriggerEvent('esx_ambulancejob:revive')
                    end
                },
                {
                    label = "Submenu in Submenu",
                    icon = "streamline:business-handshake-solid",
                    execute = function()
                        TriggerEvent('esx_ambulancejob:revive')
                    end,
                    sub = true,
                    items = {
                        {
                            label = "Event",
                            icon = "streamline:business-handshake-solid",
                            execute = function()
                                TriggerEvent('esx_ambulancejob:revive')
                            end
                        },
                        {
                            label = "Event",
                            icon = "streamline:business-handshake-solid",
                            execute = function()
                                TriggerEvent('esx_ambulancejob:revive')
                            end
                        },
                    }
                },
            }
        },
        {
            label = "Event",
            icon = "streamline:business-handshake-solid",
            execute = function()
                TriggerEvent('esx_ambulancejob:revive')
            end
        },
        {
            label = "Event",
            icon = "streamline:business-handshake-solid",
            execute = function()
                TriggerEvent('esx_ambulancejob:revive')
            end
        },
        {
            label = "Event",
            icon = "streamline:business-handshake-solid",
            execute = function()
                TriggerEvent('esx_ambulancejob:revive')
            end
        },
        {
            label = "Event",
            icon = "streamline:business-handshake-solid",
            execute = function()
                TriggerEvent('esx_ambulancejob:revive')
            end
        },
    }
}