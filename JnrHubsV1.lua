--========================================================--
--                      JNR HUBS
--                  DISCORD GET SCRIPT
--========================================================--

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

--========================================================--
-- CONFIGURACIÃ“N
--========================================================--

local DiscordLink = "https://discord.gg/" .. "4TmDcDpztN"

local GREEN = Color3.fromRGB(45, 255, 145)
local DARK_GREEN = Color3.fromRGB(5, 30, 20)
local BLACK = Color3.fromRGB(5, 7, 6)
local WHITE = Color3.fromRGB(245, 255, 250)
local GRAY = Color3.fromRGB(130, 155, 142)

-- Eliminar GUI anterior
local Old = PlayerGui:FindFirstChild("JNRHubs")
if Old then
	Old:Destroy()
end

--========================================================--
-- SCREEN GUI
--========================================================--

local Gui = Instance.new("ScreenGui")
Gui.Name = "JNRHubs"
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Gui.Parent = PlayerGui

--========================================================--
-- VENTANA PRINCIPAL
--========================================================--

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.fromOffset(360, 300)
Main.Position = UDim2.new(0.5, -180, 0.5, -150)
Main.BackgroundColor3 = BLACK
Main.BorderSizePixel = 0
Main.Parent = Gui

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 22)
Corner.Parent = Main

local Stroke = Instance.new("UIStroke")
Stroke.Color = GREEN
Stroke.Thickness = 2
Stroke.Parent = Main

--========================================================--
-- BARRA SUPERIOR
--========================================================--

local TopLine = Instance.new("Frame")
TopLine.Size = UDim2.new(1, -40, 0, 3)
TopLine.Position = UDim2.fromOffset(20, 0)
TopLine.BackgroundColor3 = GREEN
TopLine.BorderSizePixel = 0
TopLine.Parent = Main

local TopCorner = Instance.new("UICorner")
TopCorner.CornerRadius = UDim.new(1, 0)
TopCorner.Parent = TopLine

--========================================================--
-- LOGO JNR
--========================================================--

local Logo = Instance.new("Frame")
Logo.Size = UDim2.fromOffset(74, 74)
Logo.Position = UDim2.new(0.5, -37, 0, 20)
Logo.BackgroundColor3 = Color3.fromRGB(10, 15, 12)
Logo.BorderSizePixel = 0
Logo.Parent = Main

local LogoCorner = Instance.new("UICorner")
LogoCorner.CornerRadius = UDim.new(0, 12)
LogoCorner.Parent = Logo

local LogoStroke = Instance.new("UIStroke")
LogoStroke.Color = GREEN
LogoStroke.Thickness = 1
LogoStroke.Transparency = 0.35
LogoStroke.Parent = Logo

-- Logo geomÃ©trico JNR
local L1 = Instance.new("Frame")
L1.Size = UDim2.fromOffset(7, 43)
L1.Position = UDim2.fromOffset(15, 15)
L1.BackgroundColor3 = GREEN
L1.BorderSizePixel = 0
L1.Rotation = -12
L1.Parent = Logo

local L2 = Instance.new("Frame")
L2.Size = UDim2.fromOffset(7, 52)
L2.Position = UDim2.fromOffset(33, 11)
L2.BackgroundColor3 = GREEN
L2.BorderSizePixel = 0
L2.Rotation = 12
L2.Parent = Logo

local L3 = Instance.new("Frame")
L3.Size = UDim2.fromOffset(7, 43)
L3.Position = UDim2.fromOffset(52, 15)
L3.BackgroundColor3 = GREEN
L3.BorderSizePixel = 0
L3.Rotation = -12
L3.Parent = Logo

--========================================================--
-- TÃTULO
--========================================================--

local Title = Instance.new("TextLabel")
Title.Name = "DragArea"
Title.Size = UDim2.new(1, -40, 0, 32)
Title.Position = UDim2.fromOffset(20, 102)
Title.BackgroundTransparency = 1
Title.Text = "JNR HUBS"
Title.TextColor3 = WHITE
Title.TextSize = 25
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Center
Title.Parent = Main

