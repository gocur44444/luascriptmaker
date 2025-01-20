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
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")

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

-- Function to make players visible through walls and heal to full health
local function refreshPlayerSettings()
    while true do
        for _, player in pairs(Players:GetPlayers()) do
            if player.Character then
                local highlight = player.Character:FindFirstChildOfClass("Highlight")
                if highlight then
                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                end
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid.Health = humanoid.MaxHealth
                end
            end
        end
        wait(1) -- Wait for 1 second before refreshing
    end
end

-- Connect the function to the PlayerAdded event to apply settings to new players
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local highlight = character:FindFirstChildOfClass("Highlight")
        if highlight then
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        end
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.Health = humanoid.MaxHealth
        end
    end)
end)

TeleportService.TeleportInitFailed:Connect(function(player, teleportResult)
    -- Reapply visibility settings if teleport fails
    refreshPlayerSettings()
end)

-- Initial call to refresh player settings
spawn(refreshPlayerSettings)
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")

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

-- Function to make players visible through walls and heal to full health
local function refreshPlayerSettings()
    while true do
        for _, player in pairs(Players:GetPlayers()) do
            if player.Character then
                local highlight = player.Character:FindFirstChildOfClass("Highlight")
                if highlight then
                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                end
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid.Health = humanoid.MaxHealth
                end
            end
        end
        wait(1) -- Wait for 1 second before refreshing
    end
end

-- Connect the function to the PlayerAdded event to apply settings to new players
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local highlight = character:FindFirstChildOfClass("Highlight")
        if highlight then
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        end
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.Health = humanoid.MaxHealth
        end
    end)
end)

TeleportService.TeleportInitFailed:Connect(function(player, teleportResult)
    -- Reapply visibility settings if teleport fails
    refreshPlayerSettings()
end)

-- Initial call to refresh player settings
spawn(refreshPlayerSettings)

-- Function to aim at another player's head
local function aimAtPlayerHead(targetPlayer)
    local localPlayer = Players.LocalPlayer
    if localPlayer.Character and targetPlayer.Character then
        local targetHead = targetPlayer.Character:FindFirstChild("Head")
        if targetHead then
            localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(localPlayer.Character.HumanoidRootPart.Position, targetHead.Position)
        end
    end
end

-- Example usage: Aim at the first player in the game (excluding the local player)
local targetPlayer = Players:GetPlayers()[2] -- Assuming the local player is the first in the list
if targetPlayer then
    aimAtPlayerHead(targetPlayer)
end
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")

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

-- Function to make players visible through walls and heal to full health
local function refreshPlayerSettings()
    while true do
        for _, player in pairs(Players:GetPlayers()) do
            if player.Character then
                local highlight = player.Character:FindFirstChildOfClass("Highlight")
                if highlight then
                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                end
                local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid.Health = humanoid.MaxHealth
                end
                -- Make player walk through walls
                for _, part in pairs(player.Character:GetChildren()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                    end
                end
            end
        end
        wait(1) -- Wait for 1 second before refreshing
    end
end

-- Connect the function to the PlayerAdded event to apply settings to new players
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local highlight = character:FindFirstChildOfClass("Highlight")
        if highlight then
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        end
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.Health = humanoid.MaxHealth
        end
        -- Make player walk through walls
        for _, part in pairs(character:GetChildren()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end)
end)

TeleportService.TeleportInitFailed:Connect(function(player, teleportResult)
    -- Reapply visibility settings if teleport fails
    refreshPlayerSettings()
end)

-- Initial call to refresh player settings
spawn(refreshPlayerSettings)

-- Function to aim at another player's head
local function aimAtPlayerHead(targetPlayer)
    local localPlayer = Players.LocalPlayer
    if localPlayer.Character and targetPlayer.Character then
        local targetHead = targetPlayer.Character:FindFirstChild("Head")
        if targetHead then
            localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(localPlayer.Character.HumanoidRootPart.Position, targetHead.Position)
        end
    end
end

-- Example usage: Aim at the first player in the game (excluding the local player)
local targetPlayer = Players:GetPlayers()[2] -- Assuming the local player is the first in the list
if targetPlayer then
    aimAtPlayerHead(targetPlayer)
end
