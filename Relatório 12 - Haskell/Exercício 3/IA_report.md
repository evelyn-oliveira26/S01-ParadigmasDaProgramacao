# IA_report - Exercício 3 - Haskell

### Modelo utilizado: Google Gemini

## 1. Identificação
* **Nome completo:** Evelyn Maria de Oliveira Silva
* **Matrícula:** 686

## 2. Histórico de Prompts

**Prompt 1:**
> estou em outro exercício agora e pede as seguintes instruções: "Implemente bandaAbertura :: Evento -> String e bandaEncerramento :: Evento -> String
usando pattern matching — a abertura pega o primeiro elemento da lista e o encerramento
pega o último com last". 
porém eu não sei como pegar o último com last

## 3. Respostas Obtidas

**Resposta do prompt 1:** A IA me explicou que, enquanto o Pattern Matching com o operador "**:**" extrai o primeiro elemento de uma lista (abertura), pegar o último elemento por padrão visual seria muito complexo. Para isso, o Haskell possui a função pronta **last**. Ela me ensinou que devo usar o Pattern Matching primeiro para extrair a lista de dentro do construtor do Evento e, em seguida, aplicar a função **last** nessa lista extraída, o que me permite isolar o objeto da última banda e pegar o nome dela.

## 4. Relatório de Satisfação e Aprendizado

* **Como a resposta ajudou (ou falhou em ajudar) na solução do problema:**
Me ajudou a entender como pegar no último elemento da lista, já que o Pattern Matching comum só me deixava pegar no primeiro.

* **De que forma ela solucionou a sua dúvida:** 
Ela me explicou como eu poderia pegar o último elemento e me forneceu exemplos de como ficaria a estrutura do código nessa parte.

* **O que você aprendeu com aquele retorno para aplicar em problemas futuros:** Aprendi a como pegar o último elemento da lista, para assim, não errar mais em problemas futuros.