local Subtitle = Instance.new("TextLabel")
Subtitle.Size = UDim2.new(1, -40, 0, 22)
Subtitle.Position = UDim2.fromOffset(20, 132)
Subtitle.BackgroundTransparency = 1
Subtitle.Text = "JNR HUBS IS UPDATED"
Subtitle.TextColor3 = GREEN
Subtitle.TextSize = 11
Subtitle.Font = Enum.Font.Gotham
Subtitle.TextXAlignment = Enum.TextXAlignment.Center
Subtitle.Parent = Main

--========================================================--
-- BOTÃ“N GET SCRIPT
--========================================================--

local GetScript = Instance.new("TextButton")
GetScript.Name = "GetScript"
GetScript.Size = UDim2.new(1, -50, 0, 58)
GetScript.Position = UDim2.fromOffset(25, 175)
GetScript.BackgroundColor3 = Color3.fromRGB(45, 80, 230)
GetScript.BorderSizePixel = 0
GetScript.Text = ""
GetScript.AutoButtonColor = false
GetScript.Parent = Main

local GetCorner = Instance.new("UICorner")
GetCorner.CornerRadius = UDim.new(0, 16)
GetCorner.Parent = GetScript

--========================================================--
-- LOGO DISCORD ESTILO SIMPLE
--========================================================--

local DiscordLogo = Instance.new("Frame")
DiscordLogo.Size = UDim2.fromOffset(32, 32)
DiscordLogo.Position = UDim2.fromOffset(20, 13)
DiscordLogo.BackgroundTransparency = 1
DiscordLogo.Parent = GetScript

-- Cabeza
local DiscordHead = Instance.new("Frame")
DiscordHead.Size = UDim2.fromOffset(27, 21)
DiscordHead.Position = UDim2.fromOffset(3, 6)
DiscordHead.BackgroundColor3 = WHITE
DiscordHead.BorderSizePixel = 0
DiscordHead.Parent = DiscordLogo

local DiscordCorner = Instance.new("UICorner")
DiscordCorner.CornerRadius = UDim.new(0, 8)
DiscordCorner.Parent = DiscordHead

-- Parte inferior
local DiscordBottom = Instance.new("Frame")
DiscordBottom.Size = UDim2.fromOffset(20, 5)
DiscordBottom.Position = UDim2.fromOffset(6, 21)
DiscordBottom.BackgroundColor3 = WHITE
DiscordBottom.BorderSizePixel = 0
DiscordBottom.Parent = DiscordLogo

-- Ojos
local Eye1 = Instance.new("Frame")
Eye1.Size = UDim2.fromOffset(4, 4)
Eye1.Position = UDim2.fromOffset(9, 13)
Eye1.BackgroundColor3 = Color3.fromRGB(45, 80, 230)
Eye1.BorderSizePixel = 0
Eye1.Parent = DiscordLogo

local Eye2 = Instance.new("Frame")
Eye2.Size = UDim2.fromOffset(4, 4)
Eye2.Position = UDim2.fromOffset(19, 13)
Eye2.BackgroundColor3 = Color3.fromRGB(45, 80, 230)
Eye2.BorderSizePixel = 0
Eye2.Parent = DiscordLogo

-- Texto
local GetText = Instance.new("TextLabel")
GetText.Size = UDim2.new(1, -70, 1, 0)
GetText.Position = UDim2.fromOffset(60, 0)
GetText.BackgroundTransparency = 1
GetText.Text = "GET SCRIPT"
GetText.TextColor3 = WHITE
GetText.TextSize = 17
GetText.Font = Enum.Font.GothamBold
GetText.TextXAlignment = Enum.TextXAlignment.Left
GetText.Parent = GetScript

--========================================================--
-- INFORMACIÃ“N
--========================================================--

local Info = Instance.new("TextLabel")
Info.Size = UDim2.new(1, -40, 0, 25)
Info.Position = UDim2.fromOffset(20, 245)
Info.BackgroundTransparency = 1
Info.Text = "JOIN OUR DISCORD"
Info.TextColor3 = GRAY
Info.TextSize = 10
Info.Font = Enum.Font.Gotham
Info.TextXAlignment = Enum.TextXAlignment.Center
Info.Parent = Main

