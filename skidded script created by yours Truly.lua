-- ok so welcome to the skid script
-- idk why i made it, i was just bored and wanted to make an skid script
-- and maby for fame idk, anyways have fun wigh it you little ###, awh to bad it got tagged
-- you can prob fill that in so yea gl
-- ow yea i put no effort into this script so just know that

local timeforplayer = game.Players.LocalPlayer
local skid = false
local otherplayers = game.Players
local UI = Instance.new("ScreenGui")
local Ui = Instance.new("Frame")
local cheescake = Instance.new("TextLabel")
local Mode = Instance.new("TextLabel")


game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
game.ReplicatedStorage.Remotes.Functions:InvokeServer({getrenv()._G.Pass,"ChangeSetting","MorphEnabled",true})
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = "Chara"
wait(1)


-- Kick message: No
timeforplayer.Character.Head.HealthBar:Destroy()

-- god mode BABY
game.Players.LocalPlayer.Character:WaitForChild("ForceField"):Destroy()
local v1 = {
    [1] = getrenv()._G.Pass, 
    [2] = "Damage", 
    [3] = math.huge, 
    [4] = game.Players.LocalPlayer.Character
}
local event = game:GetService("ReplicatedStorage").Remotes.Events
event:FireServer(v1)
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
    if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.Humanoid.Health = 1
    end
end)


wait(2)

local ya = getrawmetatable(game)
local mum = ya.__namecall
setreadonly(ya, false)
ya.__namecall =
    newcclosure(
    function(name, ...)
        local tabs = {...}
        if getnamecallmethod() == "InvokeServer" and tostring(name) == "Damage" then
            tabs[3]["HitEffect"] = "HeavyHitEffect" -- any hit effect (use dex if u not know any)
            tabs[3]["Damage"] = "NaN" -- 40 max for knockback, 10 max for normal hits
            tabs[3]["Type"] = "Knockback" -- type (knockback or normal)
            tabs[3]["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * 175 -- m1 knockback go brrrr
        end
        return mum(name, unpack(tabs))
    end
)

setreadonly(ya, true)

local uis = game:GetService("UserInputService")
local player = game.Players.LocalPlayer

uis.InputBegan:Connect(function(inputs, event)
	if event == true then return end

	if inputs.KeyCode == Enum.KeyCode.R then

		if player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value == nil then

			print("mouse cframe teleport")

			local cfr = player:GetMouse().Hit

			player.Character:SetPrimaryPartCFrame(cfr * CFrame.new(0, 2, 0))

		else

			print("player cframe teleport")

			local Tcf = player.Backpack:WaitForChild("Main").LockOnScript.LockOn.Value:GetPrimaryPartCFrame()

			player.Character:SetPrimaryPartCFrame(Tcf * CFrame.new(0, 0, 3))

		end

	end

end)

char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == "Reset" or v.Name == "Grounded" or v.Name == "KnockedBack" or v.Name == "StayGrounded" or v.Name == "DamagedC" then
                v:Destroy()
            end
        end
    until false
end)

char = game.Players.LocalPlayer.Character
spawn(function()
    repeat wait()
        for _,v in pairs(char:GetChildren()) do
            if v.Name == 'DrainStamina' or v.Name == 'DrainSprint' or v.Name == 'Hit' or v.Name == 'Hitt' or v.Name == 'Damaged' or v.Name == "Reset" or v.Name == "Grounded" or v.Name == "KnockedBack" or v.Name == "StayGrounded" or v.Name == "DamagedC" then
                v:Destroy()
            end
        end
    until false
end)

--no toughy toughy
 delay(0.1, function ()
        for _, v in pairs(getgc()) do
            if type(v) == 'function' and string.find(debug.getinfo(v)['source'], 'CharaMoves') then
                local SafeKeycodes = {
                    ['Enum.KeyCode.W'] = true,
                    ['Enum.KeyCode.A'] = true,
                    ['Enum.KeyCode.S'] = true,
                    ['Enum.KeyCode.D'] = true,
                    ['Enum.KeyCode.F'] = true
                }

                for i2, v2 in pairs(debug.getconstants(v)) do
                    if string.find(tostring(v2), 'Enum.KeyCode')and not SafeKeycodes[tostring(v2)] then
                        debug.setconstant(v, i2, Enum)
                    end
                end
            end
        end
 end)


-- no soul stealing today BOYY
spawn(function()
    game:WaitForChild("Run Service").Heartbeat:Connect(function()
        for _,v in pairs(workspace:GetDescendants()) do
            if v.Name == "BettyHeart" then
                v:Destroy()
                game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
            end
        end
    end)
end)

-- just for the skiddy name/i mean tottaly cool name
game.Players.LocalPlayer.Chatted:Connect(function(Chat)
local A_1 =  {
          [1] = getrenv()._G.Pass, 
          [2] = "Chatted", 
          [3] = '[ SLAYER OF GODS ]\n' ..Chat, 
          [4] = Color3.fromRGB(255,0,0)
    }
    local Event = game:GetService("ReplicatedStorage").Remotes.Events
    Event:FireServer(A_1)
end)

-- voice thingy why am i even explaining this
game.Players.LocalPlayer.Character.Head.Voice.SoundId = "rbxassetid://7807218979"



--NAN ATTACK
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "1" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [SLAYER OF GODS] NAN ATTACK]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback2, 
                ["Velocity"] = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector * 199,
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.Snap, 
                ["Damage"] = "NaN"
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)

--freeze clients
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "2" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [SLAYER OF GODS] FREESE ATTACK ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Knockback",
                ["HitEffect"] = "HeavyHitEffect",
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Stunned,
                ["HitTime"] = 2.5,
                ["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.Snap,
                ["Damage"] = 0
            }
        }
        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
