local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/kickTh/New-Ui/main/discord%20lib%20(1).txt")()

local win = DiscordLib:Window("discord library")

local serv = win:Server("Preview", "http://www.roblox.com/asset/?id=6031075938")

local btns = serv:Channel("Buttons")

btns:Toggle("Kill all", function()
DiscordLib:Notification("Notification", "Killed everyone!", "Okay!")
end)

btns:Seperator()

btns:Button("Get max level", function()
DiscordLib:Notification("Notification", "Max level!", "Okay!")
end)

local tgls = serv:Channel("Toggles")

tgls:Toggle("Auto-Farm",false, function(bool)
print(bool)
end)

local sldrs = serv:Channel("Sliders")

local sldr = sldrs:Slider("Slide me!", 0, 1000, 400, function(t)
print(t)
end)

sldrs:Button("Change to 50", function()
sldr:Change(50)
end)

local drops = serv:Channel("Dropdowns")


local drop = drops:Dropdown("Pick me!",{"Option 1","Option 2","Option 3","Option 4","Option 5"}, function(bool)
print(bool)
end)

drops:Button("Clear", function()
drop:Clear()
end)

drops:Button("Add option", function()
drop:Add("Option")
end)

local clrs = serv:Channel("Colorpickers")

clrs:Colorpicker("ESP Color", Color3.fromRGB(255,1,1), function(t)
print(t)
end)

local textbs = serv:Channel("Textboxes")

textbs:Textbox("Gun power", "Type here!", true, function(t)
print(t)
end)

local lbls = serv:Channel("Labels")

lbls:Label("This is just a label.")

local bnds = serv:Channel("Binds")

bnds:Bind("Kill bind", Enum.KeyCode.RightShift, function()
print("Killed everyone!")
end)

serv:Channel("by dawid#7205")


win:Server("Main", "http://www.roblox.com/asset/?id=6031075938")
btns = serv:Channel("Main")

btns:Toggle("Auto Farm",false, function(bool)

_G.FARM = bool -- true = ON  /  false = OFF
_G.MON = "Bandit [Lv. 5]" -- NAME MONSTER
_G.TOOL = "Combat" -- Weapon name
_G.FARMMETHOD = 1 -- MODE FARM (1/3)
_G.HideHB = true -- HIDEHITBOX


-- =[[ FUNCTION ]]= --



function EquipTool() -- WEAPON EQUIP
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == _G.TOOL then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
    end


function quest() -- CHECK QUESY AND AUTO QUEST
    local MYLEVEL = game:GetService("Players").LocalPlayer.Data.Level.Value
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    
    elseif MYLEVEL == 1 or MYLEVEL <= 9 then

local args = {
    [1] = "StartQuest",
    [2] = "BanditQuest1",
    [3] = 1
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

    

end

end


function attack() -- AUTO ATTACK
    game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end


function hitbox() -- HITBOX
    local enamie = game:GetService("Workspace").Enemies:GetChildren()
    
    for i,v in pairs(enamie) do
        v.HumanoidRootPart.Size = Vector3.new(0,0,0)
        v.HumanoidRootPart.CanCollide = true
        if _G.HideHB == true then
        v.HumanoidRootPart.Transparency = 1
        elseif _G.HideHB == false then
            v.HumanoidRootPart.Transparency = 0.9
            end
        end
    
    end

function TPTOMON() -- FARM MODE
if game:GetService("Workspace").Enemies[_G.MON].Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1062.7824707031, 16.516611099243, 1539.5036621094)
elseif _G.FARMMETHOD == 1 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,0,20)

elseif _G.FARMMETHOD == 2 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,30,0)
elseif    _G.FARMMETHOD == 3 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
        end


end



-- =[[ Autofarm ]]= --

while _G.FARM do  wait()
    print("SHARK X HUB | NO 1") -- DON'T DELETE ME :angry:
    EquipTool()
    TPTOMON()
    hitbox()
    attack()
    quest()
    end
end

-- =[[ Autofarm Setting ]]= --



_G.FARM = bool -- true = ON  /  false = OFF
_G.MON = "Monkey [Lv. 9]" -- NAME MONSTER
_G.TOOL = "Combat" -- Weapon name
_G.FARMMETHOD = 1 -- MODE FARM (1/3)
_G.HideHB = false -- HIDEHITBOX