--========================================================--
-- BOTÃ“N GET SCRIPT
--========================================================--

GetScript.Activated:Connect(function()

	-- Si el entorno tiene setclipboard, copia el Discord
	if typeof(setclipboard) == "function" then

		setclipboard(DiscordLink)

		GetText.Text = "COPIED!"

		TweenService:Create(
			GetScript,
			TweenInfo.new(0.12),
			{
				BackgroundColor3 = GREEN
			}
		):Play()

		task.wait(1)

		GetText.Text = "GET SCRIPT"

		TweenService:Create(
			GetScript,
			TweenInfo.new(0.12),
			{
				BackgroundColor3 = Color3.fromRGB(45, 80, 230)
			}
		):Play()

	else

		GetText.Text = "COPY NOT AVAILABLE"

		task.wait(1)

		GetText.Text = "GET SCRIPT"

	end
end)

--========================================================--
-- ARRASTRAR VENTANA
--========================================================--

local Dragging = false
local DragStart
local StartPosition

Title.InputBegan:Connect(function(Input)

	if Input.UserInputType == Enum.UserInputType.Touch
		or Input.UserInputType == Enum.UserInputType.MouseButton1 then

		Dragging = true
		DragStart = Input.Position
		StartPosition = Main.Position
	end
end)

UserInputService.InputChanged:Connect(function(Input)

	if not Dragging then
		return
	end

	if Input.UserInputType == Enum.UserInputType.Touch
		or Input.UserInputType == Enum.UserInputType.MouseMovement then

		local Delta = Input.Position - DragStart

		Main.Position = UDim2.new(
			StartPosition.X.Scale,
			StartPosition.X.Offset + Delta.X,

			StartPosition.Y.Scale,
			StartPosition.Y.Offset + Delta.Y
		)
	end
end)

UserInputService.InputEnded:Connect(function(Input)

	if Input.UserInputType == Enum.UserInputType.Touch
		or Input.UserInputType == Enum.UserInputType.MouseButton1 then

		Dragging = false
	end
end)

--========================================================--
-- FIN
--========================================================--MainCorner.CornerRadius = UDim.new(0, 22)
MainCorner.Parent = Main

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = GREEN
MainStroke.Thickness = 2
MainStroke.Transparency = 0.15
MainStroke.Parent = Main

--========================================================--
-- BRILLO SUPERIOR
--========================================================--

local TopGlow = Instance.new("Frame")
TopGlow.Size = UDim2.new(1, -44, 0, 3)
TopGlow.Position = UDim2.fromOffset(22, 0)
TopGlow.BackgroundColor3 = GREEN
TopGlow.BorderSizePixel = 0
TopGlow.Parent = Main

local TopGlowCorner = Instance.new("UICorner")
TopGlowCorner.CornerRadius = UDim.new(1, 0)
TopGlowCorner.Parent = TopGlow

--========================================================--
-- LOGO
--========================================================--

local Logo = Instance.new("Frame")
Logo.Name = "JNRLogo"
Logo.Size = UDim2.fromOffset(42, 42)
Logo.Position = UDim2.fromOffset(16, 15)
Logo.BackgroundTransparency = 1
Logo.Parent = Main

local function MakeBar(size, position, rotation)
	local Bar = Instance.new("Frame")
	Bar.Size = size
	Bar.Position = position
	Bar.BackgroundColor3 = GREEN
	Bar.BorderSizePixel = 0
	Bar.Rotation = rotation
	Bar.Parent = Logo

	local Corner = Instance.new("UICorner")
	Corner.CornerRadius = UDim.new(1, 0)
	Corner.Parent = Bar
end

MakeBar(UDim2.fromOffset(6, 27), UDim2.fromOffset(4, 8), -15)
MakeBar(UDim2.fromOffset(6, 34), UDim2.fromOffset(18, 4), 15)
MakeBar(UDim2.fromOffset(6, 27), UDim2.fromOffset(32, 8), -15)

--========================================================--
-- TÃTULO Y SUBTÃTULO
--========================================================--

