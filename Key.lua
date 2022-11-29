local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ITZCmert/keysusyenn/main/key.lua')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "Ключ система", HidePremium = false, SaveConfig = true, IntroEnable = false})

OrionLib:MakeNotification({
	Name = "Успешно!",
	Content = "Ты успешно зашел под "..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.key = "Hello"
_G.KeyInput = "string"

function MakeScriptHub()
  print("КлючВерный")
end  

function CorrectKeyNotNotification()
  OrionLib:MakeNotification({
	    Name = "Успешно!",
	    Content = "Код верный!",
	    Image = "rbxassetid://4483345998",
	    Time = 5
    })
end  

local Tab = Window:MakeTab({
	Name = "Ключ",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Введите ключ!",
	Default = "Введите ключ",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Проверить ключ",
	Callback = function()
      		if _G.KeyInput == _G.Key then
        MakeScriptHub()
        CorrectKeyNotNotification()
        end
  	end    
})
