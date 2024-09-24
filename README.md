# clxw-xmenu for Fivem - README

![](https://img.shields.io/github/contributors/clxw1337/clxw-xmenu?logo=github)
![](https://img.shields.io/github/v/release/clxw1337/clxw-xmenu?logo=github) 

<img src="https://cdn.lunaDrive.io/files/4QBAT9FQ">

### Introduction
---
clxw-xmenu is a versatile and customizable menu system for FiveM servers. It allows server administrators to create a dynamic and interactive menu with multiple options and submenus. The menu is easily accessible and can be configured to cater to various server needs.

### Features
- **Keybind Trigger**: Default keybind is set to 'X', which can be pressed to open the main menu.
- **Allow Movement**: Players can move around while the menu is open.
- **Disable Left Click**: Prevents accidental actions like hitting someone when the menu is open and movement is allowed.
- **Hold to Show**: The menu will display as long as the keybind is held.
- **Submenu Support**: Unlimited nesting of submenus for organizing multiple actions.
- **Custom Icons**: Each menu item can have its own icon for easy identification.
- **Event Execution**: Each menu item has its own execution function, so you can customize it to your needs.
- **Customizable Design**: You can customize every color of the UI by simply changing the color in the CSS Config!

---
### Item Example
```
{
    label = "Your Label",
    icon = "streamline:your-icon",
    execute = function()
        -- Your custom code or event trigger
    end
}
```

### Submenu Example
```
{
    label = "Submenu Label",
    icon = "streamline:your-icon",
    sub = true,
    items = {
        -- Submenu items
    }
}
```

## Usage
- Press the configured keybind ('X' by default) to open the menu.
- Navigate through the options using the mouse or keyboard.
- Click on an option to execute its associated action or to open a submenu.
- Hold the keybind if `HoldToShow` is enabled, or release it to close the menu.

## Customization
- Icons: Customize icons using the icon sets of [Iconify](https://icon-sets.iconify.design).
- Execution: Attach custom functions to menu options for specific actions.
- Submenus: Organize complex actions into submenus for better accessibility and user experience.

## Notes
- Ensure that the keybind does not conflict with other in-game keybinds.
- Test the menu and submenus thoroughly to ensure all actions are executing correctly.
- The menu can be expanded with more advanced features depending on server requirements.
