-- Grimace [Horror] GUI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Grimace [Horror] - 13896062842", "Sentinel")

local PlayerTab = Window:NewTab("Player")
local PlayerSection = PlayerTab:NewSection("Player")

PlayerSection:NewButton("Disable Slows", "Disables purple shake spill slows on the ground", function()
    local SlowsFolder = game.Workspace.Slows

    for _, Part in ipairs(SlowsFolder:GetChildren()) do
        if Part.Name == "Slow" then
            Part:Destroy()
        end
    end
end)

PlayerSection:NewSlider("Forced Walkspeed", "Forces the players walkspeed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    local Player = game.Players.LocalPlayer.Character
    if Player and Player:FindFirstChild("Humanoid") then
        Player.Humanoid.WalkSpeed = s
    end
end)

local ItemsTab = Window:NewTab("Items")
local ItemsSection = ItemsTab:NewSection("Item Giver")

ItemsSection:NewButton("All Shakes", "Teleports All Grimace Shakes To Player", function()
    local playerName = game.Players.LocalPlayer.Name
    local PlayerCFrame = game.Workspace[playerName].HumanoidRootPart.CFrame
    local shakesFolder = game.Workspace.Collectibles

    for _, Part in ipairs(shakesFolder:GetChildren()) do
        if Part.Name == "Shake" then
            Part.CFrame = PlayerCFrame
        end
    end
end)

ItemsSection:NewButton("Saw", "Teleports saw to the player", function()
    local playerName = game.Players.LocalPlayer.Name
    local PlayerCFrame = game.Workspace[playerName].HumanoidRootPart.CFrame
    local ItemsFolder = game.Workspace.Items

    local SawBlade = ItemsFolder.Saw.Blade
    local SawBolts = ItemsFolder.Saw.Bolts
    local SawHandle = ItemsFolder.Saw.Handle

    SawBlade.CFrame = PlayerCFrame
    SawBolts.CFrame = PlayerCFrame
    SawHandle.CFrame = PlayerCFrame
end)

ItemsSection:NewDropdown("Key", "Select key to give", {"Black Key", "Blue Key", "Green Key", "Pink Key", "Red Key", "White Key", "Yellow Key"}, function(selectedKey)
    local playerName = game.Players.LocalPlayer.Name
    local PlayerCFrame = game.Workspace[playerName].HumanoidRootPart.CFrame
    local keysFolder = game.Workspace.Items

    keysFolder[selectedKey.." Key"].Key.Key.CFrame = PlayerCFrame
end)
