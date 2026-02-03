local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Eyes the horror game",
	LoadingTitle = "Eyes",
    LoadingSubtitle = "by Finalelele",
	
    ConfigurationSaving = {
       Enabled = false,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
})

local Tab = Window:CreateTab("Esp", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Esp")
local Toggle = Tab:CreateToggle({
   Name = "Esp krasue",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if Value then
		local krasue = workspace.Krasue.default.default
		local espK = Instance.new("Highlight")
		espK.Parent = krasue
		espK.FillColor = Color3.fromRGB(255, 0, 0)
		espK.FillTransparency = 0.5
		espK.DepthMode = "AlwaysOnTop"
	else
		espKD = workspace.Krasue.default.default.Highlight
		espKD:Destroy()
	end
end,
})

local Toggle = Tab:CreateToggle({
   Name = "Esp sacks (dont work on phone)",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
	if Value then
		local XRaySacks = workspace.Map.Bags.XRay
		XRaySacks.Enabled = true
	else
		local XRaySacks = workspace.Map.Bags.XRay
		XRaySacks.Enabled = false
	end
end,
})

local Toggle = Tab:CreateToggle({
   Name = "Esp key",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if Value then
		local espKey = workspace.Map.Keys.Key
		local espKe = Instance.new("Highlight")
		espKe.Parent = espKey
		espKe.FillColor = Color3.fromRGB(0, 255, 0)
		espKe.FillTransparency = 0.5
		espKe.DepthMode = "AlwaysOnTop"
	else
		local espKeD = workspace.Map.Keys.Key.Highlight
		espKeD:Destroy()
	end
end,
})

local Toggle = Tab:CreateToggle({
   Name = "Esp Eyes",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if Value then
		local eyes = workspace.Map.Eyes
		for _,v in pairs (eyes:GetDescendants()) do
			if v.Name == "Eye" then
				v.Transparency = 0
				local espEye = Instance.new("Highlight")
				espEye.Parent = v
				espEye.FillColor = Color3.fromRGB(0, 255, 255)
				espEye.FillTransparency = 0.5
				espEye.DepthMode = "AlwaysOnTop"
				espEye.Name = "EyesEsp"
			end
		end
	else
		local eyes = workspace.Map.Eyes
		for _,v in pairs (eyes:GetDescendants()) do
			if v.Name == "EyesEsp" then
				v:Destroy()
			end
		end

		for _,v in pairs (eyes:GetDescendants()) do
			if v.Name == "Eye" then
				v.Transparency = 0
			end
		end
	end
end,
})

local Tab = Window:CreateTab("Player", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Speed")
local Toggle = Tab:CreateToggle({
   Name = "Player Speed",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if Value then
		local SpeedBox = workspace
		SpBox = Instance.new("BoxHandleAdornment")
		SpBox.Parent = SpeedBox
		SpBox.Name = "SpedBox"
		while wait(0.1) do
			local spb = workspace.SpedBox
			if spb.Parent == workspace then
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
			else
				break
			end
		end
	else
		local SpdBox = workspace.SpedBox
		SpdBox:Destroy()
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 8
	end
end,
})

local Toggle = Tab:CreateToggle({
   Name = "Krasue Camera (Auto)",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if Value then
		local cam = workspace.Camera
		local camK = workspace.Krasue.KrasueCamera
		cam.CameraSubject = camK
		cam.CameraType = Enum.CameraType.Watch
		local krasueBone = workspace.Krasue.default.default
		krasueBone.Transparency = 1
		local VEye = game:GetService("Lighting").Eye
		VEye.Enabled = true
		local lighting = game:GetService("Lighting")
		lighting.Brightness = 30
	else
		local cam = workspace.Camera
		local camP = game.Players.LocalPlayer.Character.Humanoid
		cam.CameraSubject = camP
		cam.CameraType = Enum.CameraType.Custom
		local krasueBone = workspace.Krasue.default.default
		krasueBone.Transparency = 0
		local VEye = game:GetService("Lighting").Eye
		VEye.Enabled = false
		local lighting = game:GetService("Lighting")
		lighting.Brightness = 1
	end
end,
})

local Toggle = Tab:CreateToggle({
   Name = "Krasue Camera (Manual)",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if Value then
		local cam = workspace.Camera
		local camK = workspace.Krasue.KrasueCamera
		cam.CameraSubject = camK
		cam.CameraType = Enum.CameraType.Custom
		local krasueBone = workspace.Krasue.default.default
		krasueBone.Transparency = 1
		local VEye = game:GetService("Lighting").Eye
		VEye.Enabled = true
		local lighting = game:GetService("Lighting")
		lighting.Brightness = 30
	else
		local cam = workspace.Camera
		local camP = game.Players.LocalPlayer.Character.Humanoid
		cam.CameraSubject = camP
		cam.CameraType = Enum.CameraType.Custom
		local krasueBone = workspace.Krasue.default.default
		krasueBone.Transparency = 0
		local VEye = game:GetService("Lighting").Eye
		VEye.Enabled = false
		local lighting = game:GetService("Lighting")
		lighting.Brightness = 1
	end
end,
})

local Tab = Window:CreateTab("Other", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Doors")
local Toggle = Tab:CreateToggle({
   Name = "Hide Doors",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if Value then
		local defDoors = workspace.Map.Doors
		for _,v in pairs(defDoors:GetDescendants()) do
    		if  v.Name == "Door" then
        		v.CanCollide = false
				v.Transparency = 1
   			 end
		end
		local exitDoor = workspace.Map.Doors.ExitDoor
		exitDoor.CanCollide = false
		exitDoor.Transparency = 1
	else
		local defDoors = workspace.Map.Doors
		for _,v in pairs(defDoors:GetDescendants()) do
    		if  v.Name == "Door" then
        		v.CanCollide = true
				v.Transparency = 0
   			end
		end
		local exitDoor = workspace.Map.Doors.ExitDoor
		exitDoor.CanCollide = true
		exitDoor.Transparency = 0
	end
end,
})

local Section = Tab:CreateSection("Brightness")
local Toggle = Tab:CreateToggle({
   Name = "Brightness",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if Value then
		local lighting = game:GetService("Lighting")
		lighting.Brightness = 20
	else
		local lighting = game:GetService("Lighting")
		lighting.Brightness = 1
	end
end,
})

local Toggle = Tab:CreateToggle({
   Name = "Hide Flashlight",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   if Value then
		local flashHand = workspace.Flashlight.FlashlightHandle
		flashHand.Transparency = 1
		local flashLight = workspace.Flashlight.FlashlightHandle.Light
		for _,v in pairs(flashLight:GetDescendants()) do
    		if  v.Name == "SpotLight" then
        		v.Enabled = false
   			end
		end
	else
		local flashHand = workspace.Flashlight.FlashlightHandle
		flashHand.Transparency = 0
		local flashLight = workspace.Flashlight.FlashlightHandle.Light
		for _,v in pairs(flashLight:GetDescendants()) do
    		if  v.Name == "SpotLight" then
        		v.Enabled = true
   			end
		end
	end
end,
})
