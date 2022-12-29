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

--anti fling
local mouse = game.Players.LocalPlayer:GetMouse()
mouse.KeyDown:Connect(function(k) 
    if k == "4" then
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

