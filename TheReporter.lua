-- Gui to Lua
-- Version: 3.2

-- Instances:

local SpamGui = Instance.new("ScreenGui")
local thegoodstufflol = Instance.new("Frame")
local UCornerI = Instance.new("UICorner")
local TopPart = Instance.new("TextLabel")
local UCornerI_2 = Instance.new("UICorner")
local CloseBtn = Instance.new("TextButton")
local ReportBtn = Instance.new("TextButton")
local UCornerI_3 = Instance.new("UICorner")
local UserText = Instance.new("TextBox")
local UCornerI_4 = Instance.new("UICorner")

--Properties:

SpamGui.Name = "SpamGui"
SpamGui.Parent = game.CoreGui
SpamGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
SpamGui.ResetOnSpawn = false

thegoodstufflol.Name = "thegoodstufflol"
thegoodstufflol.Parent = SpamGui
thegoodstufflol.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
thegoodstufflol.BorderColor3 = Color3.fromRGB(0, 0, 0)
thegoodstufflol.BorderSizePixel = 0
thegoodstufflol.Position = UDim2.new(0.441118747, 0, 0.412220299, 0)
thegoodstufflol.Size = UDim2.new(0.117762513, 0, 0.1746988, 0)

UCornerI.Name = "UCornerI"
UCornerI.Parent = thegoodstufflol

TopPart.Name = "TopPart"
TopPart.Parent = thegoodstufflol
TopPart.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
TopPart.BorderColor3 = Color3.fromRGB(0, 0, 0)
TopPart.BorderSizePixel = 0
TopPart.Size = UDim2.new(1, 0, 0.182266012, 0)
TopPart.Font = Enum.Font.SourceSans
TopPart.Text = "SpamReporter"
TopPart.TextColor3 = Color3.fromRGB(255, 255, 255)
TopPart.TextScaled = true
TopPart.TextSize = 14.000
TopPart.TextWrapped = true
TopPart.TextXAlignment = Enum.TextXAlignment.Left

UCornerI_2.Name = "UCornerI"
UCornerI_2.Parent = TopPart

CloseBtn.Name = "CloseBtn"
CloseBtn.Parent = thegoodstufflol
CloseBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.BackgroundTransparency = 1.000
CloseBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseBtn.BorderSizePixel = 0
CloseBtn.Position = UDim2.new(0.883333325, 0, 0, 0)
CloseBtn.Size = UDim2.new(0.116666667, 0, 0.182266012, 0)
CloseBtn.Font = Enum.Font.SourceSans
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 0, 0)
CloseBtn.TextScaled = true
CloseBtn.TextSize = 14.000
CloseBtn.TextWrapped = true

ReportBtn.Name = "ReportBtn"
ReportBtn.Parent = thegoodstufflol
ReportBtn.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
ReportBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
ReportBtn.BorderSizePixel = 0
ReportBtn.Position = UDim2.new(0.0666666701, 0, 0.615763545, 0)
ReportBtn.Size = UDim2.new(0.866666675, 0, 0.251231521, 0)
ReportBtn.Font = Enum.Font.SourceSans
ReportBtn.Text = "Spam!"
ReportBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ReportBtn.TextScaled = true
ReportBtn.TextSize = 14.000
ReportBtn.TextWrapped = true

UCornerI_3.Name = "UCornerI"
UCornerI_3.Parent = ReportBtn

UserText.Name = "UserText"
UserText.Parent = thegoodstufflol
UserText.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
UserText.BorderColor3 = Color3.fromRGB(0, 0, 0)
UserText.BorderSizePixel = 0
UserText.Position = UDim2.new(0.0666666701, 0, 0.300492615, 0)
UserText.Size = UDim2.new(0.866666675, 0, 0.246305421, 0)
UserText.ClearTextOnFocus = false
UserText.Font = Enum.Font.SourceSans
UserText.PlaceholderText = "Username"
UserText.Text = ""
UserText.TextColor3 = Color3.fromRGB(255, 255, 255)
UserText.TextScaled = true
UserText.TextSize = 14.000
UserText.TextWrapped = true

UCornerI_4.Name = "UCornerI"
UCornerI_4.Parent = UserText

-- Scripts:

local function ODKI_fake_script() -- thegoodstufflol.Drag 
	local script = Instance.new('LocalScript', thegoodstufflol)

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(ODKI_fake_script)()
local function YKMI_fake_script() -- thegoodstufflol.Function 
	local script = Instance.new('LocalScript', thegoodstufflol)

	local close = script.Parent.CloseBtn
	local report = script.Parent.ReportBtn
	local text = script.Parent.UserText
	
	close.MouseButton1Click:Connect(function()
		script.Parent:TweenSize(UDim2.new({0.006, 0},{0.013, 0}), Enum.EasingDirection.In, Enum.EasingStyle.Back, 2)
		wait(2)
		script.Parent.Parent:Destroy()
	end)
	
	report.MouseButton1Click:Connect(function()
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "SpamReporter",
			Text = "Started spamming!"
		})
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("Players"):ReportAbuse(text.Text, "Bullying", "He said a bad word")
		wait(1)
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "SpamReporter",
			Text = "Finished spamming!"
		})
	end)
end
coroutine.wrap(YKMI_fake_script)()
