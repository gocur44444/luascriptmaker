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
            highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
            highlight.Parent = player.Character
        end
    end
end

-- Connect the function to the PlayerAdded event to outline new players
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        local highlight = Instance.new("Highlight")
        highlight.Adornee = character
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.Parent = character
    end)
end)

-- Initial call to outline players already in the game
outlinePlayers()

-- Function to make players visible through walls, heal to full health, and make them walk through walls
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
        wait(0.1) -- Wait for 0.1 second before refreshing
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
    -- Refresh settings when a new player joins
    refreshPlayerSettings()
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
