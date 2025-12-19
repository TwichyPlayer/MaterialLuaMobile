--[[
    MUI Enhanced Example
    Dimensions: 170x180
    Theme: DarkBlue
]]

local Material = loadstring(game:HttpGet("https://your-url-here.com/Module.lua"))()

local Window = Material.Load({
    Title = "MUI Enhanced",
    Style = 3,
    SizeX = 170,
    SizeY = 180,
    Theme = "DarkBlue",
    ColorOverrides = {
        MainFrame = Color3.fromRGB(20, 20, 30)
    }
})

local MainTab = Window.New({ Title = "Main" })
local SettingsTab = Window.New({ Title = "Settings" })

MainTab.Label({
    Text = "Player Controls"
})

local KillBtn = MainTab.Button({
    Text = "Kill Character",
    Callback = function()
        local Char = game.Players.LocalPlayer.Character
        if Char then Char:BreakJoints() end
    end,
    Menu = {
        Info = function(self)
            Window.Banner({ Text = "Resets your character." })
        end
    }
})

local GodToggle = MainTab.Toggle({
    Text = "God Mode",
    Callback = function(Value)
        print("God Mode:", Value)
    end,
    Enabled = false
})

local SpeedSlider = MainTab.Slider({
    Text = "Walk Speed",
    Callback = function(Value)
        if game.Players.LocalPlayer.Character then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
    end,
    Min = 16,
    Max = 100,
    Def = 16
})

MainTab.ColorPicker({
    Text = "Accent Color",
    Default = Color3.fromRGB(0, 120, 215),
    Callback = function(Value)
        print("New Color:", Value)
    end
})

SettingsTab.Keybind({
    Text = "Toggle UI",
    Default = Enum.KeyCode.RightControl,
    Callback = function(Key)
        print("Keybind set to:", Key.Name)
    end
})

SettingsTab.TextField({
    Text = "Config Name",
    Callback = function(Value)
        print("Saved as:", Value)
    end
})