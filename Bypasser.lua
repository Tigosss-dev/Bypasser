--[[
	WARNING: Heads up! This script has been verified by TerryScripts.
]]
 
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Chat Bypasser", HidePremium = false, IntroText = "Chat Bypasser", SaveConfig = false})
 
loadstring(game:HttpGet('https://raw.githubusercontent.com/vqmpjayZ/More-Scripts/main/Anti-Chat-LoggerV2.lua'))() -- anti chat logger (not by me)
 
function chat(msg)
 
    if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(msg)
    else
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
    end
 
end
 
local chatTab = Window:MakeTab({
	Name = "Chat Stuff",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 
chatTab:AddLabel("                                      CHAT BYPASS")
 
local method = nil
 
chatTab:AddDropdown({
	Name = "Method",
	Options = {"ěx́ǎḿṕĺě", "éxạmṕĺe", "ẹ̲х̲ạ̲ṃ̲р̲ḷ̲ẹ̲", "e>x>a>m>p>l>e", "￵example", "3></-\\/\\/\\p|_3"},
	Callback = function(val)
        method = val
	end
})
 
function bypasstext(text, method)
    if method == 1 then
        local function addAccents(word)
            local accents = {
                a = "ǎ",
                b = "ḃ",
                c = "ć",
                d = "d́",
                e = "ě",
                f = "ḟ",
                g = "ġ",
                h = "ḣ",
                i = "í",
                j = "j́",
                k = "ḱ",
                l = "ĺ",
                m = "ḿ",
                n = "n̋",
                o = "ō",
                p = "ṕ",
                q = "q́",
                r = "ŕ",
                s = "ś",
                t = "t̋",
                u = "ū",
                v = "v̇",
                w = "ẃ",
                x = "x́",
                y = "ý",
                z = "ź",
                A = "Ǎ",
                B = "Ḃ",
                C = "Ć",
                D = "D́",
                E = "Ě",
                F = "Ḟ",
                G = "Ġ",
                H = "Ḣ",
                I = "Í",
                J = "J́",
                K = "Ḱ",
                L = "Ĺ",
                M = "Ḿ",
                N = "N̋",
                O = "Ō",
                P = "Ṕ",
                Q = "Q́",
                R = "Ŕ",
                S = "Ś",
                T = "T̋",
                U = "Ū",
                V = "V̇",
                W = "Ẃ",
                X = "X́",
                Y = "Ý",
                Z = "Ź"
            }
 
            local bypassedWord = ""
            for i = 1, #word do
                local letter = word:sub(i, i)
                if accents[letter] then
                    bypassedWord = bypassedWord .. accents[letter]
                else
                    bypassedWord = bypassedWord .. letter
                end
            end
 
            return bypassedWord
        end
 
        local function bypassString(input)
            local words = {}
            for word in string.gmatch(input, "%S+") do
                table.insert(words, addAccents(word))
            end
            return table.concat(words, " ")
        end
 
        return bypassString(text)
    elseif method == 2 then
        local function addAccents2(word)
            local accents2 = {
                a = "ạ",
                b = "ḃ",
                c = "c",
                d = "d́",
                e = "e",
                f = "ḟ",
                g = "ġ",
                h = "ḣ",
                i = "i",
                j = "j́",
                k = "ḳ",
                l = "ĺ",
                m = "m",
                n = "n̋",
                o = "o",
                p = "ṕ",
                q = "q́",
                r = "ŕ",
                s = "ṣ",
                t = "t",
                u = "ụ",
                v = "v̇",
                w = "ẃ",
                x = "x́",
                y = "y",
                z = "z",
                A = "Ạ",
                B = "Ḃ",
                C = "C",
                D = "D́",
                E = "E",
                F = "Ḟ",
                G = "Ġ",
                H = "Ḣ",
                I = "I",
                J = "J́",
                K = "Ḱ",
                L = "Ĺ",
                M = "M",
                N = "N",
                O = "O",
                P = "Ṕ",
                Q = "Q́",
                R = "Ŕ",
                S = "Ṣ",
                T = "T",
                U = "Ụ",
                V = "V̇",
                W = "Ẃ",
                X = "X́",
                Y = "Y",
                Z = "Z"
            }
 
            local bypassedWord = ""
            for i = 1, #word do
                local letter = word:sub(i, i)
                if accents2[letter] then
                    bypassedWord = bypassedWord .. accents2[letter]
                else
                    bypassedWord = bypassedWord .. letter
                end
            end
 
            return bypassedWord
        end
 
        local function bypassString(input)
            local words = {}
            for word in string.gmatch(input, "%S+") do
                table.insert(words, addAccents2(word))
            end
            return table.concat(words, " ")
        end
 
        return bypassString(text)
    elseif method == 3 then
        local function addAccents3(word)
            local accents3 = {
                a = "ạ̲",
                b = "ḅ̲",
                c = "с̲",
                d = "ḍ̲",
                e = "ẹ̲",
                f = "f̲",
                g = "ɡ̲",
                h = "ḥ̲",
                i = "ị̲",
                j = "ј̲",
                k = "ḳ̲",
                l = "ḷ̲",
                m = "ṃ̲",
                n = "ṇ̲",
                o = "ọ̲",
                p = "р̲",
                q = "q̲",
                r = "ṛ̲",
                s = "ṣ̲",
                t = "ṭ̲",
                u = "ụ̲",
                v = "ṿ̲",
                w = "ẉ̲",
                x = "х̲",
                y = "ỵ̲",
                z = "ẓ̲",
                A = "Ạ̲",
                B = "Ḅ̲",
                C = "С̲",
                D = "Ḍ̲",
                E = "Ẹ̲",
                F = "F̲",
                G = "Ɡ̲",
                H = "Ḥ̲",
                I = "Ị̲",
                J = "Ј̲",
                K = "Ḳ̲",
                L = "Ḷ̲",
                M = "Ṃ̲",
                N = "Ṇ̲",
                O = "Ọ̲",
                P = "Р̲",
                Q = "Q̲",
                R = "Ṛ̲",
                S = "Ṣ̲",
                T = "Ṭ̲",
                U = "Ụ̲",
                V = "Ṿ̲",
                W = "Ẉ̲",
                X = "Х̲",
                Y = "Ỵ̲",
                Z = "Ẓ̲"
            }
 
            local bypassedWord = ""
            for i = 1, #word do
                local letter = word:sub(i, i)
                if accents3[letter] then
                    bypassedWord = bypassedWord .. accents3[letter]
                else
                    bypassedWord = bypassedWord .. letter
                end
            end
 
            return bypassedWord
        end
 
        local function bypassString(input)
            local words = {}
            for word in string.gmatch(input, "%S+") do
                table.insert(words, addAccents3(word))
            end
            return table.concat(words, " ")
        end
 
        return bypassString(text)
    elseif method == 4 then
        local function modifyText(input)
            local modifiedText = ""
            for i = 1, #input do
                modifiedText = modifiedText .. string.sub(input, i, i) .. ">"
            end
 
            return modifiedText
        end
 
        return modifyText(text)
    elseif method == 5 then
        local function addAccents5(word)
            local accents5 = {
                a = "a",
                b = "b￵￵",
                c = "c￵￵",
                d = "d",
                e = "￵￵e",
                f = "￵￵󠀕f￵￵",
                g = "g",
                h = "h￵￵",
                i = "￵￵i",
                j = "￵￵j￵￵",
                k = "k",
                l = "l￵￵",
                m = "m",
                n = "n",
                o = "o￵￵",
                p = "p",
                q = "q￵￵",
                r = "￵￵r￵￵",
                s = "￵￵s",
                t = "￵￵t￵￵",
                u = "u",
                v = "v",
                w = "w",
                x = "x",
                y = "y",
                z = "￵￵z￵￵󠀕",
                A = "A￵￵󠀕",
                B = "B",
                C = "C",
                D = "￵￵D",
                E = "￵￵E￵￵󠀕",
                F = "F￵￵",
                G = "￵￵G",
                H = "H",
                I = "￵￵I",
                J = "￵￵J",
                K = "K",
                L = "￵￵L",
                M = "M￵￵",
                N = "N￵￵",
                O = "O",
                P = "P￵￵",
                Q = "Q",
                R = "￵￵R",
                S = "S",
                T = "T",
                U = "￵￵U",
                V = "V",
                W = "W￵￵",
                X = "￵￵X",
                Y = "￵￵Y",
                Z = "Z￵￵󠀕"
            }
 
            local bypassedWord = ""
            for i = 1, #word do
                local letter = word:sub(i, i)
                if accents5[letter] then
                    bypassedWord = bypassedWord .. accents5[letter]
                else
                    bypassedWord = bypassedWord .. letter
                end
            end
 
            return bypassedWord
        end
 
        local function bypassString(input)
            local words = {}
            for word in string.gmatch(input, "%S+") do
                table.insert(words, addAccents5(word))
            end
            return table.concat(words, "")
        end
 
        return bypassString(text)
    elseif method == 6 then
        local function addAccents6(word)
            local accents6 = {
                a = "/-\\",
                b = "L3",
                c = "C",
                d = "CL",
                e = "3",
                f = "F",
                g = "G",
                h = "|-|",
                i = "L",
                j = "J",
                k = "L<",
                l = "|_",
                m = "/\\/\\",
                n = "/\\/",
                o = "0",
                p = "P",
                q = "Q",
                r = "R",
                s = "$",
                t = "T",
                u = "|_|",
                v = "\\/",
                w = "\\/\\/",
                x = "><",
                y = "Y",
                z = "Z"
            }
 
            local bypassedWord = ""
            for i = 1, #word do
                local letter = word:sub(i, i):lower()
                if accents6[letter] then
                    bypassedWord = bypassedWord .. accents6[letter]
                else
                    bypassedWord = bypassedWord .. letter
                end
            end
 
            return bypassedWord
        end
 
        local function bypassString(input)
            local words = {}
            for word in string.gmatch(input, "%S+") do
                table.insert(words, addAccents6(word))
            end
            return table.concat(words, " ")
        end
 
        return bypassString(text)
    end
end
 
chatTab:AddTextbox({
	Name = "Chat",
	TextDisappear = true,
	Callback = function(val)
        if val ~= "" then
            if method == "ěx́ǎḿṕĺě" then
                chat(bypasstext(val, 1))
            elseif method == "éxạmṕĺe" then
                chat(bypasstext(val, 2))
            elseif method == "ẹ̲х̲ạ̲ṃ̲р̲ḷ̲ẹ̲" then
                chat(bypasstext(val, 3))
            elseif method == "e>x>a>m>p>l>e" then
                chat(bypasstext(val, 4))
            elseif method == "￵example" then
                chat(bypasstext(val, 5))
            elseif method == "3></-\\/\\/\\p|_3" then
                chat(bypasstext(val, 6))
            else
                OrionLib:MakeNotification({
                    Name = "Ops.",
                    Content = "Looks like you didn't select a method!",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
            end
        else
            OrionLib:MakeNotification({
                Name = "Ops.",
                Content = "Looks like you didn't enter any text!",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})
 
local autobypass = false
local textBox = game:GetService("CoreGui").ExperienceChat.appLayout.chatInputBar.Background.Container.TextContainer.TextBoxContainer.TextBox
 
chatTab:AddToggle({
    Name = "Auto Bypass",
    Default = false,
    Callback = function(val)
        autobypass = val
 
        if val == true then
            OrionLib:MakeNotification({
                Name = "Auto Bypass",
                Content = "Auto bypass has been enabled!",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        else
            OrionLib:MakeNotification({
                Name = "Auto Bypass",
                Content = "Auto bypass has been disabled!",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
 
        textBox.FocusLost:Connect(function(enter)
            if enter and autobypass then
                if textBox.Text ~= "" then
                    if method == "ěx́ǎḿṕĺě" then
                        chat(bypasstext(textBox.Text, 1))
                        textBox.Text = ""
                    elseif method == "éxạmṕĺe" then
                        chat(bypasstext(textBox.Text, 2))
                        textBox.Text = ""
                    elseif method == "ẹ̲х̲ạ̲ṃ̲р̲ḷ̲ẹ̲" then
                        chat(bypasstext(textBox.Text, 3))
                        textBox.Text = ""
                    elseif method == "e>x>a>m>p>l>e" then
                        chat(bypasstext(textBox.Text, 4))
                        textBox.Text = ""
                    elseif method == "￵example" then
                        chat(bypasstext(textBox.Text, 5))
                        textBox.Text = ""
                    elseif method == "3></-\\/\\/\\p|_3" then
                        chat(bypasstext(textBox.Text, 6))
                        textBox.Text = ""
                    else
                        OrionLib:MakeNotification({
                            Name = "Ops.",
                            Content = "Looks like you didn't select a method!",
                            Image = "rbxassetid://4483345998",
                            Time = 5
                        })
                    end
                end
            end
        end)
    end
})
 
chatTab:AddLabel("                                         CHAT LOG")
 
local logging = false
local webhook = ""
 
function sendToWebhook(msg, username)
 
    local data = {
        content = msg,
        username = username
    }
 
    local requestData = {
        Url = webhook,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json",
        },
        Body = game:GetService("HttpService"):JSONEncode(data)
    }
 
    request(requestData)
 
end
 
chatTab:AddTextbox({
    Name = "Webhook",
    TextDisappear = false,
    Callback = function(val)
        webhook = val
    end
})
 
chatTab:AddToggle({
    Name = "Log",
    Default = false,
    Callback = function(val)
        if webhook == "" then
            OrionLib:MakeNotification({
                Name = "Ops.",
                Content = "Looks like you didn't enter any webhook url!",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
            return
        else
            logging = val
 
            if val == true then
                OrionLib:MakeNotification({
                    Name = "Started logging",
                    Content = "Started logging messages at the given webhook!",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
            else
                OrionLib:MakeNotification({
                    Name = "Stopped logging",
                    Content = "Stopped logging messages at the given webhook!",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
            end
        end
    end
})
 
chatTab:AddLabel("                                        CHAT SPAM")
 
local spamMessage = ""
local spamInterval = 1
local spaming = false
 
chatTab:AddTextbox({
    Name = "Message",
    TextDisappear = false,
    Callback = function(val)
        spamMessage = val
    end
})
 
chatTab:AddSlider({
    Name = "Interval",
    Min = spamInterval,
    Max = 100,
    Default = spamInterval,
    Increasmemt = 1,
    ValueName = "seconds",
    Callback = function(val)
        spamInterval = val
    end
})
 
chatTab:AddToggle({
    Name = "Spam",
    Default = false,
    Callback = function(val)
        if spamMessage == "" then
            OrionLib:MakeNotification({
                Name = "Ops.",
                Content = "Looks like you didn't enter any text!",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        else
            spaming = val
 
            if spaming then
                repeat wait(spamInterval)
                    chat(spamMessage)
                until spaming == false
            end
        end
    end
})
 
chatTab:AddLabel("                                            OTHER")
 
chatTab:AddButton({
    Name = "Tall Message",
    Callback = function()
        chat("".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. " ".. "\u{000D}" .. "")
    end
})
 
chatTab:AddButton({
    Name = "Fix Filter",
    Callback = function()
        chat("abcdefg()!")
    end
})
 
local botTab = Window:MakeTab({
    Name = "Chatbot",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 
local serversTab = Window:MakeTab({
    Name = "Servers",
    Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 
function getServers()
    local request = request({
        Url = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Desc&limit=100",
        Method = "GET",
    })
 
    if request.StatusCode == 200 then
        local serverData = game:GetService("HttpService"):JSONDecode(request.Body)
        local serverList = {}
 
        for _, server in pairs(serverData.data) do
            local serverInfo = {
                serverId = server.id or "N/A",
                players = server.playing or 0,
                maxPlayers = server.maxPlayers or 0,
                ping = server.ping or "N/A",
            }
 
            table.insert(serverList, serverInfo)
        end
 
        return serverList
    else
        return nil
    end
end
 
function refreshServers()
 
    local servers = getServers()
    if servers then
        for _, server in pairs(servers) do
            serversTab:AddButton({
                Name = "Players: " .. server.players .. "/" .. server.maxPlayers .. "\nPing: " .. server.ping,
                Callback = function()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, server.serverId, game.Players.LocalPlayer)
                end
            })
        end
    end
 
    serversTab:AddButton({
        Name = "Refresh",
        Callback = function()
            refreshServers()
        end
    })
end
 
serversTab:AddButton({
    Name = "Load Servers",
    Callback = function()
        refreshServers()
    end
})
 
local othersTab = Window:MakeTab({
    Name = "Others",
    Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 
othersTab:AddButton({
    Name = "Rejoin",
    Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
    end
})
 
othersTab:AddButton({
    Name = "Destroy UI",
    Callback = function()
        OrionLib:Destroy()
    end
})
 
local apiKey = ""
local isChatbotEnabled = false
local responseDistance = 5
local botTemperature = 1
local botModel = "llama3-8b-8192"
local personality = "Default"
local blacklist = {}
 
function isBlacklisted(name)
    for _, blacklisted in pairs(blacklist) do
        if name == blacklisted then
            return true
        end
    end
 
    return false
end
 
function askChatbot(msg, plrname)
    local requestData = {
        model = botModel,
        temperature = botTemperature,
        messages = {
            {
                role = "system",
                content = "answer with short response(200 characters max) while following roblox chat filter. your personality: " .. personality
            },
            {
                role = "user",
                content = "My Name Is " .. plrname
            },
            {
                role = "user",
                content = msg
            }
        }
    }
 
    local response = request({
        Url = "https://api.groq.com/openai/v1/chat/completions",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json",
            ["Authorization"] = "Bearer " .. apiKey
        },
        Body = game:GetService("HttpService"):JSONEncode(requestData)
    })
 
    if #game:GetService("HttpService"):JSONDecode(response.Body).choices[1].message.content >= 200 then
        print("Response has reached the character limit!")
    else
        return game:GetService("HttpService"):JSONDecode(response.Body).choices[1].message.content
    end
end
 
botTab:AddTextbox({
    Name = "Groq api key",
    TextDisappear = false,
    Callback = function(val)
        apiKey = val
    end
})
 
botTab:AddSlider({
    Name = "Response Distance",
    Min = 0,
    Max = 100,
    Default = 5,
    Increasmemt = 1,
    ValueName = "studs",
    Callback = function(val)
        responseDistance = val
    end
})
 
botTab:AddDropdown({
	Name = "Model",
	Default = botModel,
	Options = {"gemma2-9b-it", "gemma-7b-it", "llama3-groq-70b-8192-tool-use-preview", "llama3-groq-8b-8192-tool-use-preview", "llama-3.1-70b-versatile", "llama-3.1-8b-instant", "llama-3.2-11b-vision-preview", "llama-3.2-90b-vision-preview", "llama3-70b-8192", "llama3-8b-8192"},
	Callback = function(val)
        botModel = val
	end
})
 
botTab:AddDropdown({
    Name = "Personality",
    Default = personality,
    Options = {"Default", "Aggressive", "Happy", "Criminal", "Indian Scammer", "Nerd", "Sarcastic", "Stupid"},
    Callback = function(val)
        personality = val
    end
})
 
botTab:AddTextbox({
    Name = "Custom Personality",
    TextDisappear = false,
    Callback = function(val)
        personality = val
    end
})
 
botTab:AddTextbox({
    Name = "Prompt",
    TextDisappear = true,
    Callback = function(val)
        OrionLib:MakeNotification({
            Name = "Response From ChatBot",
            Content = askChatbot(val, game.Players.LocalPlayer.Name),
            Image = "rbxassetid://4483345998",
            Time = 15
        })
    end
})
 
botTab:AddSlider({
    Name = "Temperature",
    Min = 0,
    Max = 2,
    Default = botTemperature,
    Increment = 0.01,
    Callback = function(val)
        botTemperature = val
    end
})
 
botTab:AddTextbox({
    Name = "Blacklist",
    TextDisappear = true,
    Callback = function(val)
        if game.Players:FindFirstChild(val) then
            table.insert(blacklist, val)
 
            OrionLib:MakeNotification({
                Name = "Blacklist",
                Content = "Player has been blacklisted!",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})
 
botTab:AddTextbox({
    Name = "Whitelist",
    TextDisappear = true,
    Callback = function(val)
        for i, name in pairs(blacklist) do
            if name == val then
                table.remove(blacklist, i)
 
                OrionLib:MakeNotification({
                    Name = "Whitelist",
                    Content = "Player has been whitelisted!",
                    Image = "rbxassetid://4483345998",
                    Time = 5
                })
            end
        end
    end
})
 
botTab:AddToggle({
    Name = "Enabled",
    Default = false,
    Callback = function(val)
        isChatbotEnabled = val
 
        if val == true then
            OrionLib:MakeNotification({
                Name = "Ai ChatBot",
                Content = "ChatBot has been enabled!",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        elseif val == false then
            OrionLib:MakeNotification({
                Name = "Ai ChatBot",
                Content = "ChatBot has been disabled!",
                Image = "rbxassetid://4483345998",
                Time = 5
            })
        end
    end
})
 
OrionLib:Init()
 
for _, player in pairs(game.Players:GetPlayers()) do
    player.Chatted:Connect(function(message)
        local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
        if isChatbotEnabled and distance <= responseDistance and player.Name ~= game.Players.LocalPlayer.Name and not isBlacklisted(player.Name) then
            chat(askChatbot(message, player.Name))
        end
 
        if logging then
            sendToWebhook("```" .. message .. "```", player.Name)
        end
    end)
end
 
game.Players.PlayerAdded:Connect(function(player)
    player.Chatted:Connect(function(message)
        local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - player.Character.HumanoidRootPart.Position).Magnitude
        if isChatbotEnabled and distance <= responseDistance and player.Name ~= game.Players.LocalPlayer.Name and not isBlacklisted(player.Name) then
            chat(askChatbot(message, player.Name))
        end
 
        if logging then
            sendToWebhook("```" .. message .. "```", player.Name)
        end
    end)
end)
