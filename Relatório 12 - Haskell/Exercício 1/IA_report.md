# IA_report - Exercício 1 - Haskell

### Modelo utilizado: Google Gemini

## 1. Identificação
* **Nome completo:** Evelyn Maria de Oliveira Silva
* **Matrícula:** 686

## 2. Histórico de Prompts

**Prompt 1:**
> estou fazendo exercícios em haskell, mas como eu posso fazer isso: criar um tipo StatusPedido com os construtores Aberto, Entregue e Cancelado.

**Prompt 2:**
> como eu posso declarar um tipo com uma lista em haskell?

**Prompt 3:**
> ta, agora me de uma geral de como funciona e como usar os guards nos exercícios, pois vai ter mais deles provavelmente

**Prompt 4:**
> agr me ensina como usar o sum e map 

**Prompt 5:**
> agora o que menos entendi kk pattern matching

## 3. Respostas Obtidas

**Resposta do prompt 1:** A IA me explicou que para criar novos tipos personalizados no Haskell nós usamos o comando **data**. Ela me mostrou a sintaxe usando a barra vertical | para separar as opções (construtores) e me alertou para colocar o **deriving (Eq)** no final da linha, explicando que isso é necessário para que o Haskell nos deixe comparar esses status usando o operador == mais adiante no código.

**Resposta do prompt 2:** A IA me mostrou que no Haskell nós colocamos a lista direto na definição do construtor usando os colchetes em volta do tipo dos elementos.

**Resposta do prompt 3:** A IA me explicou que os guards funcionam como o if / else das linguagens tradicionais. Ela me mostrou que usamos a barra vertical | para cada condição que queremos testar e a palavra-chave otherwise no final para funcionar como o "else".

**Resposta do prompt 4:** A IA me explicou que no Haskell não usamos loops para somar valores de uma lista. Em vez disso, usamos o map e o sum. Ela me ensinou que a barra invertida \ serve para criar uma função anônima (lambda) que desestrutura o tipo Bebida, usando underlines _ para ignorar os textos e isolar apenas o campo do preço. O map aplica essa função na lista inteira, gerando uma nova lista contendo apenas os números dos preços, e o sum recebe essa lista de números e soma tudo, devolvendo o total do pedido. 

**Resposta do prompt 5:** A IA me explicou que o Pattern Matching funciona como um "casamento de padrões" baseado no formato visual dos dados. Em vez de usarmos índices ou métodos, no Haskell nós desenhamos o molde que o dado deve ter. Se o dado se encaixar nesse molde, o compilador abre o pacote automaticamente, nos dando as variáveis que precisamos e permitindo ignorar o resto com o underline _. Ela me deu exemplos de como ficaria no meu código.

## 4. Relatório de Satisfação e Aprendizado

* **Como a resposta ajudou (ou falhou em ajudar) na solução do problema:**
As respostas me ajudaram a destravar alguns conceitos do paradigma funcional e da linguagem Haskell. 

* **De que forma ela solucionou a sua dúvida:** 
Ela solucionou as minhas dúvidas explicando direto o que cada conceito novo fazia.

* **O que você aprendeu com aquele retorno para aplicar em problemas futuros:** Aprendi os principais conceitos do paradigma funcional e da linguagem Haskell. Acredito que irei usar no resto dos exercícios esses conceitos, então evita de eu perguntar repetidamente as mesmas coisas para a IA.
