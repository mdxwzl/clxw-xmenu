Config = {
    
    Keybind = "X",
    AllowMovement = true,
    DisableMouseClicks = true, -- prevents accidentally hitting or aiming at someone if AllowMovement is enabled
    DisableMouseMovement = true, -- prevents looking around while ui is open if AllowMovement is enabled
    HoldToShow = true,
    
    Items = {
        {
            label = "Event",
            icon = "streamline:business-handshake-solid", -- ICON SOURCE: https://icon-sets.iconify.design/
            execute = function()
                TriggerEvent('esx_ambulancejob:revive')
            end,
            close = true, -- close menu after execution
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
                    end,
                    close = true,
                },
                {
                    label = "Event",
                    icon = "streamline:business-handshake-solid",
                    execute = function()
                        TriggerEvent('esx_ambulancejob:revive')
                    end,
                    close = true,
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
                            end,
                            close = true,
                        },
                        {
                            label = "Event",
                            icon = "streamline:business-handshake-solid",
                            execute = function()
                                TriggerEvent('esx_ambulancejob:revive')
                            end,
                            close = true,
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
            end,
            close = true,
        },
        {
            label = "Event",
            icon = "streamline:business-handshake-solid",
            execute = function()
                TriggerEvent('esx_ambulancejob:revive')
            end,
            close = true,
        },
        {
            label = "Event",
            icon = "streamline:business-handshake-solid",
            execute = function()
                TriggerEvent('esx_ambulancejob:revive')
            end,
            close = true,
        },
        {
            label = "Event",
            icon = "streamline:business-handshake-solid",
            execute = function()
                TriggerEvent('esx_ambulancejob:revive')
            end,
            close = true,
        },
    },
}
