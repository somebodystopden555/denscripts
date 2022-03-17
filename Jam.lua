-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(189, 155, 233)
Frame.Position = UDim2.new(0.181682795, 0, 0.398773015, 0)
Frame.Size = UDim2.new(0, 180, 0, 180)
Frame.Active = true
Frame.Draggable = true

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Frame

UICorner_2.CornerRadius = UDim.new(5, 0)
UICorner_2.Parent = TextButton

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(214, 198, 250)
TextButton.Position = UDim2.new(0.22, 0, 0.38, 0)
TextButton.Size = UDim2.new(0, 100, 0, 50)
TextButton.Font = Enum.Font.SciFi
TextButton.Text = "DUPE"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 20.000
TextButton.MouseButton1Down:connect(function()
	local lib = require(game.ReplicatedStorage:WaitForChild('Framework'):WaitForChild('Library'))

	local mybanks = lib.Network.Invoke("get my banks")
	local BankID = mybanks[1]['BUID']
	print("hello")
	workspace.__THINGS.__REMOTES.MAIN:FireServer("b", "bank withdraw")
	local function Bank(id)
		local self = {}
		function self:withdraw(pets, gems)
			local A_1 = 
				{
					[1] = id, 
					[2] = 
					{
					}, 
					[3] = gems
				}   
			local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"]["bank withdraw"]
			Event:InvokeServer(A_1)
		end
		return self
	end
	--//
	local bankid =  BankID--bank
	for i=1, 1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 do
		Bank(bankid):withdraw({}, 1)
		print('withdrawed 1 gem DEN #1')
		wait(2)

	end

end)