--[[
wasd is a cool interface that shows when you click w, a, s and d. it also can detect your cps ( clicks per second )
based off of lunar client.
]]

local wasdmodule = {}

local wasd = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local CPS = Instance.new("TextLabel")
local UIGradient = Instance.new("UIGradient")
local D = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")
local S = Instance.new("TextLabel")
local UIGradient_3 = Instance.new("UIGradient")
local W = Instance.new("TextLabel")
local UIGradient_4 = Instance.new("UIGradient")
local A = Instance.new("TextLabel")
local UIGradient_5 = Instance.new("UIGradient")


wasd.Name = "wasd"
wasd.Parent = game:GetService("CoreGui")
wasd.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = wasd
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.856390834, 0, 0.8181476, 0)
Frame.Size = UDim2.new(0, 159, 0, 118)

CPS.Name = "CPS"
CPS.Parent = Frame
CPS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CPS.BackgroundTransparency = 1.000
CPS.Position = UDim2.new(-0.396012962, 0, 0.628412008, 0)
CPS.Size = UDim2.new(0, 67, 0, 25)
CPS.Font = Enum.Font.Unknown
CPS.Text = "0 CPS"
CPS.TextColor3 = Color3.fromRGB(230, 230, 230)
CPS.TextScaled = true
CPS.TextSize = 14.000
CPS.TextWrapped = true

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 250, 213)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(46, 199, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(250, 150, 150))}
UIGradient.Offset = Vector2.new(-1, 0)
UIGradient.Parent = CPS

D.Name = "D"
D.Parent = Frame
D.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
D.BackgroundTransparency = 0.700
D.BorderSizePixel = 0
D.Position = UDim2.new(0.652649462, 0, 0.423728824, 0)
D.Size = UDim2.new(0, 49, 0, 50)
D.Font = Enum.Font.SourceSansLight
D.Text = "d"
D.TextColor3 = Color3.fromRGB(229, 229, 229)
D.TextScaled = true
D.TextSize = 14.000
D.TextWrapped = true

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 250, 213)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(46, 199, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(250, 150, 150))}
UIGradient_2.Offset = Vector2.new(-1, 0)
UIGradient_2.Parent = D

S.Name = "S"
S.Parent = Frame
S.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
S.BackgroundTransparency = 0.700
S.BorderSizePixel = 0
S.Position = UDim2.new(0.340136021, 0, 0.423728824, 0)
S.Size = UDim2.new(0, 50, 0, 50)
S.Font = Enum.Font.SourceSansLight
S.Text = "s"
S.TextColor3 = Color3.fromRGB(229, 229, 229)
S.TextScaled = true
S.TextSize = 14.000
S.TextWrapped = true

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 250, 213)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(46, 199, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(250, 150, 150))}
UIGradient_3.Offset = Vector2.new(-1, 0)
UIGradient_3.Parent = S

W.Name = "W"
W.Parent = Frame
W.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
W.BackgroundTransparency = 0.700
W.BorderSizePixel = 0
W.Position = UDim2.new(0.340136021, 0, 7.4505806e-09, 0)
W.Size = UDim2.new(0, 50, 0, 50)
W.Font = Enum.Font.SourceSansLight
W.Text = "w"
W.TextColor3 = Color3.fromRGB(229, 229, 229)
W.TextScaled = true
W.TextSize = 14.000
W.TextWrapped = true

UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 250, 213)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(46, 199, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(250, 150, 150))}
UIGradient_4.Offset = Vector2.new(-1, 0)
UIGradient_4.Parent = W

A.Name = "A"
A.Parent = Frame
A.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
A.BackgroundTransparency = 0.700
A.BorderSizePixel = 0
A.Position = UDim2.new(0.0300079584, 0, 0.423728824, 0)
A.Size = UDim2.new(0, 49, 0, 50)
A.Font = Enum.Font.SourceSansLight
A.Text = "a"
A.TextColor3 = Color3.fromRGB(229, 229, 229)
A.TextScaled = true
A.TextSize = 14.000
A.TextWrapped = true

UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 250, 213)), ColorSequenceKeypoint.new(0.50, Color3.fromRGB(46, 199, 0)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(250, 150, 150))}
UIGradient_5.Offset = Vector2.new(-1, 0)
UIGradient_5.Parent = A

local function EZXZCA_fake_script() 
	local script = Instance.new('LocalScript', Frame)

	
	local Players = game:GetService("Players")
	local TweenService = game:GetService("TweenService")
	local LocalPlayer = Players.LocalPlayer
	local Keys = {
		["W"] = script.Parent:WaitForChild("W"),
		["A"] = script.Parent:WaitForChild("A"),
		["S"] = script.Parent:WaitForChild("S"),
		["D"] = script.Parent:WaitForChild("D"),
		
		["CPS"] = script.Parent:WaitForChild("CPS")
		
		
	}
	local Mouse = LocalPlayer:GetMouse()
	local UIInput = game:GetService("UserInputService")
	local CPS = 0
	local function Clicked()
		CPS = CPS + 1
		script.Parent.CPS.Text = tostring(CPS).." CPS"
	end
	local function LightUpKey(v)
	
		local TweenFunction = TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0)
		
		local Color = Color3.fromRGB(120,120,120)
		TweenService:Create(v, TweenFunction, {BackgroundColor3 = Color}):Play()
		wait(0.15)
	
		local Color = Color3.fromRGB(0,0,0)
		TweenService:Create(v, TweenFunction, {BackgroundColor3 = Color}):Play()
	end
	local function LightUpHold(v,stat)
		local TweenFunction = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0)
		if stat == true then
			local Color = Color3.fromRGB(120,120,120)
			TweenService:Create(v, TweenFunction, {BackgroundColor3 = Color}):Play()
			wait(0.1)	
		elseif stat == false then
			local Color = Color3.fromRGB(0,0,0)
			TweenService:Create(v, TweenFunction, {BackgroundColor3 = Color}):Play()	
		end
	end
	
	
	
	local UIS = game:GetService("UserInputService")
	local allKeys = {}
	
	UIS.InputBegan:Connect(function(input, process)
		if process then return end
	
		allKeys[input.KeyCode] = true
	end)
	
	UIS.InputEnded:Connect(function(input, process)
		if process then return end
	
		allKeys[input.KeyCode] = false
	end)
	
	
	
	
	--[[
	UIInput.InputBegan:Connect(function(keycode)
	if keycode.KeyCode == Enum.KeyCode.W then
				LightUpKey(script.Parent.W)
		elseif keycode.KeyCode==  Enum.KeyCode.S then
			LightUpKey(script.Parent.S)
		elseif keycode.KeyCode==  Enum.KeyCode.A then
			LightUpKey(script.Parent.A)
		elseif keycode.KeyCode==  Enum.KeyCode.D then
			LightUpKey(script.Parent.D)
		end
	end)
	--]]
	Mouse.Button1Down:Connect(Clicked)
	coroutine.wrap(function()
		while true do
			wait(1.2)
			CPS = 0
			script.Parent.CPS.Text = tostring(CPS).." CPS"
		end
	end)()
	coroutine.wrap(function()
		while wait(0) do
			if allKeys[Enum.KeyCode.W] and not allKeys["Up"] then
				LightUpHold(Keys["W"],true)
			else
				LightUpHold(Keys["W"],false)
			end
			if allKeys[Enum.KeyCode.A] and not allKeys["Left"] then
				LightUpHold(Keys["A"],true)
			else
				LightUpHold(Keys["A"],false)
			end
			if allKeys[Enum.KeyCode.S] and not allKeys["Right"] then
				LightUpHold(Keys["S"],true)
			else
				LightUpHold(Keys["S"],false)
			end
			if allKeys[Enum.KeyCode.D]and not allKeys["Down"] then
				LightUpHold(Keys["D"],true)
			else
				LightUpHold(Keys["D"],false)
			end
		
			--[[
			if allKeys[Enum.KeyCode.Up]and not allKeys["W"] then
				LightUpHold(Keys["W"],true)
			else
				LightUpHold(Keys["W"],false)
			end
			if allKeys[Enum.KeyCode.Left] and not allKeys["A"] then
				LightUpHold(Keys["A"],true)
			else
				LightUpHold(Keys["A"],false)
			end
			if allKeys[Enum.KeyCode.Down]and not allKeys["S"]  then
				LightUpHold(Keys["S"],true)
			else
				LightUpHold(Keys["S"],false)
			end
			if allKeys[Enum.KeyCode.Right] and not allKeys["D"] then
				LightUpHold(Keys["D"],true)
			else
				LightUpHold(Keys["D"],false)
			end
			--]]
		end
		
	end)()
	
	
