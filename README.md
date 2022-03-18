if game:GetService("CoreGui"):FindFirstChild("KONGKIRT HUB") then





   game:GetService("CoreGui"):FindFirstChild("KONGKIRT HUB"):Destroy()

end
local UILib = loadstring(game:HttpGet('https://raw.githubusercontent.com/kickTh/New-Ui/main/ABC_Ui.txt'))()

local win = UILib:Window("KONGKIRT HUB",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)
local MainSection = win:Tab("Tp")

MainSection:Button("Cafe", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-379.22265625, 73.3730239868164, 223.18289184570312)
end)

MainSection:Button("2-1", function()

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-285.2917175292969, 306.2019958496094, 592.4241333007812)

end)

MainSection:Dropdown("Dropdown 1", {"1","2","3"}, function(String)

end)
MainSection:Slider("Slider",0,100,16,true, function(State)
    
end)

local Settings = win:Tab("Settings")
Settings:Button("Copy Discord Invite", function()
    setclipboard("https://discord.gg/u2sVqMEVcq")
    UILib:Notification("Notification", "Copied!", "Okay")
end)
Settings:Button("KEE HEE", function()
   setclipboard("")
   UILib:Notification("Notification", "Copied!", "Okay")
end)
