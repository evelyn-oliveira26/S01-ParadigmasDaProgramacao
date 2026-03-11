print("Digite o primeiro número:")
local n1 = tonumber(io.read())
print("Digite o segundo número:")
local n2 = tonumber(io.read())
print("Digite um operador (+, -, *, /):")
operador = io.read()

local resultado

function soma(n1, n2)
  return n1 + n2
end

function subt(n1, n2)
  return n1 - n2
end

function mult(n1, n2)
  return n1 * n2
end

function div(n1, n2)
  return n1 / n2
end
  
function calculadora(n1, n2, operador)
  if operador == "+" then
    resultado = soma(n1, n2)
  
  elseif operador == "-" then
    resultado = subt(n1, n2)
  
  elseif operador == "*" then
    resultado = mult(n1, n2)
    
  elseif operador == "/" then
    resultado = div(n1, n2)
  
  else
    print("Operador inválido. Digite novamente:")
  end
  
  return resultado
end

print("Resultado: " ..calculadora(n1, n2, operador))