end
coroutine.wrap(EZXZCA_fake_script)()
local function FVSJBD_fake_script()
	local script = Instance.new('LocalScript', CPS)

	local button = script.Parent
	local gradient = button.UIGradient
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
	local offset = {Offset = Vector2.new(1, 0)}
	local create = ts:Create(gradient, ti, offset)
	local startingPos = Vector2.new(-1, 0)
	local list = {}
	local s, kpt = ColorSequence.new, ColorSequenceKeypoint.new
	local counter = 0
	local status = "down"
	
	gradient.Offset = startingPos
	
	local function rainbowColors()
		
		local sat, val = 255, 255
		
		for i = 1, 15 do
			
			local hue = i * 17
			table.insert(list, Color3.fromHSV(hue / 255, sat / 255, val / 255))
			
		end
		
	end
	
	rainbowColors()
	
	gradient.Color = s({
	
		kpt(0, list[#list]),
		kpt(0.5, list[#list - 1]),
		kpt(1, list[#list - 2])
	
	})
	
	counter = #list
	
	local function animate()
		
		create:Play()
		create.Completed:Wait()
		gradient.Offset = startingPos
		gradient.Rotation = 180
		
		if counter == #list - 1 and status == "down" then
			
			gradient.Color = s({
		
				kpt(0, gradient.Color.Keypoints[1].Value),
				kpt(0.5, list[#list]),
				kpt(1, list[1])
		
			})
			
			counter = 1
			status = "up"
			
		elseif counter == #list and status == "down" then
			
			gradient.Color = s({
		
				kpt(0, gradient.Color.Keypoints[1].Value),
				kpt(0.5, list[1]),
				kpt(1, list[2])
		
			})
		
			counter = 2
			status = "up"
			
		elseif counter <= #list - 2 and status == "down" then 
			
			gradient.Color = s({
		
				kpt(0, gradient.Color.Keypoints[1].Value),
				kpt(0.5, list[counter + 1]),
				kpt(1, list[counter + 2])
		
			})
			
			counter = counter + 2
			status = "up"
		
		end
		
		create:Play()
		create.Completed:Wait()
		gradient.Offset = startingPos
		gradient.Rotation = 0
		
		if counter == #list - 1 and status == "up" then
			
			gradient.Color = s({
			
				kpt(0, list[1]),
				kpt(0.5, list[#list]),
				kpt(1, gradient.Color.Keypoints[3].Value)
					
			})
			
			counter = 1
			status = "down"
			
		 elseif counter == #list and status == "up" then
			
			gradient.Color = s({
			
				kpt(0, list[2]),
				kpt(0.5, list[1]),
				kpt(1, gradient.Color.Keypoints[3].Value)
					
			})
			
			counter = 2
			status = "down"
		
		elseif counter <= #list - 2 and status == "up" then
			
			gradient.Color = s({
			
				kpt(0, list[counter + 2]),
				kpt(0.5, list[counter + 1]),
				kpt(1, gradient.Color.Keypoints[3].Value)
					
			})
			
			counter = counter + 2
			status = "down"
		
		end
		
		animate()
		
	end
	animate()
end
coroutine.wrap(FVSJBD_fake_script)()
local function YHIR_fake_script() 
	local script = Instance.new('LocalScript', D)

	local button = script.Parent
	local gradient = button.UIGradient
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
	local offset = {Offset = Vector2.new(1, 0)}
	local create = ts:Create(gradient, ti, offset)
	local startingPos = Vector2.new(-1, 0)
	local list = {}
	local s, kpt = ColorSequence.new, ColorSequenceKeypoint.new
	local counter = 0
	local status = "down"
	
	gradient.Offset = startingPos
	
	local function rainbowColors()
		
		local sat, val = 255, 255
		
		for i = 1, 15 do
			
			local hue = i * 17
			table.insert(list, Color3.fromHSV(hue / 255, sat / 255, val / 255))
			
		end
		
	end
	
	rainbowColors()
	
	gradient.Color = s({
	
		kpt(0, list[#list]),
		kpt(0.5, list[#list - 1]),
		kpt(1, list[#list - 2])
	
	})
	
	counter = #list
	
	local function animate()
		
		create:Play()
		create.Completed:Wait()
		gradient.Offset = startingPos
		gradient.Rotation = 180
		
		if counter == #list - 1 and status == "down" then
			
			gradient.Color = s({
		
				kpt(0, gradient.Color.Keypoints[1].Value),
				kpt(0.5, list[#list]),
				kpt(1, list[1])
		
			})
			
			counter = 1
			status = "up"
			
		elseif counter == #list and status == "down" then
			
			gradient.Color = s({
		
				kpt(0, gradient.Color.Keypoints[1].Value),
				kpt(0.5, list[1]),
				kpt(1, list[2])
		
			})
		
			counter = 2
			status = "up"
			
		elseif counter <= #list - 2 and status == "down" then 
			
			gradient.Color = s({
		
				kpt(0, gradient.Color.Keypoints[1].Value),
				kpt(0.5, list[counter + 1]),
				kpt(1, list[counter + 2])
		
			})
			
			counter = counter + 2
			status = "up"
		
		end
		
		create:Play()
		create.Completed:Wait()
		gradient.Offset = startingPos
		gradient.Rotation = 0
		
		if counter == #list - 1 and status == "up" then
			
			gradient.Color = s({
			
				kpt(0, list[1]),
				kpt(0.5, list[#list]),
				kpt(1, gradient.Color.Keypoints[3].Value)
					
			})
			
			counter = 1
			status = "down"
			
		 elseif counter == #list and status == "up" then
			
			gradient.Color = s({
			
				kpt(0, list[2]),
				kpt(0.5, list[1]),
				kpt(1, gradient.Color.Keypoints[3].Value)
					
			})
			
			counter = 2
			status = "down"
		
		elseif counter <= #list - 2 and status == "up" then
			
			gradient.Color = s({
			
				kpt(0, list[counter + 2]),
				kpt(0.5, list[counter + 1]),
				kpt(1, gradient.Color.Keypoints[3].Value)
					
			})
			
			counter = counter + 2
			status = "down"
		
		end
		
		animate()
		
	end
	animate()
end
coroutine.wrap(YHIR_fake_script)()
local function ZDAYOYF_fake_script() 
	local script = Instance.new('LocalScript', S)

	local button = script.Parent
	local gradient = button.UIGradient
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
	local offset = {Offset = Vector2.new(1, 0)}
	local create = ts:Create(gradient, ti, offset)
	local startingPos = Vector2.new(-1, 0)
	local list = {}
	local s, kpt = ColorSequence.new, ColorSequenceKeypoint.new
	local counter = 0
	local status = "down"
	
	gradient.Offset = startingPos
	
	local function rainbowColors()
		
		local sat, val = 255, 255
		
		for i = 1, 15 do
			
			local hue = i * 17
			table.insert(list, Color3.fromHSV(hue / 255, sat / 255, val / 255))
			
		end
		
	end
	
	rainbowColors()
	
	gradient.Color = s({
	
		kpt(0, list[#list]),
		kpt(0.5, list[#list - 1]),
		kpt(1, list[#list - 2])
	
	})
	
	counter = #list
	
	local function animate()
		
		create:Play()
		create.Completed:Wait()
		gradient.Offset = startingPos
		gradient.Rotation = 180
		
		if counter == #list - 1 and status == "down" then
			
			gradient.Color = s({
		
				kpt(0, gradient.Color.Keypoints[1].Value),
				kpt(0.5, list[#list]),
				kpt(1, list[1])
		
			})
			
			counter = 1
			status = "up"
			
		elseif counter == #list and status == "down" then
			
			gradient.Color = s({
		
				kpt(0, gradient.Color.Keypoints[1].Value),
				kpt(0.5, list[1]),
				kpt(1, list[2])
		
			})
		
			counter = 2
			status = "up"
			
		elseif counter <= #list - 2 and status == "down" then 
			
			gradient.Color = s({
		
				kpt(0, gradient.Color.Keypoints[1].Value),
				kpt(0.5, list[counter + 1]),
				kpt(1, list[counter + 2])
		
			})
			
			counter = counter + 2
			status = "up"
		
		end
		
		create:Play()
		create.Completed:Wait()
		gradient.Offset = startingPos
		gradient.Rotation = 0
		
		if counter == #list - 1 and status == "up" then
			
			gradient.Color = s({
			
				kpt(0, list[1]),
				kpt(0.5, list[#list]),
				kpt(1, gradient.Color.Keypoints[3].Value)
					
			})
			
			counter = 1
			status = "down"
			
		 elseif counter == #list and status == "up" then
			
			gradient.Color = s({
			
				kpt(0, list[2]),
				kpt(0.5, list[1]),
				kpt(1, gradient.Color.Keypoints[3].Value)
					
			})
			
			counter = 2
			status = "down"
		
		elseif counter <= #list - 2 and status == "up" then
			
			gradient.Color = s({
			
				kpt(0, list[counter + 2]),
				kpt(0.5, list[counter + 1]),
				kpt(1, gradient.Color.Keypoints[3].Value)
					
			})
			
			counter = counter + 2
			status = "down"
		
		end
		
		animate()
		
	end
	animate()
end
coroutine.wrap(ZDAYOYF_fake_script)()
local function SZQB_fake_script() 
	local script = Instance.new('LocalScript', W)

	local button = script.Parent
	local gradient = button.UIGradient
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
	local offset = {Offset = Vector2.new(1, 0)}
	local create = ts:Create(gradient, ti, offset)
	local startingPos = Vector2.new(-1, 0)
	local list = {}
	local s, kpt = ColorSequence.new, ColorSequenceKeypoint.new
	local counter = 0
	local status = "down"
	
	gradient.Offset = startingPos
	
	local function rainbowColors()
		
		local sat, val = 255, 255
		
		for i = 1, 15 do
			
			local hue = i * 17
			table.insert(list, Color3.fromHSV(hue / 255, sat / 255, val / 255))
			
		end
		
	end
	
	rainbowColors()
	
	gradient.Color = s({
	
		kpt(0, list[#list]),
		kpt(0.5, list[#list - 1]),
		kpt(1, list[#list - 2])
	
	})
	
	counter = #list
	
	local function animate()
		
		create:Play()
		create.Completed:Wait()
		gradient.Offset = startingPos
		gradient.Rotation = 180
		
		if counter == #list - 1 and status == "down" then
			
			gradient.Color = s({
		
				kpt(0, gradient.Color.Keypoints[1].Value),
				kpt(0.5, list[#list]),
				kpt(1, list[1])
		
			})
			
			counter = 1
			status = "up"
			
		elseif counter == #list and status == "down" then
			
			gradient.Color = s({
		
				kpt(0, gradient.Color.Keypoints[1].Value),
				kpt(0.5, list[1]),
				kpt(1, list[2])
		
			})
		
			counter = 2
			status = "up"
			
		elseif counter <= #list - 2 and status == "down" then 
			
			gradient.Color = s({
		
				kpt(0, gradient.Color.Keypoints[1].Value),
				kpt(0.5, list[counter + 1]),
				kpt(1, list[counter + 2])
		
			})
			
			counter = counter + 2
			status = "up"
		
		end
		
		create:Play()
		create.Completed:Wait()
		gradient.Offset = startingPos
		gradient.Rotation = 0
		
		if counter == #list - 1 and status == "up" then
			
			gradient.Color = s({
			
				kpt(0, list[1]),
				kpt(0.5, list[#list]),
				kpt(1, gradient.Color.Keypoints[3].Value)
					
			})
			
			counter = 1
			status = "down"
			
		 elseif counter == #list and status == "up" then
			
			gradient.Color = s({
			
				kpt(0, list[2]),
				kpt(0.5, list[1]),
				kpt(1, gradient.Color.Keypoints[3].Value)
					
			})
			
			counter = 2
			status = "down"
		
		elseif counter <= #list - 2 and status == "up" then
			
			gradient.Color = s({
			
				kpt(0, list[counter + 2]),
				kpt(0.5, list[counter + 1]),
				kpt(1, gradient.Color.Keypoints[3].Value)
					
			})
			
			counter = counter + 2
			status = "down"
		
		end
		
		animate()
		
	end
	animate()
end
coroutine.wrap(SZQB_fake_script)()
local function GCPTIMQ_fake_script() 
	local script = Instance.new('LocalScript', A)

	local button = script.Parent
	local gradient = button.UIGradient
	local ts = game:GetService("TweenService")
	local ti = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
	local offset = {Offset = Vector2.new(1, 0)}
	local create = ts:Create(gradient, ti, offset)
	local startingPos = Vector2.new(-1, 0)
	local list = {}
	local s, kpt = ColorSequence.new, ColorSequenceKeypoint.new
	local counter = 0
	local status = "down"
	
	gradient.Offset = startingPos
	
	local function rainbowColors()
		
		local sat, val = 255, 255
		
		for i = 1, 15 do
			
			local hue = i * 17
			table.insert(list, Color3.fromHSV(hue / 255, sat / 255, val / 255))
			
		end
		
	end
	
	rainbowColors()
	
	gradient.Color = s({
	
		kpt(0, list[#list]),
		kpt(0.5, list[#list - 1]),
		kpt(1, list[#list - 2])
	
	})
	
	counter = #list
	
	local function animate()
		
		create:Play()
		create.Completed:Wait()
		gradient.Offset = startingPos
		gradient.Rotation = 180
		
		if counter == #list - 1 and status == "down" then
			
			gradient.Color = s({
		
				kpt(0, gradient.Color.Keypoints[1].Value),
				kpt(0.5, list[#list]),
				kpt(1, list[1])
		
			})
			
			counter = 1
			status = "up"
			
		elseif counter == #list and status == "down" then
			
			gradient.Color = s({
		
				kpt(0, gradient.Color.Keypoints[1].Value),
				kpt(0.5, list[1]),
				kpt(1, list[2])
		
			})
		
			counter = 2
			status = "up"
			
		elseif counter <= #list - 2 and status == "down" then 
			
			gradient.Color = s({
		
				kpt(0, gradient.Color.Keypoints[1].Value),
				kpt(0.5, list[counter + 1]),
				kpt(1, list[counter + 2])
		
			})
			
			counter = counter + 2
			status = "up"
		
		end
		
		create:Play()
		create.Completed:Wait()
		gradient.Offset = startingPos
		gradient.Rotation = 0
		
		if counter == #list - 1 and status == "up" then
			
			gradient.Color = s({
			
				kpt(0, list[1]),
				kpt(0.5, list[#list]),
				kpt(1, gradient.Color.Keypoints[3].Value)
					
			})
			
			counter = 1
			status = "down"
			
		 elseif counter == #list and status == "up" then
			
			gradient.Color = s({
			
				kpt(0, list[2]),
				kpt(0.5, list[1]),
				kpt(1, gradient.Color.Keypoints[3].Value)
					
			})
			
			counter = 2
			status = "down"
		
		elseif counter <= #list - 2 and status == "up" then
			
			gradient.Color = s({
			
				kpt(0, list[counter + 2]),
				kpt(0.5, list[counter + 1]),
				kpt(1, gradient.Color.Keypoints[3].Value)
					
			})
			
			counter = counter + 2
			status = "down"
		
		end
		
		animate()
		
	end
	animate()
end
coroutine.wrap(GCPTIMQ_fake_script)()

wasd.Enabled = false
function wasdmodule:Set(value)
	wasd.Enabled = value
end
return wasdmodule