local Title = Instance.new("TextLabel")
Title.Name = "DragArea"
Title.Active = true
Title.Size = UDim2.new(1, -150, 0, 27)
Title.Position = UDim2.fromOffset(62, 17)
Title.BackgroundTransparency = 1
Title.Text = "SCRIPTS HUB JNR"
Title.TextColor3 = WHITE
Title.TextSize = 17
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Main

local Subtitle = Instance.new("TextLabel")
Subtitle.Size = UDim2.new(1, -150, 0, 18)
Subtitle.Position = UDim2.fromOffset(63, 41)
Subtitle.BackgroundTransparency = 1
Subtitle.Text = "SELECT YOUR HUB"
Subtitle.TextColor3 = GRAY
Subtitle.TextSize = 9
Subtitle.Font = Enum.Font.Gotham
Subtitle.TextXAlignment = Enum.TextXAlignment.Left
Subtitle.Parent = Main

--========================================================--
-- BOTÃ“N DE DISCORD
--========================================================--

local DiscordBtn = Instance.new("ImageButton")
DiscordBtn.Name = "DiscordButton"
DiscordBtn.Size = UDim2.fromOffset(28, 28)
DiscordBtn.Position = UDim2.new(1, -88, 0, 18)
DiscordBtn.BackgroundColor3 = BUTTON_COLOR
DiscordBtn.Image = "rbxassetid://12000213168"
DiscordBtn.ImageColor3 = WHITE
DiscordBtn.AutoButtonColor = false
DiscordBtn.Parent = Main

local DiscordCorner = Instance.new("UICorner")
DiscordCorner.CornerRadius = UDim.new(0, 8)
DiscordCorner.Parent = DiscordBtn

local DiscordStroke = Instance.new("UIStroke")
DiscordStroke.Color = DISCORD_BLUE
DiscordStroke.Thickness = 1.2
DiscordStroke.Parent = DiscordBtn

-- NotificaciÃ³n de Copiado
local CopiedLabel = Instance.new("TextLabel")
CopiedLabel.Size = UDim2.fromOffset(70, 20)
CopiedLabel.Position = UDim2.new(0.5, -35, -0.9, 0)
CopiedLabel.BackgroundColor3 = PANEL_COLOR
CopiedLabel.Text = "Â¡COPIADO!"
CopiedLabel.TextColor3 = GREEN
CopiedLabel.TextSize = 9
CopiedLabel.Font = Enum.Font.GothamBold
CopiedLabel.Visible = false
CopiedLabel.Parent = DiscordBtn

local CopiedCorner = Instance.new("UICorner")
CopiedCorner.CornerRadius = UDim.new(0, 6)
CopiedCorner.Parent = CopiedLabel

local CopiedStroke = Instance.new("UIStroke")
CopiedStroke.Color = GREEN
CopiedStroke.Thickness = 1
CopiedStroke.Parent = CopiedLabel

-- Evento Click Discord
DiscordBtn.Activated:Connect(function()
	if setclipboard then
		setclipboard(MY_DISCORD)
	elseif toclipboard then
		toclipboard(MY_DISCORD)
	end

	TweenService:Create(DiscordBtn, TweenInfo.new(0.1), {BackgroundColor3 = DISCORD_BLUE}):Play()
	task.wait(0.15)
	TweenService:Create(DiscordBtn, TweenInfo.new(0.1), {BackgroundColor3 = BUTTON_COLOR}):Play()

	CopiedLabel.Visible = true
	task.wait(1.5)
	CopiedLabel.Visible = false
end)

--========================================================--
-- BOTÃ“N CERRAR
--========================================================--

local Close = Instance.new("TextButton")
Close.Name = "Close"
Close.Size = UDim2.fromOffset(38, 38)
Close.Position = UDim2.new(1, -54, 0, 13)
Close.BackgroundColor3 = BUTTON_COLOR
Close.Text = ""
Close.AutoButtonColor = false
Close.Parent = Main

local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 12)
CloseCorner.Parent = Close

local CloseStroke = Instance.new("UIStroke")
CloseStroke.Color = GREEN
CloseStroke.Thickness = 1.5
CloseStroke.Parent = Close

