local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer

-- Gửi thông báo
StarterGui:SetCore(
    "SendNotification",
    {
        Title = "Join Discord",
        Text = "https://discord.gg/3MpUbv87MF",
        Duration = 5
    }
)

-- Tạo GUI để thêm nút Sao chép
local ScreenGui = Instance.new("ScreenGui")
local CopyButton = Instance.new("TextButton")

ScreenGui.Parent = Player:WaitForChild("PlayerGui")

-- Thiết lập giao diện nút
CopyButton.Parent = ScreenGui
CopyButton.Text = "Sao chép link Discord"
CopyButton.Size = UDim2.new(0, 200, 0, 50)
CopyButton.Position = UDim2.new(0.5, -100, 0.5, -25)
CopyButton.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.Font = Enum.Font.SourceSansBold
CopyButton.TextSize = 18
CopyButton.BorderSizePixel = 0

-- Sự kiện khi nhấp nút
CopyButton.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/3MpUbv87MF")
    StarterGui:SetCore(
        "SendNotification",
        {
            Title = "Đã sao chép",
            Text = "Link Discord đã được sao chép vào bộ nhớ tạm!",
            Duration = 3
        }
    )
end)