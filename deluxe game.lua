local Rayfield = loadstring(game:HttpGet("https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua"))()

local Window = Rayfield:CreateWindow({
	Name = "eyes game deluxe",
	LoadingTitle = "xxx",
	LoadingSubtitle = "by Finalelele",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "Big Hub"
	},

	ToggleUIKeybind = "k", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

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

local espBags = false
local espMonster = false


local Tab = Window:CreateTab("Esp", 4483362458) -- Title, Image
local Toggle = Tab:CreateToggle({
	Name = "Esp Bags",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		if Value then
			espBags = true
			while espBags == true do
				if workspace:FindFirstChild("normalmoneybags") then
					for _, v in ipairs(workspace.normalmoneybags:GetChildren()) do
						if v:IsA("Part") and not v:FindFirstChild("EspBag") then
							local hg = Instance.new("Highlight")
							hg.Parent = v
							hg.FillColor = Color3.fromRGB(255, 255, 0)
							hg.Name = "EspBag"
						end
					end
				elseif workspace:FindFirstChild("HalloweenCandies") then
					for _, v in ipairs(workspace.HalloweenCandies:GetChildren()) do
						if v:IsA("Part") and not v:FindFirstChild("EspBag") then
							local hg = Instance.new("Highlight")
							hg.Parent = v
							hg.FillColor = Color3.fromRGB(255, 255, 0)
							hg.Name = "EspBag"
						end
					end
				end
				task.wait(1)
			end
		else
			espBags = false
			for _, v in ipairs(workspace.normalmoneybags:GetChildren()) do
				if v:IsA("Part") and v:FindFirstChild("EspBag") then
					v.EspBag:Destroy()
				end
			end
		end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Esp Monster",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		if Value then
			espMonster = true
			while espMonster == true do
				for _, v in ipairs(workspace:GetChildren()) do
					if v:IsA("Model") and not v:FindFirstChild("EspMonster") and v:FindFirstChild("InitialPoses") then
						local hg = Instance.new("Highlight")
						hg.Parent = v
						hg.FillColor = Color3.fromRGB(255, 0, 0)
						hg.Name = "EspMonster"
					end
				end
				task.wait(1)
			end
		else
			espMonster = false
			for _, v in ipairs(workspace:GetChildren()) do
				if v:IsA("Model") and v:FindFirstChild("EspMonster") and v:FindFirstChild("InitialPoses") then
					v.EspMonster:Destroy()
				end
			end
		end
	end,
})
