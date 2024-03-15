Config = {
    Keybind = 'X',

    AllowMovement = true,
    DisableMouseClicks = true, -- prevents accidentally hitting or aiming at someone if allowMovement is enabled
    DisableMouseMovement = true, -- prevents looking around while ui is open if allowMovement is enabled
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
