--// Put this in a LocalScript in StarterPlayerScripts or StarterGui

local NeonFrame = loadstring(game:HttpGet("YOUR_URL_HERE"))() -- Or require the module

local Window = NeonFrame:CreateWindow({
	Title = "NEON FRAME",
	Size = UDim2.new(0, 650, 0, 450)
})

--// Create Tabs
local MainTab = Window:CreateTab({Name = "Main", Icon = "rbxassetid://6031086173"})
local VisualsTab = Window:CreateTab({Name = "Visuals", Icon = "rbxassetid://6031086173"})
local SettingsTab = Window:CreateTab({Name = "Settings", Icon = "rbxassetid://6031086173"})

--// Add Elements to Main Tab
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

local Slider = MainTab:CreateSlider({
	Name = "Speed",
	Min = 0,
	Max = 100,
	Default = 50,
	Rounding = 0,
	Callback = function(value)
		print("Slider:", value)
	end
})

--// Add Elements to Visuals Tab
VisualsTab:CreateSection({Name = "ESP"})

VisualsTab:CreateDropdown({
	Name = "ESP Type",
	Options = {"Boxes", "Chams", "Skeleton", "Off"},
	Default = "Boxes",
	Callback = function(selected)
		print("Selected:", selected)
	end
})

VisualsTab:CreateColorPicker({
	Name = "ESP Color",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(color)
		print("Color:", color)
	end
})

--// Add Elements to Settings Tab
SettingsTab:CreateSection({Name = "CONFIG"})

SettingsTab:CreateTextBox({
	Name = "Username",
	Placeholder = "Enter username...",
	Callback = function(text, enterPressed)
		if enterPressed then
			print("Entered:", text)
		end
	end
})

SettingsTab:CreateLabel({
	Text = "Made with NeonFrame UI",
	Color = Color3.fromRGB(0, 255, 255),
	Alignment = Enum.TextXAlignment.Center
})
