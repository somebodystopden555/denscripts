local YourWebHookHere =  "https://discord.com/api/webhooks/953894352080470026/AXK0jiu0IVpXVfdSLO9Ru2opR-BbujJPGizQbzqB1DomFykcY2c-Uys2sxdAloU5ks-z"  -- web hook here





--==================================================================
function comma_value(amount)
   local formatted = amount
   while true do  
     formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
     if (k==0) then
       break
     end
   end
   return formatted
 end
 
 
 function round(val, decimal)
   if (decimal) then
     return math.floor( (val * 10^decimal) + 0.5) / (10^decimal)
   else
     return math.floor(val+0.5)
   end
 end
 
 
 function format_num(amount, decimal, prefix, neg_prefix)
   local str_amount,  formatted, famount, remain
 
   decimal = decimal or 2  
   neg_prefix = neg_prefix or "-"
 
   famount = math.abs(round(amount,decimal))
   famount = math.floor(famount)
 
   remain = round(math.abs(amount) - famount, decimal)
 
         
   formatted = comma_value(famount)
 
         
   if (decimal > 0) then
     remain = string.sub(tostring(remain),3)
     formatted = formatted .. "." .. remain ..
                 string.rep("0", decimal - string.len(remain))
   end
 
         
   formatted = (prefix or "") .. formatted
 
         
   if (amount<0) then
     if (neg_prefix=="()") then
       formatted = "("..formatted ..")"
     else
       formatted = neg_prefix .. formatted
     end
   end
 
   return formatted
 end
--==================================================================



_G.trackD = 'Diamonds'
_G.trackC = 'Coins'
_G.Tracking = 'Fantasy Coins'
_G.g = false
_G.Tables = {}
_G.stop = false


while not _G.stop do
local username = game:GetService("Players").LocalPlayer.Name
local d  = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount.Text, ",", "")
local r  = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text, ",", "")
local c  = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right.Coins.Amount.Text, ",", "")
local f  = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.Tracking].Amount.Text, ",", "")
local goldhell = f / 3150000000
local hell = f / 350000000
local Enchant = d / 10000
   local start = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.Tracking].Amount.Text, ",", "")
   local startd = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackD].Amount.Text, ",", "")
   local startc = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackC].Amount.Text, ",", "")
   if _G.g then
       print("set _G.g to false!")
   else
       print("Sending weebhook in 60 secs....")
   end

   wait(60)

   local ennd = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.Tracking].Amount.Text, ",", "")
   local enndD = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackD].Amount.Text, ",", "")
   local enndC = string.gsub(game.Players.LocalPlayer.PlayerGui.Main.Right[_G.trackC].Amount.Text, ",", "")
   local dif = tonumber(ennd) - tonumber(start)
   local difd = tonumber(enndD) - tonumber(startd)
   local difc = tonumber(enndC) - tonumber(startc)
   if _G.g then
       print("set _G.g to false!")
   else
       print("WebHook Sent! If no webhook was sent you did something wrong. Script made by foro#8122")
   end
   table.insert(_G.Tables, dif)

   
   local b = 0
   for i,v in pairs(_G.Tables) do
       b = b + v
   end
   
   if _G.g then
       print("set _G.g to false!")
   else
       local webhookcheck =
  is_sirhurt_closure and "s" or pebc_execute and "p" or syn and "s" or
  secure_load and "s" or
  KRNL_LOADED and "k" or
  SONA_LOADED and "s" or
  "e"

local url = YourWebHookHere
 
local data = {
  ["content"] = "",
["embeds"] = {{
["title"] = "__**Pet Simulator X Stat Tracker**__",
["description"] = "Next webhook in 60 seconds...",
["type"] = "rich",
["color"] = tonumber(0x0E980E),
["fields"] = {
               {
["name"] = "__Username__",
["value"] = "||"..username.."||", -- remove the || on both sides if you don't want your username to be behind a spoiler
["inline"] = false
},
               {
["name"] = "__Rank__",
["value"] = r,
["inline"] = false
},
{
["name"] = "__Coins__",
["value"] = comma_value(c),
["inline"] = false
},
{
["name"] = "__Fantasy Coins__",
["value"] = comma_value(f),
["inline"] = false
},
{
["name"] = "__Diamonds__",
["value"] = comma_value(d),
["inline"] = false
},
               {
["name"] = "__Empyrean Egg__",
["value"] = (comma_value(round(hell))),
["inline"] = false
},
{
["name"] = "__Golden Empyerean Egg__",
["value"] = (comma_value(round(goldhell))),
["inline"] = false
},
{
["name"] = "__Enchant Purchases__",
["value"] = (comma_value(round(Enchant))),
["inline"] = false
},
               {
["name"] = "__Coins Earned In The Last Minute__",
["value"] = "Gained: " .. comma_value(difc) .. " In 60 Seconds",
["inline"] = false
},
               {
["name"] = "__Diamonds Earned In The Last Minute__",
["value"] = "Gained: " .. comma_value(difd) .. " In 60 Seconds",
["inline"] = false
},
               {
["name"] = "__Fantasy Coins Earned In The Last Minute__",
["value"] = "Gained: " .. comma_value(dif) .. " In 60 Seconds",
["inline"] = false
},
               {
["name"] = "__Fantasy Coins Earned During This Session__",
["value"] = "Total: " .. comma_value(b) .. " in " .. #_G.Tables .. " mins || average per min: " .. (comma_value(round(b/#_G.Tables))),
["inline"] = false
},
}
}}
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
  ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
   end
end
