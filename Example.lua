local NeonFrame = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sstormxx/Neon-frame-UI/refs/heads/main/UI.lua"))()

--// CREATE WINDOW
local Window = NeonFrame.CreateWindow({
	Title = "MY SCRIPT",
	Size = UDim2.new(0, 600, 0, 400)
})

--// CREATE A TAB
local MainTab = Window.CreateTab({Name = "Main"})
local SettingsTab = Window.CreateTab({Name = "Settings"})

--// CREATE NOTIFICATION
NeonFrame.Notify({
	Title = "Title",
	Content = "Message",
	Duration = 10,
	Type = "Success",
	ButtonText = "Okay!",
	Callback = function()
		print("Closed!")
	end
})

--// CREATE SECTION
MainTab.CreateSection({Name = "FEATURES"})

--// CREATE BUTTON
MainTab.CreateButton({
	Name = "Click Me",
	Callback = function()
		print("Clicked!")
	end
})

--// CREATE TOGGLE
local Toggle = MainTab.CreateToggle({
	Name = "Auto Farm",
	Default = false,
	Callback = function(value)
		print("Toggle:", value)
	end
})



--// CREATE SLIDER
local Slider = MainTab.CreateSlider({
	Name = "Speed",
	Min = 0,
	Max = 100,
	Default = 50,
	Rounding = 0,
	Callback = function(value)
		print("Value:", value)
	end
})



--// CREATE DROPDOWN
local Dropdown = MainTab.CreateDropdown({
	Name = "Select",
	Options = {"A", "B", "C"},
	Default = "A",
	Callback = function(selected)
		print("Selected:", selected)
	end
})



--// CREATE TEXTBOX
local TextBox = MainTab.CreateTextBox({
	Name = "Input",
	Default = "",
	Placeholder = "Type here...",
	NumbersOnly = false,
	Callback = function(text, enterPressed)
		print("Text:", text)
	end
})


--// CREATE LABEL
local Label = MainTab.CreateLabel({
	Text = "Hello World",
	Color = Color3.fromRGB(0, 255, 255),
	Size = 14,
	Bold = false,
	Alignment = Enum.TextXAlignment.Left
})


| Function         | Parameters                                                                                            |
| ---------------- | ----------------------------------------------------------------------------------------------------- |
| `CreateWindow`   | `Title` (string), `Size` (UDim2), `ToggleKey` (Enum.KeyCode, optional)                                |
| `Notify`         | `Title`, `Content`, `Duration`, `Type` ("Info"/"Success"/"Error"/"Warning"), `ButtonText`, `Callback` |
| `CreateTab`      | `Name` (string)                                                                                       |
| `CreateSection`  | `Name` (string)                                                                                       |
| `CreateButton`   | `Name`, `Callback` (function)                                                                         |
| `CreateToggle`   | `Name`, `Default` (bool), `Callback` (function)                                                       |
| `CreateSlider`   | `Name`, `Min`, `Max`, `Default`, `Rounding`, `Callback`                                               |
| `CreateDropdown` | `Name`, `Options` (table), `Default`, `Callback`                                                      |
| `CreateTextBox`  | `Name`, `Default`, `Placeholder`, `NumbersOnly` (bool), `Callback`                                    |
| `CreateLabel`    | `Text`, `Color`, `Size`, `Bold` (bool), `Alignment`                                                   |
