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
		espK.OutlineColor = Color3.fromRGB(255, 255, 255)
		espK.OutlineTransparency = 1
		espK.DepthMode = "AlwaysOnTop"
	else
		espKD = workspace.Krasue.default.default.Highlight
		espKD:Destroy()
	end
end,
})

local Toggle = Tab:CreateToggle({
   Name = "Esp sacks",
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
		espKe.OutlineColor = Color3.fromRGB(255, 255, 255)
		espKe.OutlineTransparency = 1
		espKe.DepthMode = "AlwaysOnTop"
	else
		local espKeD = workspace.Map.Keys.Key.Highlight
		espKeD:Destroy()
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
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
	else
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 8
	end
end,
})

local Tab = Window:CreateTab("Other", 4483362458) -- Title, Image
local Section = Tab:CreateSection("Doors")
local Button = Tab:CreateButton({
   Name = "Destroy Doors",
   Callback = function()
   	local Doors = workspace.Map.Doors
		Doors:Destroy()
	end
})
