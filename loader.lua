
if Genryhna_LOADED then
    local TweenService = game:GetService("TweenService")
    local UserInputService = game:GetService("UserInputService")

    local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
    ScreenGui.Name = "NotificationGui"

    local Frame = Instance.new("Frame", ScreenGui)
    local UICorner = Instance.new("UICorner", Frame)
    local Title = Instance.new("TextLabel", Frame)
    local Separator = Instance.new("Frame", Frame)
    local Content = Instance.new("TextLabel", Frame)
    local DiscordButton = Instance.new("TextButton", Frame)
    local ButtonUICorner = Instance.new("UICorner", DiscordButton)

    Frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
    Frame.Size = UDim2.new(0, 200, 0, 140)
    Frame.Position = UDim2.new(0.5, 0, 1, -60)
    Frame.AnchorPoint = Vector2.new(0.5, 1)
    Frame.BackgroundTransparency = 1

    UICorner.CornerRadius = UDim.new(0, 10)

    Title.Text = "Script already loaded."
    Title.Size = UDim2.new(0.85, 0, 0.2, 0)
    Title.Position = UDim2.new(0.08, 0, 0.05, 0)
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextScaled = true
    Title.BackgroundTransparency = 1
    Title.Font = Enum.Font.GothamBold

    Separator.BackgroundColor3 = Color3.fromRGB(128, 128, 128)
    Separator.Size = UDim2.new(1, 0, 0, 1)
    Separator.Position = UDim2.new(0, 0, 0.3, 0)
    Separator.BorderSizePixel = 0

    Content.Text = "Having issues? Report to us on our Discord server."
    Content.Size = UDim2.new(0.8, 0, 0.3, 0)
    Content.Position = UDim2.new(0.1, 0, 0.35, 0)
    Content.TextColor3 = Color3.fromRGB(255, 255, 255)
    Content.TextScaled = true
    Content.BackgroundTransparency = 1
    Content.Font = Enum.Font.Gotham
    Content.LineHeight = 1.1

    DiscordButton.Text = "Discord"
    DiscordButton.Size = UDim2.new(0.6, 0, 0.2, 0)
    DiscordButton.Position = UDim2.new(0.2, 0, 0.7, 0)
    DiscordButton.BackgroundColor3 = Color3.fromRGB(114, 137, 218)
    DiscordButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    DiscordButton.TextScaled = true
    DiscordButton.Font = Enum.Font.GothamBold

    ButtonUICorner.CornerRadius = UDim.new(0, 8)

    local function copyDiscordLink()
        setclipboard("https://discord.gg/aDYRMHQ5fU")
    end

    DiscordButton.MouseButton1Click:Connect(copyDiscordLink)

    TweenService:Create(Frame, TweenInfo.new(0.2), {BackgroundTransparency = 0}):Play()

    wait(5)

    local tweenInfo = TweenInfo.new(0.5)
    local fadeOutTweens = {
        TweenService:Create(Frame, tweenInfo, {Position = UDim2.new(0.5, 0, 1, 80), BackgroundTransparency = 1}),
        TweenService:Create(Title, tweenInfo, {TextTransparency = 1}),
        TweenService:Create(Separator, tweenInfo, {BackgroundTransparency = 1}),
        TweenService:Create(Content, tweenInfo, {TextTransparency = 1}),
        TweenService:Create(DiscordButton, tweenInfo, {TextTransparency = 1, BackgroundTransparency = 1})
    }

    for _, tween in pairs(fadeOutTweens) do
        tween:Play()
    end

    fadeOutTweens[1].Completed:Connect(function()
        ScreenGui:Destroy()
    end)
    return
end

if game.PlaceId == 15223808363 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/isshitty/Roblox/main/Scripts/ParkourReborn.lua"))()
elseif game.PlaceId == 16389398622 or game.PlaceId == 17527914941 or game.PlaceId == 17584310335 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/isshitty/Roblox/main/Scripts/aDustyDrip.lua"))()
elseif game.PlaceId == 17129858194 then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/isshitty/Roblox/main/Scripts/RealmRampage.lua"))()
elseif not (game.PlaceId == 15223808363 or game.PlaceId == 16389398622 or game.PlaceId == 17527914941 or game.PlaceId == 17584310335) then
  loadstring(game:HttpGet("https://raw.githubusercontent.com/isshitty/Roblox/main/Scripts/Universal.lua"))()
end
