local player = game.Players.LocalPlayer
local UIS = game:GetService("UserInputService")

local normalSpeed = 16
local sprintSpeed = 80 -- можешь менять скорость

local function setSpeed(speed)
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.WalkSpeed = speed
end

UIS.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end

    if input.KeyCode == Enum.KeyCode.LeftShift then
        setSpeed(sprintSpeed)
    end
end)

UIS.InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftShift then
        setSpeed(normalSpeed)
    end
end)
