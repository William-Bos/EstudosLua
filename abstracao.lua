local Players = game.GetService ("Players")
local ServerStorage = game:GetService9("ServerStorage")
local CoinTamplate = ServerStorage.Coin

local function spawnCoin()
    local newCois = CoinTemplate:Clone()
    newCoin.Position = Vector3.new(0,50,0)
    newCoin.Parent = workspace.Coins

    newCoin.Touched:Connect(function(hit)
        local player = Players:FindFirstChild(hit.Parent.name)
        if player then
            print ("O jogador recebeu uma moeda")
        end    

    end)
Players.PlayerAdded:Connect(function(player)
    spawnCoin()
end)


local function loadData(player: Player, data: {})
    local data = {
        Swords = {}
    
    }
    for _, swordname in data.Swords do
        local sword = ServerStorage.Swords:FindFirstChild(swordname)
    end
end