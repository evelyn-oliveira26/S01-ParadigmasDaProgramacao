function pegarImpares(tabela)
    local impares = {}

    for i = 1, #tabela do
        if tabela[i] % 2 ~= 0 then
            table.insert(impares, tabela[i])
        end
    end

    return impares
end

print("Digite a quantidade de números:")
local n = tonumber(io.read())

if n and n > 0 then
    local numeros = {}

    for i = 1, n do
        print("Digite o número " ..i ..":")
        numeros[i] = tonumber(io.read())
    end

    local resultado = pegarImpares(numeros)

    print("Números ímpares encontrados:")

    for i = 1, #resultado do
        print(resultado[i])
    end

else
    print("Entrada inválida! Digite um número maior que zero.")
end