-- =[[ FUNCTION ]]= --



function EquipTool() -- WEAPON EQUIP
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v.name == _G.TOOL then
            v.Parent = game.Players.LocalPlayer.Character
        end
    end
    end


function quest() -- CHECK QUESY AND AUTO QUEST
    local MYLEVEL = game:GetService("Players").LocalPlayer.Data.Level.Value
if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    
    elseif MYLEVEL == 1 or MYLEVEL <= 9 then

local args = {
    [1] = "StartQuest",
    [2] = "BanditQuest1",
    [3] = 1
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

    

end

end


function attack() -- AUTO ATTACK
    game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end


function hitbox() -- HITBOX
    local enamie = game:GetService("Workspace").Enemies:GetChildren()
    
    for i,v in pairs(enamie) do
        v.HumanoidRootPart.Size = Vector3.new(0,0,0)
        v.HumanoidRootPart.CanCollide = true
        if _G.HideHB == true then
        v.HumanoidRootPart.Transparency = 1
        elseif _G.HideHB == false then
            v.HumanoidRootPart.Transparency = 0.5
            end
        end
    
    end

function TPTOMON() -- FARM MODE
if game:GetService("Workspace").Enemies[_G.MON].Humanoid.Health == 0 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1062.7824707031, 16.516611099243, 1539.5036621094)
elseif _G.FARMMETHOD == 1 then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,0,20)

elseif _G.FARMMETHOD == 2 then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,30,0)
elseif    _G.FARMMETHOD == 3 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies[_G.MON].HumanoidRootPart.CFrame * CFrame.new(0,-10,0)
        end
end
while _G.FARM do  wait()
    print("SHARK X HUB | NO 1") -- DON'T DELETE ME :angry:
    EquipTool()
    TPTOMON()
    hitbox()
    attack()
    quest()
    end

btns:Toggle("Fast Attack",false, function(bool)
    
(getgenv()).Config = {
 ["FastAttack"] = bool,
 ["ClickAttack"] = bool
} 

coroutine.wrap(function()
local StopCamera = require(game.ReplicatedStorage.Util.CameraShaker)StopCamera:Stop()
    for v,v in pairs(getreg()) do
        if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework then
             for v,v in pairs(debug.getupvalues(v)) do
                if typeof(v) == "table" then
                    spawn(function()
                        game:GetService("RunService").RenderStepped:Connect(function()
                            if getgenv().Config['FastAttack'] then
                                 pcall(function()
                                     v.activeController.timeToNextAttack = -(math.huge^math.huge^math.huge)
                                     v.activeController.attacking = false
                                     v.activeController.increment = 4
                                     v.activeController.blocking = false   
                                     v.activeController.hitboxMagnitude =150
    		                         v.activeController.humanoid.AutoRotate = true
    	                      	     v.activeController.focusStart = 0
    	                      	     v.activeController.currentAttackTrack = 0
                                     sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRaxNerous", math.huge)
                                 end)
                             end
                         end)
                    end)
                end
            end
        end
    end
end)();

spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
        if getgenv().Config['ClickAttack'] then
             pcall(function()
                game:GetService'VirtualUser':CaptureController()
			    game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
            end)
        end
    end)
    end)
end)

btns:Toggle("bing mon",false, function(bool)
    _G.bringmob = true
while _G.bringmob do wait()
    pcall(function()
for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
for x,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
if v.Name == "Bandit [Lv. 5]" then
    if y.Name == "Bandit [Lv. 5]" then
   v.HumanoidRootPart.CFrame = y.HumanoidRootPart.CFrame
   v.HumanoidRootPart.Size = Vector3.new(60,60,60)
   y.HumanoidRootPart.Size = Vector3.new(60,60,60)
   v.HumanoidRootPart.Transparency = 1
   v.HumanoidRootPart.CanCollide = false
   y.HumanoidRootPart.CanCollide = false
   v.Humanoid.WalkSpeed = 0
   y.Humanoid.WalkSpeed = 0
   v.Humanoid.JumpPower = 0
   y.Humanoid.JumpPower = 0
   if sethiddenproperty then
     sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
end
end
end
end
end
end)
end
end)
