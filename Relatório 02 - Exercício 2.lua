function encontrarMaior(tabela)
    local maior = tabela[1]
    
    for i = 1, #tabela do
        if tabela[i] > maior then
            maior = tabela[i]
        end
    end
    
    return maior
end

print("Digite a quantidade de números:")
local n = tonumber(io.read())

if n and n > 0 then
    local numeros = {}

    for i = 1, n do
        print("Digite o valor " ..i ..":")
        numeros[i] = tonumber(io.read())
    end

    local resultado = encontrarMaior(numeros)
    print("O maior valor encontrado foi: " ..resultado)
else
    print("Insira um número válido maior que zero.")
end
