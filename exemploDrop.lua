-- O "Catálogo" de prêmios do seu jogo
local LootTable = {
    ["Slime"] = {
        Swords = {"EspadaDeMadeira"}
    },
    ["BossFogo"] = {
        Swords = {"EspadaDeFogo", "EscudoSolenizado"}
    },
    ["ReiEsqueleto"] = {
        Swords = {"CajadoSombrio", "CapaceteDeOsso"}
    }
}

-- A sua função (que você já entendeu a lógica)
local function darPremio(player, listaDeItens)
    for _, itemNome in ipairs(listaDeItens.Swords) do
        local itemOriginal = ServerStorage.Swords:FindFirstChild(itemNome)
        if itemOriginal then
            itemOriginal:Clone().Parent = player.Backpack
        end
    end
end