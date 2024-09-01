local isFlyEnabled = false
local canFly = true
local userInputService = game:GetService("UserInputService")
local localPlayer = game.Players.LocalPlayer
local function Fly(character, enable)
    local freecam = character:FindFirstChild("Freecam")
    if freecam then
        freecam.Enabled = enable
    end
end
local function setupCharacter(character)
    canFly = true
    character.Humanoid.Died:Connect(function()
        Fly(character, false)
        isFlyEnabled = false
        canFly = true
    end)
end
localPlayer.CharacterAdded:Connect(function(character)
    setupCharacter(character)
end)
userInputService.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.V and canFly and localPlayer.Character then
        isFlyEnabled = not isFlyEnabled
        Fly(localPlayer.Character, isFlyEnabled)
        canFly = false
    end
end)
if localPlayer.Character then
    setupCharacter(localPlayer.Character)
end
