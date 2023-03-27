firesignal(game.ReplicatedStorage.Bricks.EntityInfo.OnClientEvent, "M4nh UI Succesfully Loaded!")

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
getgenv().SecureMode = true

local Window = Rayfield:CreateWindow({
   Name = "M4nhDrsUI Rayfild Ver",
   LoadingTitle = "Among us...",
   LoadingSubtitle = "by M4nh23 (Sassy baka)",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Sussy Doors File"
   },
   Discord = {
      Enabled = false,
      Invite = "I have no discord account", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key System XD",
      Subtitle = "Get key quick!",
      Note = "Go to EEEE for key",
      FileName = "Sassy Key",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "SupSuperIdolDeSoRumDoMeNiTurKinBySUssybakadomenetokinsuperidoldesorumdometokinbydiyangyungdokinnFARTINGKEYEEEEE"
   }
})

local Tab = Window:CreateTab("Items", 11622366799) -- Title, Image
local Section = Tab:CreateSection("W0W")

--[[Rayfield:Notify({
   Title = "Items Tab",
   Content = "nothing",
   Duration = 3,
   Image = 0000000000,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Auuughhhhh",
         Callback = function()
         print("Sassed")
      end
   },
},
})
]]

local Button = Tab:CreateButton({
   Name = "Candle",
   Callback = function()
   		local Candle = game:GetObjects("rbxassetid://11864230879")[1]	-- mine 12462481981
    	Candle.Parent = game.Players.LocalPlayer.Backpack
    	Candle.Handle.Top.Flame.GuidingLighteffect.PointLight.Brightness = 1
    	Candle.Handle.CanCollide = false
    	Candle.Handle.Top.Flame.GuidingLighteffect.PointLight.Range = 25 	-- i edited range 10 to 25
    	local plr = game.Players.LocalPlayer
    	local Char = plr.Character or plr.CharacterAdded:Wait()
    	local Hum = Char:FindFirstChild("Humanoid")
    	local RightArm = Char:FindFirstChild("RightUpperArm")
    	local LeftArm = Char:FindFirstChild("LeftUpperArm")
    	local RightC1 = RightArm.RightShoulder.C1
    	local LeftC1 = LeftArm.LeftShoulder.C1
    	local AnimIdle = Instance.new("Animation")
    	AnimIdle.AnimationId = "rbxassetid://9982615727"
    	AnimIdle.Name = "IDleloplolo"
    	local cam = workspace.CurrentCamera
    	Candle.Handle.Top.Flame.GuidingLighteffect.EffectLight.LockedToPart = true
    	Candle.Handle.Material = Enum.Material.Salt
    	local track = Hum.Animator:LoadAnimation(AnimIdle)
    	track.Looped = true
    	local Equipped = false
    	for i, v in pairs(Candle:GetDescendants()) do
        	if v:IsA("BasePart") then
            	v.CanCollide = false
        	end
    	end
    	Candle.Equipped:Connect(function()
        	for _, v in next, Hum:GetPlayingAnimationTracks() do
            	v:Stop()
        	end
        	Equipped = true
    	-- RightArm.Name = "R_Arm"
        	track:Play()
    	-- RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
    	end)
    	Candle.Unequipped:Connect(function()
        	RightArm.Name = "RightUpperArm"
        	track:Stop()
        	Equipped = false
    	-- RightArm.RightShoulder.C1 = RightC1
    	end)

    	Candle.TextureId = "rbxassetid://11622366799"
   end,
})

local Button = Tab:CreateButton({
   Name = "Tablet/Scanner",
   Callback = function()
   		_G.OnShop = true
		loadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Flashlight",
   Callback = function()
        local item = game:GetObjects("rbxassetid://11242492137")[1]
    	item.Parent = game.Players.LocalPlayer.Backpack
		item.Handle.SpotLight.Angle = 35
   end,
})

local Tab = Window:CreateTab("PenguinManiack's Crucifix", 10959503616) -- Title, Image
local Section = Tab:CreateSection("Uhh right!")

