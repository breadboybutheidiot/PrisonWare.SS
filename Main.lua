--[setting up]---
local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Main.lua"))()
local espLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Sirius/request/library/esp/esp.lua'),true))()
espLib:Load()
espLib.options.outOfViewArrows = false
espLib.options.outOfViewArrowsFilled = false
espLib.options.healthText = false
espLib.options.distance = false
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Players = game:GetService("Players")
local plr = Players.LocalPlayer
_G.SelfMain = false
--[Main]--
local Window = Library:CreateWindow({
    Title = 'PrisonWare.SS | Private',
    Center = true, 
    AutoShow = true,
})
--[Tabs]--
local Tabs = {
    -- Creates a new tab titled Main
    Main = Window:AddTab('Legit'), 
    Main2 = Window:AddTab('Rage'),
    Main3 = Window:AddTab('Visual'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}
--[GroupBoxes]--
local Box1 = Tabs.Main:AddLeftTabbox()
local Box2 = Tabs.Main2:AddLeftTabbox()
local Tab3 = Tabs.Main3:AddLeftGroupbox('Esp')
local Tab4 = Tabs.Main3:AddLeftGroupbox('Names')
local Tab5 = Tabs.Main3:AddLeftGroupbox('Boxes')
local Tab6 = Tabs.Main3:AddRightGroupbox('HealthBar')
local Tab7 = Tabs.Main3:AddRightGroupbox('Tracers')
local Tab8 = Tabs.Main3:AddRightGroupbox('Chams')
local Tab9 = Tabs.Main3:AddRightGroupbox('Arrows')
local Tab10 = Tabs.Main2:AddRightGroupbox('SilentAim')
local GunMod = Tabs.Main2:AddLeftTabbox()
local AntiAim = Tabs.Main2:AddLeftGroupbox('AntiAim')
local Tab11 = Tabs.Main3:AddLeftTabbox()
local KillerBox = Tabs.Main2:AddLeftGroupbox('Killer')
--[SubTabs]--
local Tab1 = Box1:AddTab('Aimbot')
local Tab2 = Box1:AddTab('Fov')
local m9box = GunMod:AddTab('M9')
local Ak47Box = GunMod:AddTab('AK-47')
local RemingtonBox = GunMod:AddTab('Remington')
local WorldBox = Tab11:AddTab('World')
local SelfBox = Tab11:AddTab('self')

--[Buttons]--

local Button1 = m9box:AddButton('Get M9', function()
    Workspace.Remote.ItemHandler:InvokeServer(Workspace.Prison_ITEMS.giver["M9"].ITEMPICKUP)
end)
local Button2 = Ak47Box:AddButton('Get AK-47', function()
    Workspace.Remote.ItemHandler:InvokeServer(Workspace.Prison_ITEMS.giver["AK-47"].ITEMPICKUP)
end)
local Button3 = RemingtonBox:AddButton('Get Remington', function()
    Workspace.Remote.ItemHandler:InvokeServer(Workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)
end)
local Button4 = KillerBox:AddButton('KillAll', function()
    loadstring(game:HttpGet("https://pastebin.com/raw/cbCUQ7pa"))()
end)

--[Toggles]--
Tab1:AddToggle('Toggle1', {
    Text = 'Enable Aimbot',
    Default = false, -- Default value (true / false)
    Tooltip = 'Status: Undetected', -- Information shown when you hover over the toggle
})
Toggles.Toggle1:OnChanged(function()
    getgenv().Aimbot.Settings.Enabled = Toggles.Toggle1.Value
end)
Tab1:AddToggle('Toggle2', {
    Text = 'Enable TeamCheck',
    Default = false, -- Default value (true / false)
    Tooltip = 'Status: Undetected', -- Information shown when you hover over the toggle
})
Toggles.Toggle2:OnChanged(function()
    getgenv().Aimbot.Settings.TeamCheck = Toggles.Toggle2.Value
end)
Tab1:AddToggle('Toggle3', {
    Text = 'Enable WallCheck',
    Default = false, -- Default value (true / false)
    Tooltip = 'Laggy', -- Information shown when you hover over the toggle
})
Toggles.Toggle3:OnChanged(function()
    getgenv().Aimbot.Settings.WallCheck = Toggles.Toggle3.Value
end)
Tab1:AddToggle('Toggle4', {
    Text = 'Enable ThirdPersonAim',
    Default = false, -- Default value (true / false)
    Tooltip = 'Uses mousemoverel instead of CFrame to support locking in third person (could be choppy', -- Information shown when you hover over the toggle
})
Toggles.Toggle4:OnChanged(function()
    getgenv().Aimbot.Settings.ThirdPerson = Toggles.Toggle4.Value
end)
Tab2:AddToggle('Toggle5', {
    Text = 'Enable Fov',
    Default = false, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
})
Toggles.Toggle5:OnChanged(function()
    getgenv().Aimbot.FOVSettings.Enabled = Toggles.Toggle5.Value
end)
Tab3:AddToggle('Toggle6', {
    Text = 'Enable visuals',
    Default = false, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
})
Toggles.Toggle6:OnChanged(function()
    espLib.options.enabled = Toggles.Toggle6.Value
end)
Tab3:AddToggle('Toggle7', {
    Text = 'Enable limitDistance',
    Default = false, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
})
Toggles.Toggle7:OnChanged(function()
    espLib.options.limitDistance = Toggles.Toggle7.Value
end)
Tab3:AddToggle('Toggle8', {
    Text = 'TeamCheck',
    Default = false, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
})
Toggles.Toggle8:OnChanged(function()
    espLib.options.teamCheck = Toggles.Toggle8.Value
end)
Tab3:AddToggle('Toggle9', {
    Text = 'Enable teamColor',
    Default = false, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
})
Toggles.Toggle9:OnChanged(function()
    espLib.options.teamColor = Toggles.Toggle9.Value
end)
Tab4:AddToggle('Toggle10', {
    Text = 'Names',
    Default = false, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
})
Toggles.Toggle10:OnChanged(function()
    espLib.options.names = Toggles.Toggle10.Value
end)
Tab5:AddToggle('Toggle11', {
    Text = 'Boxes',
    Default = false, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
})
Toggles.Toggle11:OnChanged(function()
    espLib.options.boxes = Toggles.Toggle11.Value
end)
Tab5:AddToggle('Toggle12', {
    Text = 'BoxFill',
    Default = false, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
})
Toggles.Toggle12:OnChanged(function()
    espLib.options.boxFill = Toggles.Toggle12.Value
end)
Tab6:AddToggle('Toggle13', {
    Text = 'HealthBar',
    Default = false, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
})
Toggles.Toggle13:OnChanged(function()
    espLib.options.healthBars = Toggles.Toggle13.Value
end)
Tab7:AddToggle('Toggle14', {
    Text = 'tracers',
    Default = false, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
})
Toggles.Toggle14:OnChanged(function()
    espLib.options.tracers = Toggles.Toggle14.Value
end)
Tab8:AddToggle('Toggle15', {
    Text = 'Chams',
    Default = false, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
})
Toggles.Toggle15:OnChanged(function()
    espLib.options.chams = Toggles.Toggle15.Value
end)
Tab9:AddToggle('Toggle16', {
    Text = 'outOfViewArrows',
    Default = false, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
})
Toggles.Toggle16:OnChanged(function()
    espLib.options.outOfViewArrows = Toggles.Toggle16.Value
end)
Tab9:AddToggle('Toggle17', {
    Text = 'outOfViewArrowsFilled',
    Default = false, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
})
Toggles.Toggle17:OnChanged(function()
    espLib.options.outOfViewArrowsFilled = Toggles.Toggle17.Value
end)
Tab9:AddToggle('Toggle18', {
    Text = 'outOfViewArrowsOutline',
    Default = false, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
})
Toggles.Toggle18:OnChanged(function()
    espLib.options.outOfViewArrowsOutline = Toggles.Toggle18.Value
end)
Tab9:AddToggle('Toggle19', {
    Text = 'outOfViewArrowsOutlineFilled',
    Default = false, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
})
Toggles.Toggle19:OnChanged(function()
    espLib.options.outOfViewArrowsOutlineFilled = Toggles.Toggle19.Value
end)
AntiAim:AddToggle('Toggle20', {
    Text = 'FakeDuck',
    Default = false, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
})
Toggles.Toggle20:OnChanged(function()
    
    local action = game.Players.LocalPlayer.Character.Humanoid.Animator:LoadAnimation(game:GetService("Players").LocalPlayer.Character.ClientInputHandler["prone_walk"])
    while Toggles.Toggle20.Value == true do
        action:Play()
        task.wait(0.1)
        action:Stop()
        task.wait(0.1)
    end
end)
AntiAim:AddToggle('Toggle21', {
    Text = 'SpinBot',
    Default = false, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
})
Toggles.Toggle21:OnChanged(function()
    
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://188632011"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
	SpinACTIVE = Toggles.Toggle21.Value
	if SpinACTIVE then
		while Toggles.Toggle21.Value == true do
		        task.wait(0.1)
				track:Play(.1, 1, 2)
		end
	else
		track:Stop()
	end
end)
SelfBox:AddToggle('Toggle22', {
    Text = 'Enable self',
    Default = false, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
})
Toggles.Toggle22:OnChanged(function()
    spawn(function()
        while task.wait() do
                _G.SelfMain = Toggles.Toggle22.Value
                game:GetService("Players").LocalPlayer.Character["Right Leg"].Material = Enum.Material.ForceField
                game:GetService("Players").LocalPlayer.Character["Left Leg"].Material = Enum.Material.ForceField
                game:GetService("Players").LocalPlayer.Character["Right Arm"].Material = Enum.Material.ForceField
                game:GetService("Players").LocalPlayer.Character["Left Arm"].Material = Enum.Material.ForceField
                game:GetService("Players").LocalPlayer.Character.Torso.Material = Enum.Material.ForceField
                game:GetService("Players").LocalPlayer.Character.Head.Material = Enum.Material.ForceField
        end
    end)
end)
KillerBox:AddToggle('Toggle23', {
    Text = 'FakeLag',
    Default = false, -- Default value (true / false)
    Tooltip = '', -- Information shown when you hover over the toggle
})
Toggles.Toggle23:OnChanged(function()
    
end)

--[Sliders]--

Tab1:AddSlider('Slider1', {
    Text = 'Sensivity of aimbot',
    Default = 0,
    Min = 0,
    Max = 1,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider1:OnChanged(function()
    getgenv().Aimbot.Settings.Sensitivity = Options.Slider1.Value
end)

Tab2:AddSlider('Slider2', {
    Text = 'angle amount',
    Default = 60,
    Min = 30,
    Max = 300,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider2:OnChanged(function()
    getgenv().Aimbot.FOVSettings.Amount = Options.Slider2.Value
end)
Tab2:AddSlider('Slider3', {
    Text = 'Sides',
    Default = 60,
    Min = 3,
    Max = 100,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider3:OnChanged(function()
    getgenv().Aimbot.FOVSettings.Sides = Options.Slider3.Value
end)
Tab2:AddSlider('Slider4', {
    Text = 'Thickness',
    Default = 1,
    Min = 1,
    Max = 5,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider4:OnChanged(function()
    getgenv().Aimbot.FOVSettings.Thickness = Options.Slider4.Value
end)
Tab3:AddSlider('Slider5', {
    Text = 'maxDistance',
    Default = 1000,
    Min = 1,
    Max = 3000,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider5:OnChanged(function()
    espLib.options.maxDistance = Options.Slider5.Value
end)
Tab6:AddSlider('Slider6', {
    Text = 'healthBarsSize',
    Default = 1,
    Min = 0,
    Max = 10,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider6:OnChanged(function()
    espLib.options.healthBarsSize = Options.Slider6.Value
end)
Tab9:AddSlider('Slider7', {
    Text = 'outOfViewArrowsSize',
    Default = 25,
    Min = 1,
    Max = 100,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider7:OnChanged(function()
    espLib.options.outOfViewArrowsSize = Options.Slider7.Value
end)
Tab9:AddSlider('Slider8', {
    Text = 'outOfViewArrowsRadius',
    Default = 100,
    Min = 1,
    Max = 1000,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider8:OnChanged(function()
    espLib.options.outOfViewArrowsRadius = Options.Slider8.Value
end)
Tab8:AddSlider('Slider9', {
    Text = 'chamsFillTransparency',
    Default = 0.5,
    Min = 0,
    Max = 1,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider9:OnChanged(function()
    espLib.options.chamsFillTransparency = Options.Slider9.Value
end)
Tab8:AddSlider('Slider10', {
    Text = 'chamsOutlineTransparency',
    Default = 0.5,
    Min = 0,
    Max = 1,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider10:OnChanged(function()
    espLib.options.chamsOutlineTransparency = Options.Slider10.Value
end)
m9box:AddSlider('Slider11', {
    Text = 'MaxAmmo',
    Default = 30,
    Min = 30,
    Max = 100000,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider11:OnChanged(function()
    if plr.Backpack:FindFirstChild("M9") then
        local gun = plr.Backpack:FindFirstChild("M9")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["MaxAmmo"] = Options.Slider11.Value
    elseif plr.Character:FindFirstChild("M9") then
        local gun = plr.Character:FindFirstChild("M9")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["MaxAmmo"] = Options.Slider11.Value
    end
end)
m9box:AddSlider('Slider12', {
    Text = 'StoredAmmo',
    Default = 30,
    Min = 30,
    Max = 100000,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider12:OnChanged(function()
    if plr.Backpack:FindFirstChild("M9") then
        local gun = plr.Backpack:FindFirstChild("M9")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["StoredAmmo"] = Options.Slider12.Value
    elseif plr.Character:FindFirstChild("M9") then
        local gun = plr.Character:FindFirstChild("M9")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["StoredAmmo"] = Options.Slider12.Value
    end
end)
m9box:AddSlider('Slider13', {
    Text = 'FireRate',
    Default = 1,
    Min = 0.01,
    Max = 1,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider13:OnChanged(function()
    if plr.Backpack:FindFirstChild("M9") then
        local gun = plr.Backpack:FindFirstChild("M9")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["FireRate"] = Options.Slider13.Value
    elseif plr.Character:FindFirstChild("M9") then
        local gun = plr.Character:FindFirstChild("M9")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["FireRate"] = Options.Slider13.Value
    end
end)
m9box:AddSlider('Slider14', {
    Text = 'Range',
    Default = 1,
    Min = 1,
    Max = 100000,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider14:OnChanged(function()
    if plr.Backpack:FindFirstChild("M9") then
        local gun = plr.Backpack:FindFirstChild("M9")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["Range"] = Options.Slider14.Value
    elseif plr.Character:FindFirstChild("M9") then
        local gun = plr.Character:FindFirstChild("M9")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["Range"] = Options.Slider14.Value
    end
end)
m9box:AddSlider('Slider15', {
    Text = 'ReloadTime',
    Default = 1,
    Min = 0.01,
    Max = 5,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider15:OnChanged(function()
    if plr.Backpack:FindFirstChild("M9") then
        local gun = plr.Backpack:FindFirstChild("M9")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["ReloadTime"] = Options.Slider15.Value
    elseif plr.Character:FindFirstChild("M9") then
        local gun = plr.Character:FindFirstChild("M9")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["ReloadTime"] = Options.Slider15.Value
    end
end)
Ak47Box:AddSlider('Slider16', {
    Text = 'MaxAmmo',
    Default = 30,
    Min = 30,
    Max = 100000,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider16:OnChanged(function()
    if plr.Backpack:FindFirstChild("AK-47") then
        local gun = plr.Backpack:FindFirstChild("AK-47")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["MaxAmmo"] = Options.Slider16.Value
    elseif plr.Character:FindFirstChild("AK-47") then
        local gun = plr.Character:FindFirstChild("AK-47")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["MaxAmmo"] = Options.Slider16.Value
    end
end)
Ak47Box:AddSlider('Slider17', {
    Text = 'StoredAmmo',
    Default = 30,
    Min = 30,
    Max = 100000,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider17:OnChanged(function()
    if plr.Backpack:FindFirstChild("AK-47") then
        local gun = plr.Backpack:FindFirstChild("AK-47")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["StoredAmmo"] = Options.Slider17.Value
    elseif plr.Character:FindFirstChild("AK-47") then
        local gun = plr.Character:FindFirstChild("AK-47")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["StoredAmmo"] = Options.Slider17.Value
    end
end)
Ak47Box:AddSlider('Slider18', {
    Text = 'FireRate',
    Default = 1,
    Min = 0.01,
    Max = 1,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider18:OnChanged(function()
    if plr.Backpack:FindFirstChild("AK-47") then
        local gun = plr.Backpack:FindFirstChild("AK-47")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["FireRate"] = Options.Slider18.Value
    elseif plr.Character:FindFirstChild("AK-47") then
        local gun = plr.Character:FindFirstChild("AK-47")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["FireRate"] = Options.Slider18.Value
    end
end)
Ak47Box:AddSlider('Slider19', {
    Text = 'Range',
    Default = 1,
    Min = 1,
    Max = 100000,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider19:OnChanged(function()
    if plr.Backpack:FindFirstChild("AK-47") then
        local gun = plr.Backpack:FindFirstChild("AK-47")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["Range"] = Options.Slider19.Value
    elseif plr.Character:FindFirstChild("AK-47") then
        local gun = plr.Character:FindFirstChild("AK-47")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["Range"] = Options.Slider19.Value
    end
end)
Ak47Box:AddSlider('Slider20', {
    Text = 'ReloadTime',
    Default = 1,
    Min = 0.01,
    Max = 5,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider20:OnChanged(function()
    if plr.Backpack:FindFirstChild("AK-47") then
        local gun = plr.Backpack:FindFirstChild("AK-47")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["ReloadTime"] = Options.Slider20.Value
    elseif plr.Character:FindFirstChild("AK-47") then
        local gun = plr.Character:FindFirstChild("AK-47")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["ReloadTime"] = Options.Slider20.Value
    end
end)
RemingtonBox:AddSlider('Slider21', {
    Text = 'MaxAmmo',
    Default = 30,
    Min = 30,
    Max = 100000,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider21:OnChanged(function()
    if plr.Backpack:FindFirstChild("Remington") then
        local gun = plr.Backpack:FindFirstChild("Remington 870")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["MaxAmmo"] = Options.Slider21.Value
    elseif plr.Character:FindFirstChild("Remington 870") then
        local gun = plr.Character:FindFirstChild("Remington 870")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["MaxAmmo"] = Options.Slider21.Value
    end
end)
RemingtonBox:AddSlider('Slider22', {
    Text = 'StoredAmmo',
    Default = 30,
    Min = 30,
    Max = 100000,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider22:OnChanged(function()
    if plr.Backpack:FindFirstChild("Remington 870") then
        local gun = plr.Backpack:FindFirstChild("Remington 870")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["StoredAmmo"] = Options.Slider22.Value
    elseif plr.Character:FindFirstChild("Remington 870") then
        local gun = plr.Character:FindFirstChild("Remington 870")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["StoredAmmo"] = Options.Slider22.Value
    end
end)
RemingtonBox:AddSlider('Slider23', {
    Text = 'FireRate',
    Default = 1,
    Min = 0.01,
    Max = 1,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider23:OnChanged(function()
    if plr.Backpack:FindFirstChild("Remington 870") then
        local gun = plr.Backpack:FindFirstChild("Remington 870")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["FireRate"] = Options.Slider23.Value
    elseif plr.Character:FindFirstChild("Remington 870") then
        local gun = plr.Character:FindFirstChild("Remington 870")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["FireRate"] = Options.Slider23.Value
    end
end)
RemingtonBox:AddSlider('Slider24', {
    Text = 'Range',
    Default = 1,
    Min = 1,
    Max = 100000,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider23:OnChanged(function()
    if plr.Backpack:FindFirstChild("Remington 870") then
        local gun = plr.Backpack:FindFirstChild("Remington 870")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["Range"] = Options.Slider23.Value
    elseif plr.Character:FindFirstChild("Remington 870") then
        local gun = plr.Character:FindFirstChild("Remington 870")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["Range"] = Options.Slider23.Value
    end
end)
RemingtonBox:AddSlider('Slider24', {
    Text = 'ReloadTime',
    Default = 1,
    Min = 0.01,
    Max = 5,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider24:OnChanged(function()
    if plr.Backpack:FindFirstChild("Remington 870") then
        local gun = plr.Backpack:FindFirstChild("Remington 870")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["ReloadTime"] = Options.Slider24.Value
    elseif plr.Character:FindFirstChild("Remington 870") then
        local gun = plr.Character:FindFirstChild("Remington 870")
        local sM = require(gun:FindFirstChild("GunStates"))
        sM["ReloadTime"] = Options.Slider24.Value
    end
end)
WorldBox:AddSlider('Slider25', {
    Text = 'Clock time',
    Default = 0,
    Min = 0,
    Max = 24,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
Options.Slider25:OnChanged(function()
    spawn(function()
            while task.wait() do
        game:GetService("Lighting").ClockTime = Options.Slider25.Value
    end
    end)
end)

--[Binds]--

Tab1:AddLabel('TriggerButton'):AddKeyPicker('KeyPicker', {
    Default = 'Q', -- String as the name of the keybind (MB1, MB2 for mouse buttons)  
    SyncToggleState = false, 
    Mode = 'Toggle', -- Modes: Always, Toggle, Hold
    Text = 'Trigger', -- Text to display in the keybind menu
    NoUI = false, -- Set to true if you want to hide from the Keybind menu,
})
Options.KeyPicker:OnClick(function()
     getgenv().Aimbot.Settings.TriggerKey = Options.KeyPicker.Value
end)

--[DropDown]--

Tab1:AddDropdown('Drop1', {
    Values = { 'Head', 'Torso'},
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'LockPart',
    Tooltip = 'Body part to lock on', -- Information shown when you hover over the textbox
})
Options.Drop1:OnChanged(function()
    getgenv().Aimbot.Settings.LockPart = Options.Drop1.Value
end)
Tab7:AddDropdown('Drop2', {
    Values = { 'Mouse', 'Top', 'Bottom'},
    Default = 2, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'tracer origin',
    Tooltip = '', -- Information shown when you hover over the textbox
})
Options.Drop2:OnChanged(function()
    espLib.options.tracerOrigin = Options.Drop2.Value
end)

--[ColorPicker]--

Tab2:AddLabel('Fov color'):AddColorPicker('ColorPicker1', {
    Default = Color3.new(0, 1, 0), -- Bright green
    Title = 'Some color', -- Optional. Allows you to have a custom color picker title (when you open it)
})

Options.ColorPicker1:OnChanged(function()
    local R = Options.ColorPicker1.Value.R*255
    local G = Options.ColorPicker1.Value.G*255
    local B = Options.ColorPicker1.Value.B*255
    local allcolournow = R..",".. G..","..B
    print(allcolournow)
    getgenv().Aimbot.FOVSettings.Color = tostring(allcolournow)
end)
Tab4:AddLabel('Names color'):AddColorPicker('ColorPicker2', {
    Default = Color3.new(0, 1, 0), -- Bright green
    Title = 'Some color', -- Optional. Allows you to have a custom color picker title (when you open it)
})

Options.ColorPicker2:OnChanged(function()
    espLib.options.nameColor = Options.ColorPicker2.Value
end)
Tab5:AddLabel('boxes color'):AddColorPicker('ColorPicker3', {
    Default = Color3.new(0, 1, 0), -- Bright green
    Title = 'Some color', -- Optional. Allows you to have a custom color picker title (when you open it)
})

Options.ColorPicker3:OnChanged(function()
    espLib.options.boxesColor = Options.ColorPicker3.Value
end)
Tab5:AddLabel('boxFill color'):AddColorPicker('ColorPicker4', {
    Default = Color3.new(0, 1, 0), -- Bright green
    Title = 'Some color', -- Optional. Allows you to have a custom color picker title (when you open it)
})

Options.ColorPicker4:OnChanged(function()
    espLib.options.boxFillColor = Options.ColorPicker4.Value
end)
Tab6:AddLabel('healthBars color'):AddColorPicker('ColorPicker5', {
    Default = Color3.new(0, 1, 0), -- Bright green
    Title = 'Some color', -- Optional. Allows you to have a custom color picker title (when you open it)
})

Options.ColorPicker5:OnChanged(function()
    espLib.options.healthBarsColor = Options.ColorPicker5.Value
end)
Tab7:AddLabel('tracer color'):AddColorPicker('ColorPicker6', {
    Default = Color3.new(0, 1, 0), -- Bright green
    Title = 'Some color', -- Optional. Allows you to have a custom color picker title (when you open it)
})

Options.ColorPicker6:OnChanged(function()
    espLib.options.tracerColor = Options.ColorPicker6.Value
end)
Tab8:AddLabel('chamsFill Color'):AddColorPicker('ColorPicker7', {
    Default = Color3.new(0, 1, 0), -- Bright green
    Title = 'Some color', -- Optional. Allows you to have a custom color picker title (when you open it)
})

Options.ColorPicker7:OnChanged(function()
    espLib.options.chamsFillColor = Options.ColorPicker7.Value
end)
Tab8:AddLabel('chamsOutline Color'):AddColorPicker('ColorPicker8', {
    Default = Color3.new(0, 1, 0), -- Bright green
    Title = 'Some color', -- Optional. Allows you to have a custom color picker title (when you open it)
})

Options.ColorPicker8:OnChanged(function()
    espLib.options.chamsOutlineColor = Options.ColorPicker8.Value
end)
Tab9:AddLabel('outOfViewArrowsColor'):AddColorPicker('ColorPicker9', {
    Default = Color3.new(0, 1, 0), -- Bright green
    Title = 'Some color', -- Optional. Allows you to have a custom color picker title (when you open it)
})

Options.ColorPicker9:OnChanged(function()
    espLib.options.outOfViewArrowsColor = Options.ColorPicker9.Value
end)
Tab9:AddLabel('outOfViewArrowsOutlineColor'):AddColorPicker('ColorPicker10', {
    Default = Color3.new(0, 1, 0), -- Bright green
    Title = 'Some color', -- Optional. Allows you to have a custom color picker title (when you open it)
})

Options.ColorPicker10:OnChanged(function()
    espLib.options.outOfViewArrowsOutlineColor = Options.ColorPicker10.Value
end)
WorldBox:AddLabel('Ambient'):AddColorPicker('ColorPicker11', {
    Default = Color3.new(0, 0, 0), -- Bright green
    Title = 'Some color', -- Optional. Allows you to have a custom color picker title (when you open it)
})

Options.ColorPicker11:OnChanged(function()
    game:GetService("Lighting").Ambient = Options.ColorPicker11.Value
end)

SelfBox:AddLabel('Body Color'):AddColorPicker('ColorPicker12', {
    Default = Color3.new(0, 0, 0), -- Bright green
    Title = 'Some color', -- Optional. Allows you to have a custom color picker title (when you open it)
})

Options.ColorPicker12:OnChanged(function()
    spawn(function()
        while task.wait() do
            if _G.SelfMain == true then
                		game:GetService("Players").LocalPlayer.Character["Right Leg"].Color = Options.ColorPicker12.Value
                        game:GetService("Players").LocalPlayer.Character["Left Leg"].Color= Options.ColorPicker12.Value
                        game:GetService("Players").LocalPlayer.Character["Right Arm"].Color= Options.ColorPicker12.Value
                        game:GetService("Players").LocalPlayer.Character["Left Arm"].Color= Options.ColorPicker12.Value
                        game:GetService("Players").LocalPlayer.Character.Torso.Color= Options.ColorPicker12.Value
                        game:GetService("Players").LocalPlayer.Character.Head.Color= Options.ColorPicker12.Value
          end
        end
    end)
end)






-- Library functions
-- Sets the watermark visibility
Library:SetWatermarkVisibility(true)

-- Sets the watermark text
Library:SetWatermark('PrisonWare.SS | Private | IronMarch.com')
-- UI Settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

-- I set NoUI so it does not show up in the keybinds menu
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' }) 

Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- ThemeManager (Allows you to have a menu theme system)

-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager. 
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings() 

-- Adds our MenuKeybind to the ignore list 
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 

-- use case for doing it this way: 
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder('PrisonWareTheme')
SaveManager:SetFolder('PrisonWareCfg/specific-game')

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Tabs['UI Settings']) 

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs['UI Settings'])

-- You can use the SaveManager:LoadAutoloadConfig() to load a config 
-- which has been marked to be one that auto loads!
