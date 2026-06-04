data Servico = Servico String String Double
data StatusAtendimento = EmAndamento | Finalizado | Cancelado deriving (Eq)
data Atendimento = Atendimento [Servico] StatusAtendimento

totalServicos :: [Servico] -> Double
totalServicos servicos = sum (map (\(Servico _ _ preco) -> preco) servicos)

valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento (Atendimento servicos status)
    | status == Cancelado = 0.0
    | length servicos > 3 = total * 1.25
    | otherwise = total
    where total = totalServicos servicos

primeiroServico :: Atendimento -> String
primeiroServico (Atendimento [] _) = "Nenhum servico cadastrado."
primeiroServico (Atendimento ((Servico nome _ _):_) _) = nome

main :: IO ()
main = do
    let banho = Servico "Banho Termal" "Relaxamento" 50.0
    let massagem = Servico "Massagem" "Bem-estar" 40.0
    let aromaterapia = Servico "Aromaterapia" "Relaxamento" 30.0
    let limpeza = Servico "Limpeza" "Especial" 60.0

    let atendimento1 = Atendimento [banho, massagem, aromaterapia, limpeza] Finalizado
    let atendimento2 = Atendimento [massagem, limpeza] Cancelado

    putStrLn "Atendimento 1:"
    putStrLn $ "Primeiro servico: " ++ primeiroServico atendimento1
    putStrLn $ "Valor final: R$ " ++ show (valorFinalAtendimento atendimento1)

    putStrLn "-----"
    
    --atendimento cancelado
    putStrLn "Atendimento 2:"
    putStrLn $ "Primeiro servico: " ++ primeiroServico atendimento2
    putStrLn $ "Valor final: R$ " ++ show (valorFinalAtendimento atendimento2)