local Button = Tab:CreateButton({
   Name = "Minecraft Crucifix",
   Callback = function()
			local function IsVisible(part)
			local vec, found=workspace.CurrentCamera:WorldToViewportPoint(part.Position)
			local onscreen = found and vec.Z > 0
			local cfg = RaycastParams.new()
			cfg.FilterType = Enum.RaycastFilterType.Blacklist
			cfg.FilterDescendantsInstances = {part}

			local cast = workspace:Raycast(part.Position, (game.Players.LocalPlayer.Character.UpperTorso.Position - part.Position), cfg)
			if onscreen then
				if cast and (cast and cast.Instance).Parent==game.Players.LocalPlayer.Character then
					return true
				end
			end
		end

		local Equipped = false

		-- Edit this --
		getgenv().spawnKey = Enum.KeyCode.F4
		---------------

		-- Services

		local Players = game:GetService("Players")
		local UIS = game:GetService("UserInputService")

		-- Variables

		local Plr = Players.LocalPlayer
		local Char = Plr.Character or Plr.CharacterAdded:Wait()
		local Hum = Char:WaitForChild("Humanoid")
		local Root = Char:WaitForChild("HumanoidRootPart")
		local RightArm = Char:WaitForChild("RightUpperArm")
		local LeftArm = Char:WaitForChild("LeftUpperArm")

		local RightC1 = RightArm.RightShoulder.C1
		local LeftC1 = LeftArm.LeftShoulder.C1

		local SelfModules = {
			Functions = loadstring(
				game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Functions.lua")
			)(),
			CustomShop = loadstring(
				game:HttpGet(
					"https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Shop%20Items/Source.lua"
				)
			)(),
		}

		local ModuleScripts = {
			MainGame = require(Plr.PlayerGui.MainUI.Initiator.Main_Game),
			SeekIntro = require(Plr.PlayerGui.MainUI.Initiator.Main_Game.RemoteListener.Cutscenes.SeekIntro),
		}

		-- Functions

		local function setupCrucifix(tool)
			tool.Equipped:Connect(function()
				Equipped = true
				Char:SetAttribute("Hiding", true)
				for _, v in next, Hum:GetPlayingAnimationTracks() do
					v:Stop()
				end

				RightArm.Name = "R_Arm"
				LeftArm.Name = "L_Arm"

				RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
				LeftArm.LeftShoulder.C1 = LeftC1
					* CFrame.new(-0.2, -0.3, -0.5)
					* CFrame.Angles(math.rad(-125), math.rad(25), math.rad(25))
			end)

			tool.Unequipped:Connect(function()
				Equipped = false
				Char:SetAttribute("Hiding", nil)
				RightArm.Name = "RightUpperArm"
				LeftArm.Name = "LeftUpperArm"

				RightArm.RightShoulder.C1 = RightC1
				LeftArm.LeftShoulder.C1 = LeftC1
			end)
		end

		-- Scripts

		local CrucifixTool = game:GetObjects("rbxassetid://11779270896")[1]
		CrucifixTool.Name = "Crucifix"
		CrucifixTool.Parent = game.Players.LocalPlayer.Backpack

		-- game.UserInputService.InputBegan:Connect(function(input, proc)
		--     if proc then return end

		--     if input.KeyCode == input.KeyCode[getgenv().spawnKey] then
		--         local CrucifixTool = game:GetObjects("rbxassetid://11746137630")[1]
		--         CrucifixTool.Name = "Crucifix"
		--         CrucifixTool.Parent = game.Players.LocalPlayer.Backpack
		--     end
		-- end)
		-- Input handler

		setupCrucifix(CrucifixTool)

		local Players = game:GetService("Players")
		local UIS = game:GetService("UserInputService")

		-- Variables

		local Plr = Players.LocalPlayer
		local Char = Plr.Character or Plr.CharacterAdded:Wait()
		local Hum = Char:WaitForChild("Humanoid")
		local Root = Char:WaitForChild("HumanoidRootPart")

		local dupeCrucifix = Instance.new("BindableEvent")
		local function func(ins)
			wait(.01) -- Wait for the attribute
			if ins:GetAttribute("IsCustomEntity")==true and ins:GetAttribute("ClonedByCrucifix")~=true then
				local Chains = game:GetObjects("rbxassetid://11780849944")[1]
				Chains.Parent = workspace
				local chained = true
				local posTime = false
				local rotTime = false
				local tweenTime = false
				local intFound = true

				game:GetService("RunService").RenderStepped:Connect(function()
					if Equipped then
						if ins.Parent~=nil and ins.PrimaryPart and IsVisible(ins.PrimaryPart) and (Root.Position-ins.PrimaryPart.Position).magnitude <= 25 then
							local c=ins:Clone()
							c:SetAttribute("ClonedByCrucifix", true)
							c.RushNew.Anchored=true
							c.Parent=ins.Parent
							ins:Destroy()
							dupeCrucifix:Fire(6,c.RushNew)


							
							-- Chains.PrimaryPart.Orientation = Chains.PrimaryPart.Orientation + Vector3.new(0, 3, 0)

							local EntityRoot = c:FindFirstChild("RushNew")

							if EntityRoot then



								local Fake_FaceAttach = Instance.new("Attachment")
								Fake_FaceAttach.Parent = EntityRoot
								

								for i, beam in pairs(Chains:GetDescendants()) do
									if beam:IsA("BasePart") then
										beam.CanCollide = false
									end
									if beam.Name == "Beam" then
										beam.Attachment1 = Fake_FaceAttach
									end
								end
								
								if not posTime then
									Chains:SetPrimaryPartCFrame(
										EntityRoot.CFrame * CFrame.new(0, -3.5, 0) * CFrame.Angles(math.rad(90), 0, 0)
									)
									posTime = true
								end

								task.wait(1.35)
								if not tweenTime then

									task.spawn(function()
										while task.wait() do
											if Chains:FindFirstChild('Base') then
												Chains.Base.CFrame = Chains.Base.CFrame * CFrame.Angles(0,0 , math.rad(0.5))
											end
										end
									end)

									task.spawn(function()
										while task.wait() do
											for i, beam in pairs(Chains:GetDescendants()) do
												if beam.Name == "Beam" then
													beam.TextureLength = beam.TextureLength+0.035
												end
											end
										end
									end)


									game.TweenService
										:Create(
											EntityRoot,
											TweenInfo.new(6),
											{ CFrame = EntityRoot.CFrame * CFrame.new(0, 50, 0) }
										)
										:Play()
									

									tweenTime = true
									task.wait(1.5)
									intFound = false
									game:GetService("Debris"):AddItem(c, 0)
									game:GetService("Debris"):AddItem(Chains, 0)
								end
							end
						end
					end
				end)
			elseif ins.Name=="Lookman" then
				local c=ins
				task.spawn(function()
					repeat task.wait() until IsVisible(c.Core) and Equipped and c.Core.Attachment.Eyes.Enabled==true
					local pos=c.Core.Position
					dupeCrucifix:Fire(18.364, c.Core)
					task.spawn(function()
						c:SetAttribute("Killing", true)
						ModuleScripts.MainGame.camShaker:ShakeOnce(10, 10, 5, 0.15)
						wait(5)
						c.Core.Initiate:Stop()
						for i=1,3 do
							c.Core.Repent:Play()  
							c.Core.Attachment.Angry.Enabled=true
							ModuleScripts.MainGame.camShaker:ShakeOnce(8, 8, 1.3, 0.15)
							delay(c.Core.Repent.TimeLength, function() c.Core.Attachment.Angry.Enabled=false end)
							wait(4)
						end
						c.Core.Scream:Play();
						ModuleScripts.MainGame.camShaker:ShakeOnce(8, 8, c.Core.Scream.TimeLength, 0.15);
						(c.Core:FindFirstChild"whisper" or c.Core:FindFirstChild"Ambience"):Stop()
						for _, l in pairs(c:GetDescendants()) do
							if l:IsA("PointLight") then
								l.Enabled=false
							end
						end
						game:GetService("TweenService"):Create(c.Core, TweenInfo.new(c.Core.Scream.TimeLength, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
							CFrame=CFrame.new(c.Core.CFrame.X, c.Core.CFrame.Y-12, c.Core.CFrame.Z)
						}):Play()
					end)
					local col=game.Players.LocalPlayer.Character.Collision

					local function CFrameToOrientation(cf)
						local x, y, z = cf:ToOrientation()
						return Vector3.new(math.deg(x), math.deg(y), math.deg(z))
					end
					
					while c.Parent~=nil and c.Core.Attachment.Eyes.Enabled==true do
						-- who's the boss now huh?
						col.Orientation = CFrameToOrientation(CFrame.lookAt(col.Position, pos)*CFrame.Angles(0, math.pi, 0))
						task.wait()
					end
				end)
			elseif ins.Name=="Shade" and ins.Parent==workspace.CurrentCamera and ins:GetAttribute("ClonedByCrucifix")==nil then
				task.spawn(function()
					repeat task.wait() until IsVisible(ins) and (Root.Position-ins.Position).Magnitude <= 12.5 and Equipped

					local clone = ins:Clone()

					clone.CFrame = ins.CFrame
					clone.Parent = ins.Parent
					clone.Anchored = true

					ins:Remove()

					dupeCrucifix:Fire(13, ins)
					ModuleScripts.MainGame.camShaker:ShakeOnce(40, 10, 5, 0.15)



					for _, thing in pairs(clone:GetDescendants()) do
						if thing:IsA("SpotLight") then
							game:GetService("TweenService"):Create(thing, TweenInfo.new(5), {
								Brightness=thing.Brightness*5
							}):Play()
						elseif thing:IsA("Sound") and thing.Name~="Burst" then
							game:GetService("TweenService"):Create(thing, TweenInfo.new(5), {
								Volume=0
							}):Play()
						elseif thing:IsA("TouchTransmitter") then thing:Destroy() end
					end

					for _, pc in pairs(clone:GetDescendants()) do
						if pc:IsA("ParticleEmitter") then
								pc.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 0, 4)), ColorSequenceKeypoint.new(0.48, Color3.fromRGB(182, 0, 3)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 0, 4))}
						end
					end

					local Original_color = {}

					local light
					light = game.Lighting["Ambience_Shade"]
					game:GetService("TweenService"):Create(light, TweenInfo.new(1), {


					}):Play()

					wait(5)

					clone.Burst.PlaybackSpeed=0.5
					clone.Burst:Stop()
					clone.Burst:Play()
					light.TintColor = Color3.fromRGB(215,253,255)
					game:GetService("TweenService"):Create(clone, TweenInfo.new(6), {
						CFrame=CFrame.new(clone.CFrame.X, clone.CFrame.Y-12, clone.CFrame.Z)
					}):Play()
					wait(8.2)

					game:GetService("Debris"):AddItem(clone, 0)
					game.ReplicatedStorage.Bricks.ShadeResult:FireServer()
				end)
			end
		end

		workspace.ChildAdded:Connect(func)
		workspace.CurrentCamera.ChildAdded:Connect(func)
		for _, thing in pairs(workspace:GetChildren()) do
			func(thing)
		end
		dupeCrucifix.Event:Connect(function(time, entityRoot)
			local Cross = game:GetObjects("rbxassetid://11840790614")[1]
			Cross.Parent = workspace

			local fakeCross = Cross.Handle

			-- fakeCross:FindFirstChild("EffectLight").Enabled = true

			ModuleScripts.MainGame.camShaker:ShakeOnce(35, 25, 0.15, 0.15)
			-- you tell me i didnt make?
			fakeCross.CFrame = CFrame.lookAt(CrucifixTool.Handle.Position, entityRoot.Position)
			
			-- hl.Parent = model
			-- hl.FillTransparency = 1
			-- hl.OutlineColor = Color3.fromRGB(75, 177, 255)
			fakeCross.Anchored = true

			CrucifixTool:Destroy()

			-- for i, v in pairs(fakeCross:GetChildren()) do
			--     if v.Name == "E" and v:IsA("BasePart") then
			--         v.Transparency = 0
			--         v.CanCollide = false
			--     end
			--     if v:IsA("Motor6D") then
			--         v.Name = "Motor6D"
			--     end
			-- end

			task.wait(time)
			fakeCross.Anchored = false
			fakeCross.CanCollide = true
			task.wait(0.5)
			Cross:Remove()
		end)

		-- credits
		firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "fire made by penguin")
   end,
})

