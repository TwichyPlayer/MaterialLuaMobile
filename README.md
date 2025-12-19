# Material Lua - Enhanced MUI Edition

A fully mobile-compatible, Material Design optimized UI library for Roblox executors.

## Features
- **Mobile Ready:** Frame dragging, sliders, and color pickers work perfectly with touch.
- **MUI Design:** Ripple effects, rounded corners, and Roboto fonts.
- **Global Input:** Sliders do not stick to the mouse/finger; they release globally.
- **New Themes:** DarkBlue, DarkTeal, Void, MUI.

## Usage Guide

### 1. Load the Library
local Material = loadstring(game:HttpGet("LINK_TO_MODULE"))()

### 2. Create Window
local UI = Material.Load({
    Title = "My Script",
    Style = 3,
    SizeX = 300,
    SizeY = 400,
    Theme = "DarkBlue" -- Light, Dark, Mocha, Aqua, Jester, DarkBlue, DarkTeal, Void, MUI
})

### 3. Create Tab
local Main = UI.New({ Title = "Main" })

### 4. Components

-- Label
Main.Label({ Text = "Section Title" })

-- Button
Main.Button({
    Text = "Click Me",
    Callback = function() print("Clicked") end
})

-- Toggle
Main.Toggle({
    Text = "Auto Farm",
    Enabled = false,
    Callback = function(State) print(State) end
})

-- Slider
Main.Slider({
    Text = "Speed",
    Min = 16,
    Max = 100,
    Def = 50,
    Callback = function(Val) print(Val) end
})

-- Color Picker
Main.ColorPicker({
    Text = "Theme Color",
    Default = Color3.new(1,1,1),
    Callback = function(Col) print(Col) end
})

-- Keybind (New!)
Main.Keybind({
    Text = "Menu Key",
    Default = Enum.KeyCode.RightControl,
    Callback = function(Key) print(Key) end
})

-- Text Field
Main.TextField({
    Text = "Username",
    Callback = function(Text) print(Text) end
})

-- Dropdown
Main.Dropdown({
    Text = "Select Mode",
    Options = {"Legit", "Rage"},
    Callback = function(Option) print(Option) end
})