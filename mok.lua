local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local Player = Players.LocalPlayer

-- Tạo GUI để thêm nút Sao chép
local ScreenGui = Instance.new("ScreenGui")
local CopyButton = Instance.new("TextButton")

ScreenGui.Parent = Player:WaitForChild("PlayerGui")

-- Thiết lập giao diện nút
CopyButton.Parent = ScreenGui
CopyButton.Text = "Join Discord"
CopyButton.Size = UDim2.new(0, 200, 0, 50) -- Kích thước
CopyButton.Position = UDim2.new(1, -210, 0, 0) -- Góc trên phải (cách cạnh phải 10 pixel, sát mép trên)
CopyButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Nền đen
CopyButton.BackgroundTransparency = 0.5 -- Trong suốt 50%
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- Chữ màu trắng
CopyButton.Font = Enum.Font.SourceSansBold
CopyButton.TextSize = 18
CopyButton.BorderSizePixel = 0 -- Không viền

-- Sự kiện khi nhấp nút
CopyButton.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/3MpUbv87MF")
    -- Hiển thị thông báo xác nhận
    pcall(function()
        StarterGui:SetCore(
            "SendNotification",
            {
                Title = "Join Link",
                Text = "Discord Link Copied To Clipboard!",
                Duration = 3
            }
        )
    end)
end)