-- X
local X1 = Instance.new("Frame")
X1.Size = UDim2.fromOffset(18, 3)
X1.Position = UDim2.fromOffset(10, 18)
X1.BackgroundColor3 = WHITE
X1.BorderSizePixel = 0
X1.Rotation = 45
X1.Parent = Close

local X1Corner = Instance.new("UICorner")
X1Corner.CornerRadius = UDim.new(1, 0)
X1Corner.Parent = X1

local X2 = Instance.new("Frame")
X2.Size = UDim2.fromOffset(18, 3)
X2.Position = UDim2.fromOffset(10, 18)
X2.BackgroundColor3 = WHITE
X2.BorderSizePixel = 0
X2.Rotation = -45
X2.Parent = Close

local X2Corner = Instance.new("UICorner")
X2Corner.CornerRadius = UDim.new(1, 0)
X2Corner.Parent = X2

--========================================================--
-- SEPARADOR
--========================================================--

local Separator = Instance.new("Frame")
Separator.Size = UDim2.new(1, -38, 0, 1)
Separator.Position = UDim2.fromOffset(19, 68)
Separator.BackgroundColor3 = GREEN
Separator.BackgroundTransparency = 0.65
Separator.BorderSizePixel = 0
Separator.Parent = Main

--========================================================--
-- LISTA DE HUBS
--========================================================--

local Scroll = Instance.new("ScrollingFrame")
Scroll.Name = "HubList"
Scroll.Size = UDim2.new(1, -38, 0, 205)
Scroll.Position = UDim2.fromOffset(19, 78)
Scroll.BackgroundTransparency = 1
Scroll.BorderSizePixel = 0
Scroll.ScrollBarThickness = 3
Scroll.ScrollBarImageColor3 = GREEN
Scroll.ScrollBarImageTransparency = 0.2
Scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
Scroll.ScrollingDirection = Enum.ScrollingDirection.Y
Scroll.Parent = Main

local Layout = Instance.new("UIListLayout")
Layout.Padding = UDim.new(0, 6)
Layout.SortOrder = Enum.SortOrder.LayoutOrder
Layout.Parent = Scroll

--========================================================--
-- CREAR BOTONES DE HUBS
--========================================================--

