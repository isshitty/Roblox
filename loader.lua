
if Genryhna_LOADED then
    local TweenService = game:GetService("TweenService")
    local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
    local Frame = Instance.new("Frame", ScreenGui)
    local UICorner = Instance.new("UICorner", Frame)
    local Title = Instance.new("TextLabel", Frame)
    local Separator = Instance.new("Frame", Frame)
    local Content = Instance.new("TextLabel", Frame)

    ScreenGui.Name = "NotificationGui"

    Frame.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
    Frame.Size = UDim2.new(0, 200, 0, 100)
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
    Content.Size = UDim2.new(0.8, 0, 0.5, 0)
    Content.Position = UDim2.new(0.1, 0, 0.35, 0)
    Content.TextColor3 = Color3.fromRGB(255, 255, 255)
    Content.TextScaled = true
    Content.BackgroundTransparency = 1
    Content.Font = Enum.Font.Gotham
    Content.LineHeight = 1.1

    TweenService:Create(Frame, TweenInfo.new(0.2), {BackgroundTransparency = 0}):Play()
    wait(5)
    
    local fadeOutTween = TweenService:Create(Frame, TweenInfo.new(0.5), {Position = UDim2.new(0.5, 0, 1, 80), BackgroundTransparency = 1})
    local titleFadeOutTween = TweenService:Create(Title, TweenInfo.new(0.5), {TextTransparency = 1})
    local separatorFadeOutTween = TweenService:Create(Separator, TweenInfo.new(0.5), {BackgroundTransparency = 1})
    local contentFadeOutTween = TweenService:Create(Content, TweenInfo.new(0.5), {TextTransparency = 1})

    fadeOutTween:Play()
    titleFadeOutTween:Play()
    separatorFadeOutTween:Play()
    contentFadeOutTween:Play()

    fadeOutTween.Completed:Connect(function()
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
