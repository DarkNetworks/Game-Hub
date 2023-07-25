\--// Locals - Player
local LocalPlayer = game.Players.LocalPlayer
local Player = game.Workspace[LocalPlayer.Name]
local PlayerCFrame = Player.HumanoidRootPart.CFrame

--// Locals - Game
local Workspace = game.Workspace
local Shakes = game.Workspace.Collectibles
local Items = game.Workspace.Items
local Slows = game.Workspace.Slows
local SpawnCFrame = CFrame.new(-92.2540741, 3.25000334, 118.550003, -0.999883413, 3.23436744e-08, 0.0152697936, 3.06643173e-08, 1, -1.10213257e-07, -0.0152697936, -1.0973217e-07, -0.999883413)

--// GUI
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Grimace [Horror] - 13896062842", "DarkTheme")

local BadgesTab = Window:NewTab("Badges")
local BadgesSection = BadgesTab:NewSection("Badges")

BadgesSection:NewButton("???", "Gives The ??? Badge", function()
    local BadgeCFrame = CFrame.new(-99.9424973, 6.49350357, 54.7299805, 1, 0, 0, 0, 1, 0, 0, 0, 1)

    Player.HumanoidRootPart.CFrame = BadgeCFrame -- Changed PlayerCFrame to Player.HumanoidRootPart.CFrame
    wait(0.075)
    Player.HumanoidRootPart.CFrame = SpawnCFrame -- Changed PlayerCFrame to Player.HumanoidRootPart.CFrame
end)

BadgesSection:NewButton("EMPTY CUP", "Gives The EMPTY CUP Badge", function()
    local BadgeCFrame = CFrame.new(103.845001, 21.9935036, 193.979996, 1, 0, 0, 0, 1, 0, 0, 0, 1)

    Player.HumanoidRootPart.CFrame = BadgeCFrame -- Changed PlayerCFrame to Player.HumanoidRootPart.CFrame
    wait(0.075)
    Player.HumanoidRootPart.CFrame = SpawnCFrame -- Changed PlayerCFrame to Player.HumanoidRootPart.CFrame
end)

BadgesSection:NewButton("IMPOSSIBLE", "Gives The IMPOSSIBLE Badge", function()
    local BadgeCFrame = CFrame.new(-92.4049988, 21.9935036, 275.22998, 1, 0, 0, 0, 1, 0, 0, 0, 1)

    Player.HumanoidRootPart.CFrame = BadgeCFrame -- Changed PlayerCFrame to Player.HumanoidRootPart.CFrame
    wait(0.075)
    Player.HumanoidRootPart.CFrame = SpawnCFrame -- Changed PlayerCFrame to Player.HumanoidRootPart.CFrame
end)

local GameTab = Window:NewTab("Game")
local GameSection = GameTab:NewSection("Game")

GameSection:NewButton("Delete Slows", "Deletes grimace slow splashes on the ground", function()
     local Slows = game.Workspace.Slows

     for _, Child in ipairs(Slows:GetChildren()) do
        if Child.Name == "Slow" then
            Child:Destroy()
        end
    end
end)

GameSection:NewButton("Despawn Grimace", "Moves grimace far out of the map", function()
    local Grimace = game.Workspace.Entity -- Grimace
    local GrimaceHRP = game.Workspace.Entity.HumanoidRootPart

    GrimaceHRP.CFrame = CFrame.new(-9999, 9999, 9999, -9999, 9999, -9999, 9999, 9999, 9999, 9999, 9999, -9999)
    for _, Child in ipairs(Grimace:GetChildren()) do
        if Child.ClassName == "Part" then
            Child.Anchored = true
        end
    end
end)

GameSection:NewButton("All Shakes", "Moves all shakes to you", function()
    local PlayerName = game.Players.LocalPlayer.Name
    local PlayerCFrame = game.Workspace[PlayerName].HumanoidRootPart.CFrame
    -- Instant Pickup
    for _, Child in ipairs(Shakes:GetChildren()) do
       if Child.Name == "ProximityPrompt" then
           Child.HoldDuration = 0
        end
    end

    -- Teleport To Player
    for _, Shake in ipairs(Shakes:GetChildren()) do
        if Shake.Name == "Shake" then -- Changed "=" to "==" to fix the if statement
           Shake.CFrame = PlayerCFrame
        end
    end
end)