local function CreateHubButton(Number, Name, Callback)

	local Button = Instance.new("TextButton")
	Button.Name = Name
	Button.Size = UDim2.new(1, -6, 0, 48)
	Button.BackgroundColor3 = BUTTON_COLOR
	Button.Text = ""
	Button.AutoButtonColor = false
	Button.Parent = Scroll

	local Corner = Instance.new("UICorner")
	Corner.CornerRadius = UDim.new(0, 14)
	Corner.Parent = Button

	local Stroke = Instance.new("UIStroke")
	Stroke.Color = GREEN
	Stroke.Thickness = 1.3
	Stroke.Transparency = 0.55
	Stroke.Parent = Button

	-- Barra lateral
	local Bar = Instance.new("Frame")
	Bar.Size = UDim2.new(0, 5, 1, -12)
	Bar.Position = UDim2.fromOffset(0, 6)
	Bar.BackgroundColor3 = GREEN
	Bar.BorderSizePixel = 0
	Bar.Parent = Button

	local BarCorner = Instance.new("UICorner")
	BarCorner.CornerRadius = UDim.new(1, 0)
	BarCorner.Parent = Bar

	-- NÃºmero
	local NumberLabel = Instance.new("TextLabel")
	NumberLabel.Size = UDim2.fromOffset(38, 48)
	NumberLabel.Position = UDim2.fromOffset(13, 0)
	NumberLabel.BackgroundTransparency = 1
	NumberLabel.Text = Number
	NumberLabel.TextColor3 = GREEN
	NumberLabel.TextSize = 15
	NumberLabel.Font = Enum.Font.GothamBold
	NumberLabel.Parent = Button

	-- Nombre
	local NameLabel = Instance.new("TextLabel")
	NameLabel.Size = UDim2.new(1, -100, 1, 0)
	NameLabel.Position = UDim2.fromOffset(57, 0)
	NameLabel.BackgroundTransparency = 1
	NameLabel.Text = Name
	NameLabel.TextColor3 = WHITE
	NameLabel.TextSize = 13
	NameLabel.Font = Enum.Font.GothamBold
	NameLabel.TextXAlignment = Enum.TextXAlignment.Left
	NameLabel.Parent = Button

	-- Flecha
	local Arrow = Instance.new("Frame")
	Arrow.Size = UDim2.fromOffset(18, 18)
	Arrow.Position = UDim2.new(1, -43, 0.5, -9)
	Arrow.BackgroundTransparency = 1
	Arrow.Parent = Button

	local Arrow1 = Instance.new("Frame")
	Arrow1.Size = UDim2.fromOffset(11, 2.5)
	Arrow1.Position = UDim2.fromOffset(4, 4)
	Arrow1.BackgroundColor3 = GREEN
	Arrow1.BorderSizePixel = 0
	Arrow1.Rotation = 45
	Arrow1.Parent = Arrow

	local Arrow1Corner = Instance.new("UICorner")
	Arrow1Corner.CornerRadius = UDim.new(1, 0)
	Arrow1Corner.Parent = Arrow1

	local Arrow2 = Instance.new("Frame")
	Arrow2.Size = UDim2.fromOffset(11, 2.5)
	Arrow2.Position = UDim2.fromOffset(4, 11)
	Arrow2.BackgroundColor3 = GREEN
	Arrow2.BorderSizePixel = 0
	Arrow2.Rotation = -45
	Arrow2.Parent = Arrow

	local Arrow2Corner = Instance.new("UICorner")
	Arrow2Corner.CornerRadius = UDim.new(1, 0)
	Arrow2Corner.Parent = Arrow2

	-- AnimaciÃ³n y EjecuciÃ³n
	Button.Activated:Connect(function()

		TweenService:Create(
			Button,
			TweenInfo.new(0.1),
			{
				BackgroundColor3 = Color3.fromRGB(20, 65, 45)
			}
		):Play()

		task.wait(0.12)

		TweenService:Create(
			Button,
			TweenInfo.new(0.1),
			{
				BackgroundColor3 = BUTTON_COLOR
			}
		):Play()

		if Callback then
			task.spawn(Callback)
		else
			print(Name .. " seleccionado")
		end
	end)
end

--========================================================--
-- 8 OPCIONES CONFIGURADAS
--========================================================--

-- 1. LENNON
CreateHubButton("1", "LENNON", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/lennonxscripts/lennonhubv2/refs/heads/main/stealaneggv2"))()
end)

-- 2. MIRANDA
CreateHubButton("2", "MIRANDA", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/miirandahub/loader/refs/heads/main/stealaeggs"))()
end)

-- 3. FPS BOOTS
CreateHubButton("3", "FPS BOOTS", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/marianscriptKing/SUPER-MAX.lau/main/SUPER%20MAX%20PERFORMANCE"))()
end)

-- 4. HONEY JOINER
CreateHubButton("4", "GLAZE JOINER", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/GlazeScripts/Private-Server-Finder/refs/heads/main/Glazehub.lua"))()
end)

-- 5. BIG FROOT (KEY)
CreateHubButton("5", "BIG FROOT (KEY)", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/hanniii1/Loader/refs/heads/main/BFLoader.lua"))()
end)

-- 6. AJJA HUB
CreateHubButton("6", "AJJA HUB", function()
	loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/36107afd3107e8d841f9d1a69e2465d4.lua"))()
end)

-- 7. ONNON HUB
CreateHubButton("7", "ONNON HUB", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/ronnei/freemium/refs/heads/main/loader.lua"))()
end)

-- 8. SERVER HOP
CreateHubButton("8", "SERVER HOP", function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/kiddohas/ServerHopV2/refs/heads/main/SERVEHOPV2"))()
end)

--========================================================--
-- GUARDAR INTERFAZ
--========================================================--

local Save = Instance.new("TextButton")
Save.Name = "SaveInterface"
Save.Size = UDim2.new(1, -38, 0, 42)
Save.Position = UDim2.fromOffset(19, 298)
Save.BackgroundColor3 = GREEN_DARK
Save.Text = "GUARDAR INTERFAZ"
Save.TextColor3 = WHITE
Save.TextSize = 12
Save.Font = Enum.Font.GothamBold
Save.AutoButtonColor = false
Save.Parent = Main

