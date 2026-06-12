# IA_report - Exercício 1 - Lisp

### Modelo utilizado: Google Gemini

## 1. Identificação
* **Nome completo:** Evelyn Maria de Oliveira Silva
* **Matrícula:** 686

## 2. Histórico de Prompts

**Prompt 1:**
> não entendi direito como usa let em lisp, me explica

**Prompt 2:**
> agora me explique melhor sobre o mapcar

**Prompt 3:**
> o que exatamente é o lambda que vai dentro do mapcar e do remove-if-not do código do monitor

**Prompt 4:**
> o exercício pede para usar guards e pattern matching no cálculo das dosagens e preços, igual fazemos em haskell. como eu traduzo isso pro lisp?

## 3. Respostas Obtidas

**Resposta do prompt 1:** A IA me explicou que o let cria variáveis locais todas ao mesmo tempo, enquanto o **let*** (com asterisco) cria sequencialmente, de cima para baixo. 

**Resposta do prompt 2:** A IA me explicou ele serve para transformar listas. Ele pega uma lista, aplica uma regra (uma função) em cada elemento um por um, e te devolve uma lista nova com os resultados. Ele faz isso sem nunca alterar a lista original.

**Resposta do prompt 3:** A IA me explicou que o lambda é uma função anônima, ou seja, uma função descartável que não precisamos dar um nome com **defun**. Ele é perfeito para criar regras rápidas de filtro ou transformação que só serão usadas ali naquela linha

**Resposta do prompt 4:** A IA me explicou que o Lisp não tem **pattern matching** nativo igual o Haskell. Para resolver isso e substituir os **guards**, ela sugeriu usar **cond**. Aprendi que o **cond** funciona como uma árvore de decisão muito limpa, testando as condições de cima para baixo até uma ser verdadeira, usando o T no final como o caso padrão (equivalente ao otherwise).

## 4. Relatório de Satisfação e Aprendizado

* **Como a resposta ajudou (ou falhou em ajudar) na solução do problema:**
Me ajudou a traduzir a lógica de linguagens que eu já conhecia para a sintaxe e o paradigma funcional do Lisp, sem perder o raciocínio das questões.

* **De que forma ela solucionou a sua dúvida:** 
Ela comparou diretamente as ferramentas, me mostrando quais funções nativas do Lisp substituíam conceitos como **guards, pattern matching e iterações**. Além disso, explicou detalhadamente a lógica por trás da notação prefixa e como encadear operações de lista corretamente.

* **O que você aprendeu com aquele retorno para aplicar em problemas futuros:** Aprendi a pensar mais no fluxo de transformação de dados e a utilizar funções puras de alta ordem (como filtros e mapas) para processar listas, além de ter consolidado a estrutura geral de sintaxe do Lisp.
