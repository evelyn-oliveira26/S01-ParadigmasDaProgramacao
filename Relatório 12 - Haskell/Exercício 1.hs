data Bebida = Bebida String String Double
data StatusPedido = Aberto | Entregue | Cancelado deriving (Eq)
data Pedido = Pedido [Bebida] StatusPedido

valorTotalPedido :: Pedido -> Double
valorTotalPedido (Pedido bebidas status)
    | status == Cancelado = 0.0
    | otherwise = sum (map (\(Bebida _ _ preco) -> preco) bebidas)

primeiraBebida :: Pedido -> String
primeiraBebida (Pedido [] _) = "Nenhuma bebida no pedido."
primeiraBebida (Pedido ((Bebida nome _ _):_) _) = nome

main :: IO ()
main = do
    let cafe = Bebida "Café" "Macchiato" 15.50
    let cappuccino = Bebida "Cappuccino" "Gelado" 18.00
  
    let pedidoEntregue = Pedido [cafe] Entregue
    let pedidoCancelado = Pedido [cappuccino] Cancelado

    putStrLn "Pedido Entregue:"
    putStrLn $ primeiraBebida pedidoEntregue
    putStrLn $ "Total: R$ " ++ show (valorTotalPedido pedidoEntregue)

    putStrLn "Pedido Cancelado:"
    putStrLn $ primeiraBebida pedidoCancelado
    putStrLn $ "Total: R$ " ++ show (valorTotalPedido pedidoCancelado)
