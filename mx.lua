-- Tạo ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Tạo Frame (Thanh chứa chữ)
local bar = Instance.new("Frame")
bar.Size = UDim2.new(0.5, 0, 0, 50) -- Chiều rộng bằng 50% màn hình, chiều cao 50
bar.Position = UDim2.new(0.25, 0, 0, 0) -- Đặt thanh ở trên cùng sát màn hình, lệch một chút từ trái
bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0) -- Màu nền thanh
bar.BackgroundTransparency = 0.5 -- Trong suốt một chút
bar.Parent = screenGui

-- Tạo TextLabel để chứa chữ
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0) -- Làm cho chữ chiếm toàn bộ thanh
textLabel.Text = "Đây là thanh chứa chữ!"
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- Màu chữ trắng
textLabel.TextSize = 24 -- Kích thước chữ
textLabel.TextAlign = Enum.TextAnchor.MiddleCenter -- Canh giữa chữ
textLabel.BackgroundTransparency = 1 -- Không có nền
textLabel.Parent = bar