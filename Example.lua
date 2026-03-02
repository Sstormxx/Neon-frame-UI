local NeonFrame = loadstring(game:HttpGet("YOUR_URL_HERE"))()

--// CREATE WINDOW
local Window = NeonFrame:CreateWindow({
    Title = "NEON FRAME",
    Size = UDim2.new(0, 650, 0, 450),
    ToggleKey = Enum.KeyCode.RightControl -- optional, defaults to RightControl
})

--// CREATE TABS
local MainTab = Window:CreateTab({Name = "Main"})
local VisualsTab = Window:CreateTab({Name = "Visuals"})
local SettingsTab = Window:CreateTab({Name = "Settings"})

--// CREATE NOTIFICATION
NeonFrame:Notify({
    Title = "Notification Title",
    Content = "This is the notification message content",
    Duration = 10, -- seconds, 0 = infinite
    Type = "Success", -- "Info", "Success", "Error", "Warning"
    ButtonText = "Okay!",
    Callback = function()
        print("Notification closed!")
    end
})

--// MAIN TAB ELEMENTS
MainTab:CreateSection({Name = "GENERAL"})

MainTab:CreateButton({
    Name = "Click Me!",
    Callback = function()
        print("Button clicked!")
    end
})

local Toggle = MainTab:CreateToggle({
    Name = "Enable Feature",
    Default = false,
    Callback = function(value)
        print("Toggle:", value)
    end
})

-- Toggle methods:
Toggle:Set(true)  -- Set to true
Toggle:Set(false) -- Set to false
local state = Toggle:Get() -- Get current state (true/false)

local Slider = MainTab:CreateSlider({
    Name = "Speed",
    Min = 0,
    Max = 100,
    Default = 50,
    Rounding = 0, -- decimal places
    Callback = function(value)
        print("Slider:", value)
    end
})

-- Slider methods:
Slider:Set(75)  -- Set to 75
local val = Slider:Get() -- Get current value (number)

--// VISUALS TAB ELEMENTS
VisualsTab:CreateSection({Name = "ESP"})

VisualsTab:CreateDropdown({
    Name = "ESP Type",
    Options = {"Boxes", "Chams", "Skeleton", "Off"},
    Default = "Boxes",
    Callback = function(selected)
        print("Selected:", selected)
    end
})

-- Dropdown methods (if you saved the return):
-- Dropdown:Set("Chams")  -- Select "Chams"
-- local sel = Dropdown:Get() -- Get current selection (string)

--// SETTINGS TAB ELEMENTS
SettingsTab:CreateSection({Name = "CONFIG"})

SettingsTab:CreateTextBox({
    Name = "Username",
    Default = "", -- starting text
    Placeholder = "Enter username...", -- grey hint text
    NumbersOnly = false, -- set to true to only allow numbers
    Callback = function(text, enterPressed)
        if enterPressed then
            print("Entered:", text)
        end
    end
})

-- TextBox methods (if you saved the return):
-- TextBox:Set("Hello")  -- Set text
-- local txt = TextBox:Get() -- Get current text (string)

SettingsTab:CreateLabel({
    Text = "Made with NeonFrame UI",
    Color = Color3.fromRGB(0, 255, 255), -- optional, defaults to grey
    Size = 13, -- optional text size
    Bold = false, -- optional, set to true for bold
    Alignment = Enum.TextXAlignment.Center -- optional, Left/Center/Right
})

-- Label methods (if you saved the return):
-- Label:Set("New text")  -- Update text
-- local lbl = Label:Get() -- Get current text (string)
