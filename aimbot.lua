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
