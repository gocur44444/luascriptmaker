local Players = game:GetService("Players")

-- Function to print the names of all players in the game
local function printPlayerNames()
    for _, player in pairs(Players:GetPlayers()) do
        print(player.Name)
    end
end

-- Connect the function to the PlayerAdded event to print names when a new player joins
Players.PlayerAdded:Connect(function(player)
    print(player.Name .. " has joined the game.")
    printPlayerNames()
end)

-- Initial call to print the names of players already in the game
printPlayerNames()
-- Function to outline all players in the game
local function outlinePlayers()
    for _, player in pairs(Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local highlight = Instance.new("Highlight")
            highlight.Adornee = player.Character
            highlight.Parent = player.Character
        end
    end
end

-- Connect the function to the PlayerAdded event to outline new players
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local highlight = Instance.new("Highlight")
        highlight.Adornee = character
        highlight.Parent = character
    end)
end)

-- Initial call to outline players already in the game
outlinePlayers()
-- Function to make players visible through walls
local function makePlayersVisibleThroughWalls()
    for _, player in pairs(Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local highlight = player.Character:FindFirstChildOfClass("Highlight")
            if highlight then
                highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            end
        end
    end
end

-- Connect the function to the PlayerAdded event to make new players visible through walls
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local highlight = character:FindFirstChildOfClass("Highlight")
        if highlight then
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        end
    end)
end)

-- Initial call to make players already in the game visible through walls
makePlayersVisibleThroughWalls()
local function makePlayersVisibleThroughWalls()
    while true do
        for _, player in pairs(game.Players:GetPlayers()) do
            if player.Character then
                local highlight = player.Character:FindFirstChildOfClass("Highlight")
                if highlight then
                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                end
            end
        end
        wait(1) -- Wait for 1 second before refreshing
    end
end

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local highlight = character:FindFirstChildOfClass("Highlight")
        if highlight then
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        end
    end)
end)

-- Initial call to make players already in the game visible through walls
spawn(makePlayersVisibleThroughWalls)
local TeleportService = game:GetService("TeleportService")

local function makePlayersVisibleThroughWalls()
    while true do
        for _, player in pairs(game.Players:GetPlayers()) do
            if player.Character then
                local highlight = player.Character:FindFirstChildOfClass("Highlight")
                if highlight then
                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                end
            end
        end
        wait(1) -- Wait for 1 second before refreshing
    end
end

game.Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local highlight = character:FindFirstChildOfClass("Highlight")
        if highlight then
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        end
    end)
end)

TeleportService.TeleportInitFailed:Connect(function(player, teleportResult)
    -- Reapply visibility settings if teleport fails
    makePlayersVisibleThroughWalls()
end)

-- Initial call to make players already in the game visible through walls
spawn(makePlayersVisibleThroughWalls)
-- Script to aim at a player's head

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local mouse = player:GetMouse()

-- Function to aim at the player's head
local function aimAtHead(targetPlayer)
    local targetCharacter = targetPlayer.Character
    if targetCharacter then
        local head = targetCharacter:FindFirstChild("Head")
        if head then
            -- Set the camera to aim at the player's head
            local camera = workspace.CurrentCamera
            camera.CFrame = CFrame.new(camera.CFrame.Position, head.Position)
        end
    end
end

-- Connect mouse click event to aim
mouse.Button1Down:Connect(function()
    local targetPlayer = Players:GetPlayerFromCharacter(mouse.Target.Parent)
    if targetPlayer and targetPlayer ~= player then
        aimAtHead(targetPlayer)
    end
end)
