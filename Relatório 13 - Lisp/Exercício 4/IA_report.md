# IA_report - Exercício 4 - Lisp

### Modelo utilizado: Google Gemini

## 1. Identificação
* **Nome completo:** Evelyn Maria de Oliveira Silva
* **Matrícula:** 686

## 2. Histórico de Prompts

**Prompt 1:**
> no cálculo do bônus elemental, os elementos Pyro e Electro multiplicam a recompensa pelos mesmos 1.20. tem como eu usar um "OU" dentro da condição do cond pra não precisar escrever a mesma conta de multiplicar duas vezes?

**Prompt 2:**
> no exercício aqui, tenho uma função que chama vale-a-pena, e preciso testar se o bônus elemental é maior que 500 e a dificuldade é menor ou igual a 3 ao mesmo tempo. como eu uso o and no lisp para juntar essas validações em uma linha só?

**Prompt 3:**
> dentro do mapcar da função rota-de-farm, eu preciso montar o texto do relatório para cada local, mas não quero que ele imprima na tela na mesma hora. como eu faço o format apenas retornar o texto para a minha lista em vez de dar o print direto no terminal?

## 3. Respostas Obtidas

**Resposta do prompt 1:** A IA me ensinou a combinar testes lógicos dentro de cond. Aprendi que basta abrir o teste da primeira cláusula com o operador or de forma prefixa, ficando **((or (string= ... "Pyro") (string= ... "Electro")) (* ... 1.20))**, otimizando o código e evitando repetição.

**Resposta do prompt 2:** A IA explicou que o operador lógico no Lisp também usa notação prefixa e engloba todas as condições. Aprendi a estruturar a validação colocando as duas operações de comparação dentro dele, ficando **(and (> (bonus-elemental l) 500) (<= (local-dificuldade l) 3))**, o que resolve a lógica direto no retorno.

**Resposta do prompt 3:** A IA me explicou a diferença entre os parâmetros de destino do comando de formatação. Aprendi que o (format t ...) manda a saída direto para o terminal, enquanto usar (format NIL ...) constrói a string e a retorna de forma silenciosa. Isso foi essencial para o mapcar conseguir construir a lista de textos sem sujar a tela.

## 4. Relatório de Satisfação e Aprendizado

* **Como a resposta ajudou (ou falhou em ajudar) na solução do problema:**
Me ajudou a otimizar as validações lógicas da estrutura cond e a entender como manipular a geração de strings de forma funcional antes da exibição final.

* **De que forma ela solucionou a sua dúvida:** 
Ela foi direta na sintaxe, mostrou como agrupar as condições nos operadores lógicos **and** e **or**, e explicou a diferença exata entre usar o **NIL** e o **T** no comando **format**.

* **O que você aprendeu com aquele retorno para aplicar em problemas futuros:** Aprendi que os operadores lógicos em Lisp (and, or) se comportam como funções normais que recebem múltiplos argumentos, e que é uma boa prática usar **format NIL** para montar os dados dentro das funções puras, deixando o **format t** apenas para a função principal (main) interagir com o usuário.