local Button = Tab:CreateButton({
   Name = "Crucifix On Anything",
   Callback = function()
		_G.Range = 30
		_G.OnAnything = true
		_G.Fail = false
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Crucifix On Anything(Fail)",
   Callback = function()
		_G.Range = 30
		_G.OnAnything = true
		_G.Fail = true
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Eletric Crucifix",
   Callback = function()
		_G.Uses = 1
		_G.Range = 30
		_G.OnClick = true
		_G.Variant = "Eletric"
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Devil Crucifix",
   Callback = function()
		_G.Uses = 1
		_G.Range = 30
		_G.OnClick = true
		_G.Variant = "Devil"
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Section = Tab:CreateSection("Inf Range")

local Button = Tab:CreateButton({
   Name = "Crucifix On Anything(Inf Range)",
   Callback = function()
		_G.Range = 999
		_G.OnAnything = true
		_G.Fail = false
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Crucifix On Anything(Fail,Inf Range)",
   Callback = function()
		_G.Range = 999
		_G.OnAnything = true
		_G.Fail = true
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Eletric Crucifix(Inf Range)",
   Callback = function()
		_G.Uses = 1
		_G.Range = 999
		_G.OnClick = true
		_G.Variant = "Eletric"
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Devil Crucifix(Inf Range)",
   Callback = function()
		_G.Uses = 1
		_G.Range = 999
		_G.OnClick = true
		_G.Variant = "Devil"
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Section = Tab:CreateSection("Inf Uses")

local Button = Tab:CreateButton({
   Name = "Crucifix On Anything(Inf Uses)",
   Callback = function()
		_G.Uses = 999
		_G.Range = 30
		_G.OnAnything = true
		_G.Fail = false
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Crucifix On Anything(Inf Uses,Fail)",
   Callback = function()
		_G.Uses = 999
		_G.Range = 30
		_G.OnAnything = true
		_G.Fail = true
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Eletric Crucifix(Inf Uses)",
   Callback = function()
		_G.Uses = 999
		_G.Range = 30
		_G.OnClick = true
		_G.Variant = "Eletric"
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Devil Crucifix(Inf Uses)",
   Callback = function()
		_G.Uses = 999
		_G.Range = 30
		_G.OnClick = true
		_G.Variant = "Devil"
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Section = Tab:CreateSection("Inf Uses & Range")

local Button = Tab:CreateButton({
   Name = "Crucifix On Anything (Inf Uses,Range)",
   Callback = function()
		_G.Uses = 999
		_G.Range = 999
		_G.OnAnything = true
		_G.Fail = false
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Crucifix On Anything (Inf Uses,Range,Fail)",
   Callback = function()
		_G.Uses = 999
		_G.Range = 999
		_G.OnAnything = true
		_G.Fail = true
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Eletric Crucifix(Inf Uses,Range)",
   Callback = function()
		_G.Uses = 999
		_G.Range = 999
		_G.OnClick = true
		_G.Variant = "Eletric"
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Devil Crucifix(Inf Uses,Range)",
   Callback = function()
		_G.Uses = 999
		_G.Range = 999
		_G.OnClick = true
		_G.Variant = "Devil"
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Section = Tab:CreateSection("Good Range")

local Button = Tab:CreateButton({
   Name = "Crucifix On Anything (Good Range)",
   Callback = function()
		_G.Uses = 1
		_G.Range = 50
		_G.OnAnything = true
		_G.Fail = false
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Crucifix On Anything (Good Range,Fail)",
   Callback = function()
		_G.Uses = 1
		_G.Range = 50
		_G.OnAnything = true
		_G.Fail = true
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Eletric Crucifix(Good Range)",
   Callback = function()
		_G.Uses = 1
		_G.Range = 50
		_G.OnClick = true
		_G.Variant = "Eletric"
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Devil Crucifix(Inf Uses,Range)",
   Callback = function()
		_G.Uses = 1
		_G.Range = 50
		_G.OnClick = true
		_G.Variant = "Devil"
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Section = Tab:CreateSection("Slider")

local Slider = Tab:CreateSlider({
   Name = "Crucifix On Anything (Uses Slider)",
   Range = {0, 100},
   Increment = 1,
   Suffix = "Uses",
   CurrentValue = 1,
   Flag = "COAUS", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
		_G.Uses = Value
		_G.Range = 50
		_G.OnAnything = true
		_G.Fail = false
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Crucifix On Anything (Uses Slider,Fail)",
   Range = {0, 100},
   Increment = 1,
   Suffix = "Uses",
   CurrentValue = 1,
   Flag = "COAUSF", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
		_G.Uses = Value
		_G.Range = 50
		_G.OnAnything = true
		_G.Fail = true
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Eletric Crucifix (Uses Slider)",
   Range = {0, 100},
   Increment = 1,
   Suffix = "Uses",
   CurrentValue = 1,
   Flag = "ECUS", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
		_G.Uses = Value
		_G.Range = 50
		_G.OnClick = true
		_G.Variant = "Eletric"
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Slider = Tab:CreateSlider({
   Name = "Devil Crucifix (Uses Slider)",
   Range = {0, 100},
   Increment = 1,
   Suffix = "Uses",
   CurrentValue = 1,
   Flag = "DOAUS", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
		_G.Uses = Value
		_G.Range = 50
		_G.OnClick = true
		_G.Variant = "Devil"
		loadstring(game:HttpGet("https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua"))()
   end,
})

local Tab = Window:CreateTab("Modes", 11622366799) -- Title, Image
local Section = Tab:CreateSection("Yes")

local Button = Tab:CreateButton({
   Name = "Hardcore Mode Noonie Ver",
   Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/M4nh23/Rbx-Doors-Scripts/main/Hardcore_V5_Beta.lua"))()
			wait(20)
			firesignal(game.ReplicatedStorage.EntityInfo.Caption.OnClientEvent, "Loadstring made by me (M4nh23) , script made by Noonie & Ping")
   end,
})

local Button = Tab:CreateButton({
   Name = "Hardcore Mode Plamen",
   Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/plamen6789/HardcoreScriptDOORS/main/HardcoreModeScript"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Bomb Mode",
   Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Suntle/weird-sh/main/scripts/doorsbomb"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Impossible Mode",
   Callback = function()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/Ukazix/impossible-mode/main/Protected_79.lua.txt'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Mayhem Mode",
   Callback = function()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/HollowedOutMods/MayhemMode/main/loader.lua'))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Endless Doors in Doors",
   Callback = function()
			game.SoundService.AmbientReverb = "City"
			loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/Script.lua"))()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/ScriptNoAchievements.txt"))()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/seekeye.lua"))()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/seekmodel.lua"))()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/VictrolaRecreation.txt"))()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/MusicReplace.txt"))()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/DeathSound.txt"))()
   end,
})

local Tab = Window:CreateTab("Utilities", 11622366799) -- Title, Image
local Section = Tab:CreateSection("Some script made by me and some script made by PenguinMaiack")

local Button = Tab:CreateButton({
   Name = "Flashlight (F to turn on,G to turn off)",
   Callback = function()
			local suf = Instance.new("SurfaceLight")
			local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
			local uis = game:GetService("UserInputService")

			suf.Name = "Light"
			suf.Parent = hrp
			suf.Color = Color3.fromRGB(255, 255, 255)
			suf.Brightness = 0
			suf.Range = 60
			suf.Angle = 29
			suf.Shadows = false

			uis.InputBegan:Connect(function(i, p)
				if i.KeyCode == Enum.KeyCode.F then 	--F to turn on light
					suf.Brightness = 3
				end
			end)

			uis.InputEnded:Connect(function(i, p)
				if i.KeyCode == Enum.KeyCode.G then		--G to turn off light
					suf.Brightness = 0
				end
			end)
   end,
})

local Button = Tab:CreateButton({
   Name = "Better Flashlight (Same control)",
   Callback = function()
			local suf = Instance.new("SurfaceLight")
			local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
			local uis = game:GetService("UserInputService")

			suf.Name = "Light"
			suf.Parent = hrp
			suf.Color = Color3.fromRGB(140, 117, 105)
			suf.Brightness = 0
			suf.Range = 60
			suf.Angle = 29
			suf.Shadows = false

			uis.InputBegan:Connect(function(i, p)
				if i.KeyCode == Enum.KeyCode.F then 	--F to turn on light
					suf.Brightness = 5
				end
			end)

			uis.InputEnded:Connect(function(i, p)
				if i.KeyCode == Enum.KeyCode.G then		--G to turn off light
					suf.Brightness = 0
				end
	end)
})

local Button = Tab:CreateButton({
   Name = "Bypass Anti-Cheat",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/DoorsBypasses/DoorsACBypass.lua",true))()
   end,
})

local Button = Tab:CreateButton({
	Name = "Anti-Lag"
	Callback = function ()
				_G.Stop = false  --stop the script
				local function FOV()
	    			if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("CameraPositioner") then 
	        			game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("CameraPositioner"):Destroy()
	    			end
	    			local part = Instance.new("Part")
	    			part.Name = "CameraPositioner"
	    			part.Anchored = true 
	    			part.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
	    			part.CanCollide = false
	    			game:GetService("RunService").RenderStepped:Connect(function()
	        			part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(1,-100000000,-100)
	    			end)
	    			local camera = workspace.CurrentCamera
	    			camera.CameraSubject = part
	    			for _,v in pairs(workspace:GetDescendants()) do 
	    			if v:IsA("BasePart") then v.Material = Enum.Material.SmoothPlastic end  
	    			end 
	    			if _G.Stop then 
	        			camera.CameraSubject=game.Players.LocalPlayer.Character.Humanoid
	    			end 
				end 

				FOV()


			while  true do -- reset
				task.wait(8)


				_G.Stop = false
				local function FOV()
	    			if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("CameraPositioner") then 
	        			game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("CameraPositioner"):Destroy()
	    			end
	    			local part = Instance.new("Part")
	    			part.Name = "CameraPositioner"
	    			part.Anchored = true 
	    			part.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
	    			part.CanCollide = false
	    			game:GetService("RunService").RenderStepped:Connect(function()
	        			part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame*CFrame.new(1,-100000000,-100)
	    			end)
	    			local camera = workspace.CurrentCamera
	    			camera.CameraSubject = part
	    			for _,v in pairs(workspace:GetDescendants()) do 
	    			if v:IsA("BasePart") then v.Material = Enum.Material.SmoothPlastic end  
	    			end 
	    			if _G.Stop then 
	        			camera.CameraSubject=game.Players.LocalPlayer.Character.Humanoid
	    			end 
				end 

				FOV()
			end
	end,
})



local Tab = Window:CreateTab("Gui", 11622366799) -- Title, Image
local Section = Tab:CreateSection("Just some gui")

local Button = Tab:CreateButton({
   Name = "MorphGUI",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
		loadstring(game:HttpGet("raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Bypassed Dex V3",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Poop Doors Edited",
   Callback = function()
			loadstring(game:HttpGet(("https://raw.githubusercontent.com/mstudio45/poopdoors_edited/main/poopdoors_edited.lua"),true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "CMD-X",
   Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source",true))()
   end,
})

local Button = Tab:CreateButton({
   Name = "DeividComSono Drs Hub",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/DeividComSono/Scripts/main/6839171747.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "FE Trolling GUI",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Paid-Scripts/main/FE/TrollingGUI.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "MSDoors",
   Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/mstudio45/MSDOORS/main/MSDOORS.lua'))()
   end,
})

local Button = Tab:CreateButton({
	Name = "Long Sprint Gui"
	Callback = function ()
			local Sprint = Instance.new("Frame")
			local ImageLabel = Instance.new("ImageLabel")
			local UICorner = Instance.new("UICorner")
			local UIPadding = Instance.new("UIPadding")
			local Bar = Instance.new("Frame")
			local UICorner_2 = Instance.new("UICorner")
			local UIPadding_2 = Instance.new("UIPadding")
			local Fill = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")

			--Properties:

			local StaminaGui = Instance.new("ScreenGui")

			--Properties:

			StaminaGui.Name = "StaminaGui"
			StaminaGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
			StaminaGui.Enabled = true
			StaminaGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

			Sprint.Name = "Sprint"
			Sprint.Parent = StaminaGui
			Sprint.AnchorPoint = Vector2.new(0, 1)
			Sprint.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Sprint.BackgroundTransparency = 1.000
			Sprint.Position = UDim2.new(0.931555569, 0, 0.987179458, 0)
			Sprint.Size = UDim2.new(0.0556001104, 0, 0.0756410286, 0)
			Sprint.SizeConstraint = Enum.SizeConstraint.RelativeYY
			Sprint.ZIndex = 1005

			ImageLabel.Parent = Sprint
			ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 222, 189)
			ImageLabel.Size = UDim2.new(1, 0, 1, 0)
			ImageLabel.SizeConstraint = Enum.SizeConstraint.RelativeYY
			ImageLabel.Visible = false

			UICorner.CornerRadius = UDim.new(1, 0)
			UICorner.Parent = ImageLabel

			UIPadding.Parent = Sprint
			UIPadding.PaddingBottom = UDim.new(0.300000012, -5)
			UIPadding.PaddingLeft = UDim.new(0.0199999996, 0)
			UIPadding.PaddingRight = UDim.new(0.0500000007, -15)
			UIPadding.PaddingTop = UDim.new(0.300000012, -5)

			Bar.Name = "Bar"
			Bar.Parent = Sprint
			Bar.AnchorPoint = Vector2.new(0, 0.5)
			Bar.BackgroundColor3 = Color3.fromRGB(56, 46, 39)
			Bar.BackgroundTransparency = 0.700
			Bar.Position = UDim2.new(-2.72600269, 0, 0.499999672, 0)
			Bar.Size = UDim2.new(3.60599804, 0, 0.600000083, 0)
			Bar.ZIndex = 0

			UICorner_2.CornerRadius = UDim.new(0.25, 0)
			UICorner_2.Parent = Bar

			UIPadding_2.Parent = Bar
			UIPadding_2.PaddingBottom = UDim.new(0, 4)
			UIPadding_2.PaddingLeft = UDim.new(0, 4)
			UIPadding_2.PaddingRight = UDim.new(0, 4)
			UIPadding_2.PaddingTop = UDim.new(0, 4)

			Fill.Name = "Fill"
			Fill.Parent = Bar
			Fill.AnchorPoint = Vector2.new(0, 0.5)
			Fill.BackgroundColor3 = Color3.fromRGB(213, 185, 158)
			Fill.Position = UDim2.new(0, 0, 0.5, 0)
			Fill.Size = UDim2.new(1, 0, 1, 0)
			Fill.ZIndex = 2

			UICorner_3.CornerRadius = UDim.new(0.25, 0)
			UICorner_3.Parent = Fill

			local erm = Instance.new("ScreenGui")
			local ImageLabel = Instance.new("ImageLabel")
			erm.IgnoreGuiInset = true
			erm.Name = "erm"
			erm.Parent = Parent
			erm.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

			ImageLabel.Parent = erm
			ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ImageLabel.BackgroundTransparency = 1.000
			ImageLabel.Size = UDim2.new(1, 0, 0.998717964, 0)
			ImageLabel.Image = "rbxassetid://190596490"
			ImageLabel.ImageColor3 = Color3.fromRGB(0, 0, 0)

			ImageLabel.ImageTransparency = 1

			-- Services

			local Players = game:GetService("Players")
			local UIS = game:GetService("UserInputService")

			-- Variables

			local Plr = Players.LocalPlayer
			local Char = Plr.Character or Plr.CharacterAdded:Wait()
			local Hum = Char:WaitForChild("Humanoid")

			local stamina, staminaMax = 500, 500
			local sprintTime = 35
			local cooldown = false

			local ModuleScripts = {
				MainGame = require(Plr.PlayerGui.MainUI.Initiator.Main_Game),
			}

			-- Setup

			local nIdx; nIdx = hookmetamethod(game, "__newindex", newcclosure(function(t, k, v)
				if k == "WalkSpeed" then
					if ModuleScripts.MainGame.chase then
						v = ModuleScripts.MainGame.crouching and 15 or 22
					elseif ModuleScripts.MainGame.crouching then
						v = 8
					else
						v = isSprinting and 20 or 16
					end
				end

				return nIdx(t, k, v)
			end))

			-- Scripts

			sprintTime = math.max(sprintTime - 1, 1)
			local zerostamtween = game.TweenService:Create(ImageLabel,TweenInfo.new(12),{ImageTransparency = 0})
			UIS.InputBegan:Connect(function(key, gameProcessed)
				if not gameProcessed and key.KeyCode == Enum.KeyCode.Q and not cooldown and not ModuleScripts.MainGame.crouching then
					-- Sprinting

					isSprinting = true
					Hum:SetAttribute("SpeedBoost",4)
					zerostamtween:Play()
					while UIS:IsKeyDown(Enum.KeyCode.Q) and stamina > 0 do
						stamina = math.max(stamina - 1, 0)
						Fill.Size = UDim2.new(1 / staminaMax * stamina, 1, 1, 0)
						task.wait(sprintTime / 100)
			
					end

					-- Reset
					zerostamtween:Pause()
					isSprinting = false
					Hum:SetAttribute("SpeedBoost",0)
					game.TweenService:Create(ImageLabel,TweenInfo.new(1),{ImageTransparency = 1}):Play()
					Hum.WalkSpeed = 16

					if stamina == 0 then
						-- Cooldown
						firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent,"You're exhausted.")
						local noStamernaSound = Instance.new("Sound",workspace)
						noStamernaSound.SoundId = "rbxassetid://8258601891"
						noStamernaSound.Volume = 0.8
						noStamernaSound.PlayOnRemove = true
						noStamernaSound:Destroy()
						cooldown = true
						game.TweenService:Create(ImageLabel,TweenInfo.new(0.3),{ImageTransparency = 0}):Play()
						wait(0.3)
						game.TweenService:Create(ImageLabel,TweenInfo.new(10),{ImageTransparency = 1}):Play()
						for i = 1, staminaMax, 1 do
							stamina = i
							Fill.Size = UDim2.new(1 / staminaMax * i, 1, 1, 0)

							task.wait(sprintTime / 50)
						end

						cooldown = false
					else
						-- Refill
						cooldown = false
						Spawn(function()
			    		--wait(1)
				    		cooldown = false
						end)
						game.TweenService:Create(ImageLabel,TweenInfo.new(1),{ImageTransparency = 1}):Play()
						while not UIS:IsKeyDown(Enum.KeyCode.Q) do
							stamina = math.min(stamina + 1, staminaMax)
							Fill.Size = UDim2.new(1 / staminaMax * stamina, 1, 1, 0)

							task.wait(sprintTime / 50)
						end
					end        
				end
			end)
			Hum:SetAttribute("SpeedBoost",0)
			Hum.WalkSpeed = 16
	end,
})

local Tab = Window:CreateTab("Custom Entity Spawner", 1972219024) -- Title, Image
local Section = Tab:CreateSection("Killble")

local Button = Tab:CreateButton({
   Name = "Rebound",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Potato032/Entt/main/obf_aD5wikXg0gIS8Hoe65Vo4iR2KQAFUeGOH7367242Ch6VHK72Ty5Lzm8Jj6XYvmg6.lua.txt"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Matcher",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/Matcher.txt"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Blink",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/Blink%20Fixed.txt"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "OverSeer",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/overseer.txt"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Phil",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/Phil.txt"))()
   end,
})

local Section = Tab:CreateSection("Killble")

local Button = Tab:CreateButton({
   Name = "Phil",
   Callback = function()
		print("Soon...")
   end,
})

local Tab = Window:CreateTab("Others", 1972219024) -- Title, Image
local Section = Tab:CreateSection("Others thingy")

local Button = Tab:CreateButton({
   Name = "STOP POSTING ABOUT AMONG SUS (excute in door 0)",
   Callback = function()
			local model = game:GetObjects("rbxassetid://11947954739")[1]
			model.Parent = workspace
			model.Anchored = true
			model.CFrame = workspace.CurrentRooms[0].Parts.FrontDesk.Paper.CFrame * CFrame.new(0, .9, 0)
			model.Prompt.Triggered:Connect(function()
   	   			firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "you have been SUSED by the AMONGUS")
   	   			model["STOP POSTING ABOUT AMONG US (FULL, CLEAN)"]:Play()
			end)
   end,
})

local Button = Tab:CreateButton({
   Name = "Skeleton R00m i guess",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/DeividComSono/Scripts/main/Skeleton%20Room.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Lobby",
   Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Lobby/Lobby.lua"))()
   end,
})

local Button = Tab:CreateButton({
   Name = "Kick",
   Callback = function()
		game.Players.LocalPlayer:Kick("Kicked yourself")
   end,
})

local Button = Tab:CreateButton({
   Name = "n",
   Callback = function()
		while true do
			task.wait(1)
			print("n")
			firesignal(game.ReplicatedStorage.Bricks.EntityInfo.OnClientEvent, "n")
		end
   end,
})
