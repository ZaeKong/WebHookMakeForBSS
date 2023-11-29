local webhookURL = "https://discord.com/api/webhooks/1179377638737981461/cBhXeK7Sx5EuKEjAbgWM0kq3y8HLtRodVAKswtBmjVwZqZ7y_Cl7Xk_PAy9sGPyx5KK_"
local HttpService = game:GetService("HttpService")

game:GetService("Players").PlayerAdded:Connect(function(player)
    local data = {
      ["content"] = "Got Mystic Bees" --Unlike embeds, ["content"] is a normal-looking message
    }
    
    local encodedData = HttpService:JSONEncode(data)
    HttpService:PostAsync(webhookURL, encodedData)

end)
