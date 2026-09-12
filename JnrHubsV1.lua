--========================================================--
--                    JNR HUBS
--                      HUB
--                    320 x 250
--========================================================--

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

--========================================================--
-- CONFIG
--========================================================--

local GUI_NAME = "JNRHUBS"
local DISCORD = "https://discord.gg/4TmDcDpztN"

local GREEN = Color3.fromRGB(45,255,145)
local GREEN_DARK = Color3.fromRGB(7,45,28)
local BLACK = Color3.fromRGB(6,9,8)
local PANEL = Color3.fromRGB(11,16,14)
local BUTTON = Color3.fromRGB(17,24,21)
local HOVER = Color3.fromRGB(24,42,31)
local WHITE = Color3.fromRGB(240,255,248)
local GRAY = Color3.fromRGB(130,150,140)
local RED = Color3.fromRGB(255,75,75)

--========================================================--
-- BORRAR ANTERIOR
--========================================================--

local Old = PlayerGui:FindFirstChild(GUI_NAME)
if Old then
    Old:Destroy()
end

--========================================================--
-- SCREEN GUI
--========================================================--

local Gui = Instance.new("ScreenGui")
Gui.Name = GUI_NAME
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.Parent = PlayerGui

--========================================================--
-- MAIN HUB
--========================================================--

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Size = UDim2.fromOffset(320,250)
Main.Position = UDim2.new(0.5,-160,0.5,-125)
Main.BackgroundColor3 = BLACK
Main.BorderSizePixel = 0
Main.Visible = true
Main.Parent = Gui

Instance.new("UICorner",Main).CornerRadius = UDim.new(0,14)

local MainStroke = Instance.new("UIStroke")
MainStroke.Color = GREEN
MainStroke.Thickness = 1.5
MainStroke.Transparency = 0.25
MainStroke.Parent = Main

--========================================================--
-- HEADER
--========================================================--

local Header = Instance.new("Frame")
Header.Size = UDim2.new(1,-16,0,45)
Header.Position = UDim2.fromOffset(8,8)
Header.BackgroundColor3 = PANEL
Header.BorderSizePixel = 0
Header.Parent = Main

Instance.new("UICorner",Header).CornerRadius = UDim.new(0,10)

--========================================================--
-- LOGO
--========================================================--

local Logo = Instance.new("Frame")
Logo.Size = UDim2.fromOffset(31,31)
Logo.Position = UDim2.fromOffset(7,7)
Logo.BackgroundColor3 = GREEN_DARK
Logo.BorderSizePixel = 0
Logo.Parent = Header

Instance.new("UICorner",Logo).CornerRadius = UDim.new(0,8)

local LogoStroke = Instance.new("UIStroke")
LogoStroke.Color = GREEN
LogoStroke.Thickness = 1
LogoStroke.Parent = Logo

local J = Instance.new("TextLabel")
J.Size = UDim2.fromScale(1,1)
J.BackgroundTransparency = 1
J.Text = "J"
J.TextColor3 = GREEN
J.Font = Enum.Font.GothamBold
J.TextSize = 18
J.Parent = Logo

--========================================================--
-- TITLE & VERSION
--========================================================--

local Title = Instance.new("TextLabel")
Title.Size = UDim2.fromOffset(170,20)
Title.Position = UDim2.fromOffset(47,6)
Title.BackgroundTransparency = 1
Title.Text = "JNR HUBS"
Title.TextColor3 = WHITE
Title.Font = Enum.Font.GothamBold
Title.TextSize = 15
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Header

local Version = Instance.new("TextLabel")
Version.Size = UDim2.fromOffset(170,15)
Version.Position = UDim2.fromOffset(47,25)
Version.BackgroundTransparency = 1
Version.Text = "By JNRHUBS | V1.0"
Version.TextColor3 = GRAY
Version.Font = Enum.Font.Gotham
Version.TextSize = 8
Version.TextXAlignment = Enum.TextXAlignment.Left
Version.Parent = Header

--========================================================--
-- CLOSE
--========================================================--

local Close = Instance.new("TextButton")
Close.Size = UDim2.fromOffset(29,29)
Close.Position = UDim2.new(1,-36,0,8)
Close.BackgroundColor3 = BUTTON
Close.Text = "Ã—"
Close.TextColor3 = WHITE
Close.Font = Enum.Font.GothamBold
Close.TextSize = 18
Close.AutoButtonColor = false
Close.Parent = Header

Instance.new("UICorner",Close).CornerRadius = UDim.new(0,8)

local CloseStroke = Instance.new("UIStroke")
CloseStroke.Color = GREEN
CloseStroke.Thickness = 1
CloseStroke.Transparency = 0.7
CloseStroke.Parent = Close

