print ("Digite o valor do primeiro intervalo:")
local m = tonumber(io.read())
print ("Digite o valor do segundo intervalo:")
local n = tonumber(io.read())
print ("Digite o valor a ser multiplicado:")
local x = tonumber(io.read())

for i = m, n do
  local resultado = i * x
  print(x.. " * " ..i .." = " ..resultado)
end