local SaveCorner = Instance.new("UICorner")
SaveCorner.CornerRadius = UDim.new(1, 0)
SaveCorner.Parent = Save

local SaveStroke = Instance.new("UIStroke")
SaveStroke.Color = GREEN
SaveStroke.Thickness = 1.5
SaveStroke.Parent = Save

--========================================================--
-- CERRAR
--========================================================--

Close.Activated:Connect(function()
	Main.Visible = false
	Floating.Visible = true
end)

--========================================================--
-- GUARDAR / MINIMIZAR
--========================================================--

Save.Activated:Connect(function()

	Save.Text = "INTERFAZ GUARDADA"

	task.wait(0.3)

	Main.Visible = false
	Floating.Visible = true

	task.wait(0.5)

	if Save.Parent then
		Save.Text = "GUARDAR INTERFAZ"
	end
end)

--========================================================--
-- ARRASTRAR PANEL
--========================================================--

local DraggingMain = false
local MainDragStart
local MainStartPosition

Title.InputBegan:Connect(function(Input)

	if Input.UserInputType == Enum.UserInputType.Touch
		or Input.UserInputType == Enum.UserInputType.MouseButton1 then

		DraggingMain = true
		MainDragStart = Input.Position
		MainStartPosition = Main.Position
	end
end)

--========================================================--
-- ARRASTRAR BOTÃ“N FLOTANTE
--========================================================--

local DraggingFloating = false
local FloatingDragStart
local FloatingStartPosition
local DidMove = false

Floating.InputBegan:Connect(function(Input)

	if Input.UserInputType == Enum.UserInputType.Touch
		or Input.UserInputType == Enum.UserInputType.MouseButton1 then

		DraggingFloating = true
		DidMove = false

		FloatingDragStart = Input.Position
		FloatingStartPosition = Floating.Position
	end
end)

--========================================================--
-- MOVIMIENTO
--========================================================--

UserInputService.InputChanged:Connect(function(Input)

	-- Panel
	if DraggingMain then

		if Input.UserInputType == Enum.UserInputType.Touch
			or Input.UserInputType == Enum.UserInputType.MouseMovement then

			local Delta = Input.Position - MainDragStart

			Main.Position = UDim2.new(
				MainStartPosition.X.Scale,
				MainStartPosition.X.Offset + Delta.X,
				MainStartPosition.Y.Scale,
				MainStartPosition.Y.Offset + Delta.Y
			)
		end
	end

	-- BotÃ³n flotante
	if DraggingFloating then

		if Input.UserInputType == Enum.UserInputType.Touch
			or Input.UserInputType == Enum.UserInputType.MouseMovement then

			local Delta = Input.Position - FloatingDragStart

			if math.abs(Delta.X) > 5
				or math.abs(Delta.Y) > 5 then

				DidMove = true
			end

			Floating.Position = UDim2.new(
				FloatingStartPosition.X.Scale,
				FloatingStartPosition.X.Offset + Delta.X,
				FloatingStartPosition.Y.Scale,
				FloatingStartPosition.Y.Offset + Delta.Y
			)
		end
	end
end)

--========================================================--
-- SOLTAR
--========================================================--

UserInputService.InputEnded:Connect(function(Input)

	if Input.UserInputType == Enum.UserInputType.Touch
		or Input.UserInputType == Enum.UserInputType.MouseButton1 then

		DraggingMain = false

		if DraggingFloating then

			DraggingFloating = false

			if not DidMove then
				Main.Visible = true
				Floating.Visible = false
			end
		end
	end
end)

--========================================================--
-- EFECTO BOTÃ“N FLOTANTE
--========================================================--

Floating.MouseEnter:Connect(function()

	TweenService:Create(
		Floating,
		TweenInfo.new(0.12),
		{
			Size = UDim2.fromOffset(52, 52)
		}
	):Play()
end)

Floating.MouseLeave:Connect(function()

	TweenService:Create(
		Floating,
		TweenInfo.new(0.12),
		{
			Size = UDim2.fromOffset(48, 48)
		}
	):Play()
end)

--========================================================--
-- FIN
--========================================================--