--========================================================--
-- MENU & CONTENT
--========================================================--

local Menu = Instance.new("Frame")
Menu.Size = UDim2.fromOffset(92,185)
Menu.Position = UDim2.fromOffset(8,61)
Menu.BackgroundColor3 = PANEL
Menu.BorderSizePixel = 0
Menu.Parent = Main

Instance.new("UICorner",Menu).CornerRadius = UDim.new(0,10)

local MenuStroke = Instance.new("UIStroke")
MenuStroke.Color = GREEN
MenuStroke.Thickness = 1
MenuStroke.Transparency = 0.75
MenuStroke.Parent = Menu

local MenuLayout = Instance.new("UIListLayout")
MenuLayout.Padding = UDim.new(0,6)
MenuLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
MenuLayout.VerticalAlignment = Enum.VerticalAlignment.Top
MenuLayout.Parent = Menu

local MenuPadding = Instance.new("UIPadding")
MenuPadding.PaddingTop = UDim.new(0,8)
MenuPadding.Parent = Menu

local Content = Instance.new("Frame")
Content.Size = UDim2.fromOffset(204,185)
Content.Position = UDim2.fromOffset(108,61)
Content.BackgroundColor3 = PANEL
Content.BorderSizePixel = 0
Content.Parent = Main

Instance.new("UICorner",Content).CornerRadius = UDim.new(0,10)

local ContentStroke = Instance.new("UIStroke")
ContentStroke.Color = GREEN
ContentStroke.Thickness = 1
ContentStroke.Transparency = 0.75
ContentStroke.Parent = Content

--========================================================--
-- SCROLL
--========================================================--

local Scroll = Instance.new("ScrollingFrame")
Scroll.Size = UDim2.new(1,-12,1,-12)
Scroll.Position = UDim2.fromOffset(6,6)
Scroll.BackgroundTransparency = 1
Scroll.BorderSizePixel = 0
Scroll.ScrollBarThickness = 2
Scroll.ScrollBarImageColor3 = GREEN
Scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
Scroll.CanvasSize = UDim2.new(0,0,0,0)
Scroll.Parent = Content

local Layout = Instance.new("UIListLayout")
Layout.Padding = UDim.new(0,5)
Layout.SortOrder = Enum.SortOrder.LayoutOrder
Layout.Parent = Scroll

--========================================================--
-- CLEAR & HELPERS
--========================================================--

local function Clear()
    for _,v in ipairs(Scroll:GetChildren()) do
        if not v:IsA("UIListLayout") then
            v:Destroy()
        end
    end
end

local function Section(text)
    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(1,-4,0,22)
    Label.BackgroundTransparency = 1
    Label.Text = text
    Label.TextColor3 = GREEN
    Label.TextSize = 10
    Label.Font = Enum.Font.GothamBold
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Parent = Scroll
    return Label
end

local function Button(text, callback)
    local B = Instance.new("TextButton")
    B.Size = UDim2.new(1,-4,0,34)
    B.BackgroundColor3 = BUTTON
    B.Text = text
    B.TextColor3 = WHITE
    B.TextSize = 10
    B.Font = Enum.Font.Gotham
    B.AutoButtonColor = false
    B.Parent = Scroll

    Instance.new("UICorner",B).CornerRadius = UDim.new(0,7)

    local Stroke = Instance.new("UIStroke")
    Stroke.Color = GREEN
    Stroke.Thickness = 1
    Stroke.Transparency = 0.85
    Stroke.Parent = B

    B.MouseEnter:Connect(function()
        TweenService:Create(B, TweenInfo.new(.12), {BackgroundColor3 = HOVER}):Play()
    end)

    B.MouseLeave:Connect(function()
        TweenService:Create(B, TweenInfo.new(.12), {BackgroundColor3 = BUTTON}):Play()
    end)

    B.Activated:Connect(function()
        if callback then
            task.spawn(function()
                callback(B)
            end)
        else
            print(text .. " seleccionado")
        end
    end)

    return B
end

--========================================================--
-- SERVER HOPPER LOGIC
--========================================================--

local Hopping = false

