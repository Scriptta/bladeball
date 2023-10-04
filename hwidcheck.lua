local http_request = (syn and syn.request) or http_request or request or httprequest or httpRequest or Request;

local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService('HttpService'):JSONDecode(body)
local headers = decoded.headers
local hwid;

for i,v in pairs(headers) do
     if type(i)=="string" and i:lower():match("fingerprint") then hwid = v end
end
return hwid or 'you dont have hwid or sumn u just have a horid executor or horid pc'
