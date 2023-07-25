-- Grimace [Horror] GUI - game.PlaceId
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Grimace [Horror] - 13896062842", Theme)

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

Section:NewSlider("Forced Walkspeed", "Forces the players walkspeed", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    local playerName = game.Players.LocalPlayer.Name
    local Player = game.Workspace[playerName]
    local PlayerWalkSpeed = Player.HumanoidRootPart.WalkSpeed

    -- Force the WalkSpeed
    if PlayerWalkSpeed > 0 then -- Fix to default walkspeed
        PlayerWalkSpeed = s
    end
    if PlayerWalkSpeed < 0 then -- Fix to default walkspeed
        PlayerWalkSpeed = s
    end
end)

local ItemsTab = Window:NewTab("Items")
local ItemsSection = ItemsTab:NewSection("Item Giver")

ShakesSection:NewButton("All Shakes", "Teleports All Grimace Shakes To Player", function()
    local playerName = game.Players.LocalPlayer.Name
    local PlayerCFrame = game.Workspace[playerName].HumanoidRootPart.CFrame
    local shakesFolder = game.Workspace.Collectibles

    for _, Part in ipairs(shakesFolder:GetChildren()) do
       if Part.Name == "Shake" then
          Part.CFrame = PlayerCFrame
       end
    end
end)

ShakesSection:NewButton("Saw", "Teleports saw to the player", function()
    local playerName = game.Players.LocalPlayer.Name
    local PlayerCFrame = game.Workspace[playerName].HumanoidRootPart.CFrame
    local ItemsFolder = game.Workspace.Items

    local SawBlade = Items.Saw.Saw.Blade
    local SawBolts = Items.Saw.Saw.Bolts
    local SawHandle = Items.Saw.Saw.Handle

    SawBlade.CFrame = PlayerCFrame
    SawBolts.CFrame = PlayerCFrame
    SawHandle.CFrame = PlayerCFrame
end)

Section:NewDropdown("Key", "Select key to give", {"Black Key", "Blue Key", "Green Key", "Pink Key", "Red Key", "White Key", "Yellow Key"}, function(selectedKey)
    if selectedKey == "Black Key" then
        local playerName = game.Players.LocalPlayer.Name
        local PlayerCFrame = game.Workspace[playerName].HumanoidRootPart.CFrame
        local keysFolder = game.Workspace.Items

        keysFolder["Black Key"].Key.Key.CFrame = PlayerCFrame
    end
    if selectedKey == "Blue Key" then
        local playerName = game.Players.LocalPlayer.Name
        local PlayerCFrame = game.Workspace[playerName].HumanoidRootPart.CFrame
        local keysFolder = game.Workspace.Items

        keysFolder["Blue Key"].Key.Key.CFrame = PlayerCFrame
    end
    if selectedKey == "Green Key" then
        local playerName = game.Players.LocalPlayer.Name
        local PlayerCFrame = game.Workspace[playerName].HumanoidRootPart.CFrame
        local keysFolder = game.Workspace.Items

        keysFolder["Green Key"].Key.Key.CFrame = PlayerCFrame
    end
    if selectedKey == "Pink Key" then
        local playerName = game.Players.LocalPlayer.Name
        local PlayerCFrame = game.Workspace[playerName].HumanoidRootPart.CFrame
        local keysFolder = game.Workspace.Items

        keysFolder["Pink Key"].Key.Key.CFrame = PlayerCFrame
    end
    if selectedKey == "Red Key" then
        local playerName = game.Players.LocalPlayer.Name
        local PlayerCFrame = game.Workspace[playerName].HumanoidRootPart.CFrame
        local keysFolder = game.Workspace.Items

        keysFolder["Red Key"].Key.Key.CFrame = PlayerCFrame
    end
    if selectedKey == "White Key" then
        local playerName = game.Players.LocalPlayer.Name
        local PlayerCFrame = game.Workspace[playerName].HumanoidRootPart.CFrame
        local keysFolder = game.Workspace.Items

        keysFolder["White Key"].Key.Key.CFrame = PlayerCFrame
    end
    if selectedKey == "Yellow Key" then
        local playerName = game.Players.LocalPlayer.Name
        local PlayerCFrame = game.Workspace[playerName].HumanoidRootPart.CFrame
        local keysFolder = game.Workspace.Items

        keysFolder["Yellow Key"].Key.Key.CFrame = PlayerCFrame
    end
end)