local function ServerHop(btn)
    if Hopping then return end
    Hopping = true

    local originalText = btn.Text
    btn.Text = "Searching..."
    btn.TextColor3 = GRAY

    local PlaceId = game.PlaceId
    local JobId = game.JobId
    local req = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request

    if req then
        local targetServerId = nil
        local cursor = ""
        local lowServers = {}

        for page = 1, 6 do
            local url = string.format("https://games.roblox.com/v1/games/%d/servers/0?sortOrder=Asc&limit=100%s", PlaceId, cursor ~= "" and "&cursor="..cursor or "")
            local success, raw = pcall(function() return req({Url = url}) end)

            if success and raw and raw.Body then
                local body = HttpService:JSONDecode(raw.Body)
                if body and body.data then
                    for _, server in ipairs(body.data) do
                        if type(server) == "table" and server.id ~= JobId then
                            local playing = server.playing or 0
                            local maxPlayers = server.maxPlayers or 0
                            
                            if playing > 0 and playing <= 3 and playing < maxPlayers then
                                table.insert(lowServers, server)
                            end
                        end
                    end
                    cursor = body.nextPageCursor or ""
                end
            end

            if cursor == "" or #lowServers >= 5 then break end
            task.wait(0.15)
        end

        table.sort(lowServers, function(a, b) return a.playing < b.playing end)

        if #lowServers > 0 then
            targetServerId = lowServers[1].id
        end

        if targetServerId then
            btn.Text = "READY!"
            btn.TextColor3 = GREEN
            task.wait(0.4)
            TeleportService:TeleportToPlaceInstance(PlaceId, targetServerId, Player)
        else
            btn.Text = "No Server Found"
            btn.TextColor3 = RED
            task.wait(1.5)
            btn.Text = originalText
            btn.TextColor3 = WHITE
        end
    else
        btn.Text = "READY!"
        btn.TextColor3 = GREEN
        task.wait(0.4)
        TeleportService:Teleport(PlaceId, Player)
    end

    Hopping = false
end

local function Rejoin(btn)
    btn.Text = "Rejoining..."
    btn.TextColor3 = GRAY
    task.wait(0.5)
    btn.Text = "READY!"
    btn.TextColor3 = GREEN
    task.wait(0.3)
    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, Player)
end

--========================================================--
-- SCRIPTS CÃ“DIGO EJECUTABLE
--========================================================--

local function Scripts()
    Clear()

    Section("NO KEY REQUIRED")

    Button("ON HUB", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/davizin713/ONhub/refs/heads/main/script.lua", true))()
    end)

    Button("HORIZON", function()
        getgenv().script_key = "Trial"
        loadstring(game:HttpGet("https://api.getpolsec.com/scripts/hosted/6582551b42d21c6b7eb55f1d76d8d50ce53cb35592093d6615b5e83437594dc0.lua"))()
    end)

    Button("LKZ HUB", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LucasggkX/LKZ-Hub/refs/heads/main/Loader.lua"))()
    end)

    Button("DECODE", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ItzYumi/Decode/refs/heads/main/DE%3ACODE.lua", true))()
    end)

    Button("BLYXO HUB", function()
        loadstring(game:HttpGet("https://flowauth.net/v1/loaders/69d3463240384f3a73fbe32c178093a2.lua"))()
    end)

    Button("LENNON HUB", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lennonxscripts/lennonhubv2/refs/heads/main/stealaneggv2"))()
    end)

    Button("MIRANDA HUB", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/miirandahub/loader/refs/heads/main/stealaeggs"))()
    end)

    Section("KEY REQUIRED")

    Button("BF", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/hanniii1/Loader/refs/heads/main/BFLoader.lua"))()
    end)
end

--========================================================--
-- SERVER TAB
--========================================================--

local function ServerTab()
    Clear()
    Section("SERVER UTILITIES")
    Button("Server Hop (Low Players)", function(btn) ServerHop(btn) end)
    Button("Rejoin Server", function(btn) Rejoin(btn) end)
end

--========================================================--
-- OWNER
--========================================================--

local function Owner()
    Clear()
    Section("SOCIAL LINKS")

    Button("TikTok  â€¢  @jeiner_xx", function()
        print("TikTok: @jeiner_xx")
    end)

    Button("Discord", function()
        local Existing = Scroll:FindFirstChild("DiscordBox")
        if Existing then Existing:Destroy() end

        local Box = Instance.new("TextBox")
        Box.Name = "DiscordBox"
        Box.Size = UDim2.new(1,-4,0,34)
        Box.BackgroundColor3 = GREEN_DARK
        Box.Text = DISCORD
        Box.TextColor3 = WHITE
        Box.TextSize = 8
        Box.Font = Enum.Font.Gotham
        Box.ClearTextOnFocus = false
        Box.TextEditable = true
        Box.Parent = Scroll

        Instance.new("UICorner",Box).CornerRadius = UDim.new(0,7)
        local Stroke = Instance.new("UIStroke")
        Stroke.Color = GREEN
        Stroke.Thickness = 1
        Stroke.Transparency = 0.6
        Stroke.Parent = Box

        task.wait()
        Box:CaptureFocus()
        Box.SelectionStart = 1
        Box.CursorPosition = #DISCORD + 1
    end)

    Button("Promoter  â€¢  Jeiner")
    Button("Promoter  â€¢  Jeiner_xx")
