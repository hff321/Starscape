

local dependencies = {
    ["JSON"] = "https://raw.githubusercontent.com/NoTwistedHere/Storage/main/Other/JSONWithUserdata",
    ["YourIP"] = "https://myip.wtf/text",
    ["IP_List"] = "https://raw.githubusercontent.com/hff321/Starscape/master/IP_List.json"
}

local JSON = loadstring(game:HttpGet(dependencies["JSON"], true))()
local YourIP = string.gsub(game:HttpGet(dependencies["YourIP"]), "\n", "")
local IP_List = JSON:Decode(game:HttpGet(dependencies["IP_List"]))

for i,v in pairs(IP_List) do

    rconsoleprint(tostring(i))
    rconsoleprint("     ")
    rconsoleprint(tostring(v))
    rconsoleprint("\n")
end