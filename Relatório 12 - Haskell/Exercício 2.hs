data Item = Item String String Double
data StatusCompra = Pendente | Concluida | Cancelada deriving (Eq)
data Compra = Compra [Item] StatusCompra

totalItens :: [Item] -> Double
totalItens itens = sum (map (\(Item _ _ preco) -> preco) itens)

valorFinal :: Compra -> Double
valorFinal (Compra itens status)
    | status == Cancelada = 0.0
    | totalItens itens > 200 = totalItens itens * 0.9
    | otherwise = totalItens itens

main :: IO ()
main = do
    let espada = Item "Espada de Mármore" "Arma" 120.0
    let escudo = Item "Escudo Potente" "Equipamento" 90.0
    let pocao = Item "Pocao Vermelha" "Poção" 30.0

    let compra = Compra [espada, escudo, pocao] Concluida

    putStrLn $ "Valor final: R$ " ++ show (valorFinal compra)