end

--========================================================--
-- MENU BUTTONS & TAB CREATION
--========================================================--

local function MenuButton(text, callback)
    local B = Instance.new("TextButton")
    B.Size = UDim2.fromOffset(80,38)
    B.BackgroundColor3 = BUTTON
    B.Text = text
    B.TextColor3 = GRAY
    B.TextSize = 10
    B.Font = Enum.Font.GothamBold
    B.AutoButtonColor = false
    B.Parent = Menu

    Instance.new("UICorner",B).CornerRadius = UDim.new(0,8)

    local Stroke = Instance.new("UIStroke")
    Stroke.Color = GREEN
    Stroke.Thickness = 1
    Stroke.Transparency = 0.85
    Stroke.Parent = B

    B.Activated:Connect(function()
        for _,v in ipairs(Menu:GetChildren()) do
            if v:IsA("TextButton") then
                v.BackgroundColor3 = BUTTON
                v.TextColor3 = GRAY
            end
        end
        B.BackgroundColor3 = GREEN_DARK
        B.TextColor3 = WHITE
        callback()
    end)

    return B
end

local ScriptsButton = MenuButton("SCRIPTS", Scripts)
local ServerTabButton = MenuButton("SERVER", ServerTab)
local OwnerButton = MenuButton("OWNER", Owner)

ScriptsButton.BackgroundColor3 = GREEN_DARK
ScriptsButton.TextColor3 = WHITE
Scripts()

--========================================================--
-- FLOATING JNR
--========================================================--

local Floating = Instance.new("TextButton")
Floating.Size = UDim2.fromOffset(42,42)
Floating.Position = UDim2.new(1,-52,0.55,0)
Floating.BackgroundColor3 = BLACK
Floating.Text = "JNR"
Floating.TextColor3 = GREEN
Floating.TextSize = 10
Floating.Font = Enum.Font.GothamBold
Floating.AutoButtonColor = false
Floating.Visible = false
Floating.Parent = Gui

Instance.new("UICorner",Floating).CornerRadius = UDim.new(1,0)

local FloatingStroke = Instance.new("UIStroke")
FloatingStroke.Color = GREEN
FloatingStroke.Thickness = 1.5
FloatingStroke.Parent = Floating

--========================================================--
-- MOVER CÃRCULO
--========================================================--

local FloatingDragging = false
local FloatingDragStart, FloatingStartPosition

Floating.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.Touch or Input.UserInputType == Enum.UserInputType.MouseButton1 then
        FloatingDragging = true
        FloatingDragStart = Input.Position
        FloatingStartPosition = Floating.Position
    end
end)

UIS.InputChanged:Connect(function(Input)
    if not FloatingDragging then return end
    if Input.UserInputType == Enum.UserInputType.Touch or Input.UserInputType == Enum.UserInputType.MouseMovement then
        local Delta = Input.Position - FloatingDragStart
        Floating.Position = UDim2.new(
            FloatingStartPosition.X.Scale,
            FloatingStartPosition.X.Offset + Delta.X,
            FloatingStartPosition.Y.Scale,
            FloatingStartPosition.Y.Offset + Delta.Y
        )
    end
end)

UIS.InputEnded:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.Touch or Input.UserInputType == Enum.UserInputType.MouseButton1 then
        FloatingDragging = false
    end
end)

--========================================================--
-- GUARDAR / ABRIR
--========================================================--

Close.Activated:Connect(function()
    Main.Visible = false
    Floating.Visible = true
end)

Floating.Activated:Connect(function()
    Main.Visible = true
    Floating.Visible = false
end)

--========================================================--
-- MOVER HUB
--========================================================--

local Dragging = false
local DragStart, StartPosition

Header.InputBegan:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.Touch or Input.UserInputType == Enum.UserInputType.MouseButton1 then
        Dragging = true
        DragStart = Input.Position
        StartPosition = Main.Position
    end
end)

UIS.InputChanged:Connect(function(Input)
    if not Dragging then return end
    if Input.UserInputType == Enum.UserInputType.Touch or Input.UserInputType == Enum.UserInputType.MouseMovement then
        local Delta = Input.Position - DragStart
        Main.Position = UDim2.new(
            StartPosition.X.Scale,
            StartPosition.X.Offset + Delta.X,
            StartPosition.Y.Scale,
            StartPosition.Y.Offset + Delta.Y
        )
    end
end)

UIS.InputEnded:Connect(function(Input)
    if Input.UserInputType == Enum.UserInputType.Touch or Input.UserInputType == Enum.UserInputType.MouseButton1 then
        Dragging = false
    end
end)
