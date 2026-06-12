# IA_report - Exercício 3 - Lisp

### Modelo utilizado: Google Gemini

## 1. Identificação
* **Nome completo:** Evelyn Maria de Oliveira Silva
* **Matrícula:** 686

## 2. Histórico de Prompts

**Prompt 1:**
> como eu faço para acessar um campo específico da struct dentro do cond para fazer uma validação matemática de maior ou menor?

**Prompt 2:**
> no exercicio aqui como eu atualizo o preço e a força mágica de um item dentro do mapcar? eu preciso alterar o item original ou criar um novo usando o make-item?

**Prompt 3:**
> a função processaVenda precisa retornar uma lista de strings formatadas no final. como eu aplico a minha função de descrição na lista de itens que já foram processados no let*?


## 3. Respostas Obtidas

**Resposta do prompt 1:** A IA me explicou que para acessar os dados de um campo no Lisp, usamos a função de acesso gerada automaticamente pelo **defstruct**. Aprendi a aplicar isso direto na condição do **cond**, comparando o campo usando (> (item-forca-magica i) 80) para decidir se o bônus seria aplicado.

**Resposta do prompt 2:** A IA me orientou que, no paradigma funcional do Lisp, não devemos alterar os dados originais. Aprendi que dentro do **mapcar** devemos usar o construtor **make-item** para gerar um novo item, preenchendo os campos com as funções de cálculo, mantendo a lista original intacta.

**Resposta do prompt 3:** A IA sugeriu usar um último passo no **let*** com o **mapcar** chamando uma função **lambda**. Aprendi que posso passar cada item processado para a função descricao-venda, transformando a lista de objetos em uma lista de strings prontas para a exibição final no terminal.

## 4. Relatório de Satisfação e Aprendizado

* **Como a resposta ajudou (ou falhou em ajudar) na solução do problema:**
Me ajudou a resolver o desafio de aplicar múltiplos cálculos (imposto e bônus) e converter o resultado técnico em uma lista de textos legíveis para o usuário.

* **De que forma ela solucionou a sua dúvida:** 
Ela explicou como usar o **cond** para lógicas condicionais e como encadear transformações dentro de uma única função de processamento.

* **O que você aprendeu com aquele retorno para aplicar em problemas futuros:** Aprendi que o Lisp prioriza a criação de novas estruturas em vez da modificação das antigas para manter a pureza funcional, e que o **lambda** é uma ferramenta versátil para aplicar regras de formatação rapidamente.