end
end)

--sweep
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "3" then
        local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [SLAYER OF GODS] FLIP ATTACK]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
		local Anim = Instance.new("Animation")
		Anim.AnimationId = "rbxassetid://5657458641"
		local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
		k:Play()
		k:AdjustSpeed(1)
local v1 = getrenv()._G.Pass
local v2 = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
local v3 = {
    ["HitTime"] = 0.1, 
    ["Type"] = "Knockback", 
    ["HitEffect"] = "BoneHitEffect", 
    ["Velocity"] = Vector3.new(0,100,0),
    ["CombatInv"] = true,
    ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Hurt3, 
    ["VictimCFrame"] = CFrame.new(-175.879379, 4.92168856, -267.05835, 0.151388139, 0, -0.988474429, 0, 1, 0, 0.988474429, 0, 0.151388139), 
    ["Sound"] = game:GetService("ReplicatedStorage").Sounds.Ping, 
    ["Damage"] = 1
}
wait(0.1)
for i,v in pairs(getconnections(game:GetService("ReplicatedStorage").Remotes.Effects.OnClientEvent)) do
v:Fire({"Model","PurpleBurst",game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value.HumanoidRootPart.CFrame})
end
local event = game:GetService("ReplicatedStorage").Remotes.Damage
event:InvokeServer(v1, v2, v3)
end    
end)

--Sans Breaker attack
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "4" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [SLAYER OF GODS] Remove Player ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
    repeat
        wait()
        local args = {
            [1] = getrenv()._G.Pass,
            [2] = game:service("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value,
            [3] = {
                ["Type"] = "Normal", 
                ["HitTime"] = 1, 
                ["HurtAnimation"] = game:GetService("ReplicatedStorage").Animations.HurtAnimations.Knockback3, 
                ["Velocity"] = Vector3.new(0,-2,0),
                ["HitEffect"] = "LightHitEffect", 
                ["CombatInv"] = true, 
                ["Sound"] = game:GetService("ReplicatedStorage").RogueSounds.Snap, 
                ["Damage"] = 10
            }
        }

        game:GetService("ReplicatedStorage").Remotes.Damage:InvokeServer(unpack(args))
until game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value == nil
end
end)

--fling
game:GetService("UserInputService").InputBegan:Connect(function(inp)
    if inp.KeyCode == Enum.KeyCode.Zero then
local A_1 = {
                        [1] = getrenv()._G.Pass,
                        [2] = "Chatted",
                        [3] = [[ [SLAYER OF GODS] FLING PLAYER ]],
                        [4] = Color3.new(1, 0, 0)
                    }
                    local Event = game:GetService("ReplicatedStorage").Remotes.Events
                    Event:FireServer(A_1)
local part = Instance.new("Part")
part.Parent = Game.Workspace
part.Anchored = true
part.Position = Vector3.new(20.4143,-143.366,3483.62)
part.Size = Vector3.new(16,1.2,16)
part.Name = "FlignPart"
local part = Instance.new("Part")
part.Parent = Game.Workspace
part.Anchored = true
part.CanCollide = falsed
part.Size = Vector3.new(0.1,0.2,0.1)
part.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
part.Name = "tp"
wait(5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(20.4143,-141.366,3483.62) 
wait(0.2)
spawn(function()
        local LockOn = game.Players.LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        m = game.Players.LocalPlayer:GetMouse()
        if LockOn then
            target = LockOn
            r2 = target.HumanoidRootPart.CFrame
        elseif not LockOn then
            r2 = m.Hit * CFrame.new(0, 4, 0)
        end
        local A_1 = {
            [1] = getrenv()._G.Pass,
            [2] = "PatienceAttack",
            [3] = r2.p,
            [4] = game:GetService("Players").LocalPlayer.Backpack.Main.LockOnScript.LockOn.Value
        }
        local Event = game:GetService("ReplicatedStorage").Remotes.CharaMoves
        Event:InvokeServer(A_1)
end)
wait(3.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.tp.CFrame
game.Workspace.tp:Destroy()
game.Workspace.FlignPart:Destroy()
    end
               end)


--anti fling
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "6" then
		local A_1 = 
			{
				[1] = getrenv()._G.Pass,
				[2] = "Chatted", 
				[3] = [[ [SLAYER OF GODS] ANTI FLING ]], 
				[4] = Color3.new(1,1,1)
			}
		local Event = game:GetService("ReplicatedStorage").Remotes.Events
		Event:FireServer(A_1) 
        antifling = false
        char = game.Players.LocalPlayer.Character
        local vel = Instance.new('BodyVelocity',char.HumanoidRootPart)
        vel.Name = 'Client'
        vel.MaxForce = Vector3.new(4000,4000,4000)*math.huge
        vel.P = math.huge
        vel.Velocity = Vector3.new(0,0,0)
end
end)

local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(0.1)
game.Players.LocalPlayer.Backpack.Main.RunSpeed.Value = 200
local bypass = Instance.new("BoolValue")
bypass.Name = "Battling"
bypass.Parent = game.Players.LocalPlayer.Character
wait(0.1)
game.Players.LocalPlayer.Backpack.Main.WalkSpeed.Value = 60
wait(0.1)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150

-- cool knife
local bladev2 = game.Players.LocalPlayer.Character.RealKnife.Blade

local effect1 = game.ReplicatedStorage.Effects.Zanzoken.ParticleEmitter:Clone()    
effect1.Parent = game.Players.LocalPlayer.Character.RealKnife.Blade
while true do
	
	task.wait(0.2)
	
	bladev2.BrickColor = BrickColor.Random()
end

