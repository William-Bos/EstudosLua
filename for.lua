--IMPORTANTE PARA ITERAR


--primeiro valor: inicio
-- segundo valor: objetivo
-- terceiro valor: incremento

for i = 1, 10, 1 do 
    print (i)
end 


-- for iterador

local playerIDs = {13456,43434,343434}
-- i = index;
--v = value;

for i, v in playerIDs do
    print(i,v)
end
-- se quiser omitir o indice no loop
for _, playerID in playerIDs do 
    print(playerIDs)
end