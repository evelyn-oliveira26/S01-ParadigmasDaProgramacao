data Banda = Banda String String Double
data StatusEvento = Ativo | Encerrado | Cancelado deriving (Eq)
data Evento = Evento [Banda] StatusEvento

custoTotalEvento :: Evento -> Double
custoTotalEvento (Evento bandas status)
    | status == Cancelado = 0.0
    | otherwise = total * 1.2
    where total = sum (map (\(Banda _ _ cache) -> cache) bandas)

bandaAbertura :: Evento -> String
bandaAbertura (Evento [] _) = "Nenhuma banda cadastrada."
bandaAbertura (Evento ((Banda nome _ _):_) _) = nome

bandaEncerramento :: Evento -> String
bandaEncerramento (Evento [] _) = "Nenhuma banda cadastrada."
bandaEncerramento (Evento bandas _) = let (Banda nome _ _) = last bandas in nome

main :: IO ()
main = do

    let banda1 = Banda "Iron Maiden" "Rock" 5000.0
    let banda2 = Banda "Marron 5" "Pop" 7000.0
    let banda3 = Banda "The Neighbourhood" "Indie" 10000.0

    let evento1 = Evento [banda1, banda2, banda3] Ativo
    let evento2 = Evento [banda2, banda1] Encerrado
    let evento3 = Evento [banda3, banda2] Cancelado

    --evento ativo
    putStrLn $ "Evento Ativo:"
    putStrLn $ "Abertura: " ++ bandaAbertura evento1
    putStrLn $ "Encerramento: " ++ bandaEncerramento evento1
    putStrLn $ "Custo total: R$ " ++ show (custoTotalEvento evento1)

    putStrLn "-----"

    --evento encerrado
    putStrLn $ "Evento Encerrado:"
    putStrLn $ "Abertura: " ++ bandaAbertura evento2
    putStrLn $ "Encerramento: " ++ bandaEncerramento evento2
    putStrLn $ "Custo total: R$ " ++ show (custoTotalEvento evento2)

    putStrLn "-----"
    
    --evento cancelado
    putStrLn $ "Evento Cancelado:"
    putStrLn $ "Abertura: " ++ bandaAbertura evento3
    putStrLn $ "Encerramento: " ++ bandaEncerramento evento3
    putStrLn $ "Custo total: R$ " ++ show (custoTotalEvento evento3)
