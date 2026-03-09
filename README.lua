-- Crear GUI
local gui = Instance.new("ScreenGui")
gui.Name = "KeySystem"
gui.Parent = game.CoreGui

-- Frame principal
local frame = Instance.new("Frame")
frame.Parent = gui
frame.Size = UDim2.new(0, 400, 0, 200)
frame.Position = UDim2.new(0.5, -200, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(0,0,0)

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0,20)
corner.Parent = frame

-- Borde arcoiris
local stroke = Instance.new("UIStroke")
stroke.Thickness = 4
stroke.Parent = frame

local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(255,0,0)),
	ColorSequenceKeypoint.new(0.2, Color3.fromRGB(255,127,0)),
	ColorSequenceKeypoint.new(0.4, Color3.fromRGB(255,255,0)),
	ColorSequenceKeypoint.new(0.6, Color3.fromRGB(0,255,0)),
	ColorSequenceKeypoint.new(0.8, Color3.fromRGB(0,0,255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(139,0,255))
}
gradient.Parent = stroke

-- Texto superior
local title = Instance.new("TextLabel")
title.Parent = frame
title.Size = UDim2.new(1,0,0,50)
title.BackgroundTransparency = 1
title.Text = "Ingresa la Key"
title.TextColor3 = Color3.fromRGB(255,255,255)
title.TextScaled = true
title.Font = Enum.Font.GothamBold

-- Caja para escribir la key
local keyBox = Instance.new("TextBox")
keyBox.Parent = frame
keyBox.Size = UDim2.new(0.8,0,0,40)
keyBox.Position = UDim2.new(0.1,0,0.4,0)
keyBox.BackgroundColor3 = Color3.fromRGB(20,20,20)
keyBox.TextColor3 = Color3.fromRGB(255,255,255)
keyBox.PlaceholderText = "Escribe la key..."
keyBox.Text = ""
keyBox.Font = Enum.Font.Gotham
keyBox.TextScaled = true

local keyCorner = Instance.new("UICorner")
keyCorner.CornerRadius = UDim.new(0,10)
keyCorner.Parent = keyBox

-- Botón verificar
local button = Instance.new("TextButton")
button.Parent = frame
button.Size = UDim2.new(0.5,0,0,40)
button.Position = UDim2.new(0.25,0,0.7,0)
button.BackgroundColor3 = Color3.fromRGB(50,50,50)
button.Text = "Verificar"
button.TextColor3 = Color3.fromRGB(255,255,255)
button.TextScaled = true
button.Font = Enum.Font.GothamBold

local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0,10)
btnCorner.Parent = button

-- Mensaje
local message = Instance.new("TextLabel")
message.Parent = frame
message.Size = UDim2.new(1,0,0,40)
message.Position = UDim2.new(0,0,1,0)
message.BackgroundTransparency = 1
message.Text = ""
message.TextColor3 = Color3.fromRGB(255,255,255)
message.TextScaled = true
message.Font = Enum.Font.GothamBold

-- Verificación de key
button.MouseButton1Click:Connect(function()
	if keyBox.Text == "PayVersion" then
		message.Text = "Has Sido Estafado ❤️"
	else
		message.Text = "Key Incorrecta"
	end
end)
