# IA_report - Exercício 3 - Prolog

### Modelo utilizado: Google Gemini

## 1. Identificação
* **Nome completo:** Evelyn Maria de Oliveira Silva
* **Matrícula:** 686

## 2. Histórico de Prompts

**Prompt 1:**
> A dica do exercício fala para usar a lógica "Não existe um requisito que o hangar não possua" para simular a palavra "TODOS". Como é que a gente escreve essa "negação dupla" no Prolog na hora de criar a regra `pode_montar`?

**Prompt 2:**
> Por que o exercício pede para criar essa regra auxiliar `item_faltante`? Não dava para eu colocar essa verificação de ausência direto dentro do `pode_montar` e economizar linha de código?

**Prompt 3:**
> Na Query 5, eu quero saber se o `hangar_gamma` consegue montar a `ia_navegação`. Como eu faço para o Prolog me responder só "true" ou "false" em vez de ficar listando variáveis, já que a pergunta é tão específica?

**Prompt 4:**
> Quando rodei a Query 4 para o `hangar_beta`, o Prolog me retornou as respostas certas, mas a lista inteira de componentes saiu repetida exatamente 3 vezes no terminal. Por que ele duplicou as respostas e como faço para ele me dar uma lista limpa?

## 3. Respostas Obtidas

**Resposta do prompt 1:** A IA explicou que como o Prolog não tem um comando nativo fácil para "Para Todos", nós usamos a negação `\+` em volta de um bloco que também testa uma negação. Aprendi a estruturar isso como: `\+ (precisa(Componente, Requisito), item_faltante(Hangar, Requisito))`. O motor tenta encontrar alguma peça que o componente precise, mas que falte no hangar. Se ele não encontrar nenhuma (falhar), a negação inverte o resultado para verdadeiro, provando que o hangar tem todas!

**Resposta do prompt 2:** A IA me alertou que, embora fosse possível fazer tudo numa linha só, usar uma regra auxiliar deixa a lógica de negação dupla muito mais legível. Aprendi que encapsular a condição de ausência no `item_faltante/2` previne erros de parênteses na regra principal e ajuda o motor de busca a não se perder com variáveis não instanciadas (evitando o erro de *floundering*).

**Resposta do prompt 3:** A IA esclareceu que o comportamento de listar respostas só acontece quando usamos Variáveis (palavras com a primeira letra maiúscula, como `Componente`). Aprendi que se eu passar Átomos constantes diretos na query, como `pode_montar(hangar_gamma, ia_navegação)`, o Prolog muda de "modo de busca" para "modo de validação booleana", retornando apenas `true` ou `false`.

**Resposta do prompt 4:** A IA explicou que isso é um efeito do *backtracking*. Como eu havia colocado a condição `possui(Hangar, _)` no início da regra e o `hangar_beta` tem 3 peças no inventário, o Prolog validou a regra 3 vezes diferentes (uma para cada peça encontrada). Aprendi que, como já estou passando o nome do hangar como parâmetro na query (`hangar_beta`), posso remover essa condição geradora do código para evitar que o motor de busca crie ramificações duplicadas, resultando numa saída limpa e otimizada.

## 4. Relatório de Satisfação e Aprendizado

* **Como a resposta ajudou na solução do problema:**
Ajudou a desmistificar a lógica do "Para Todos", transformando uma frase complexa num bloco de código funcional usando a regra auxiliar de suporte. Também solucionou o problema da formatação da saída no terminal, limpando as repetições.

* **De que forma ela solucionou a sua dúvida:** Solucionou a dificuldade de montar queries fechadas e diagnosticou o bug de repetição. Ao testar a Query 5 passando os parâmetros literais, confirmei o retorno `false`. Ao remover a condição ancoradora do hangar nas regras, a Query 4 passou a retornar a lista exata sem redundâncias.

* **O que você aprendeu com aquele retorno para aplicar em problemas futuros:**
Aprendi uma das técnicas mais importantes do paradigma declarativo: a simulação de totalidade (For All) através da falha da negação dupla. Além disso, descobri na prática como o *backtracking* pode gerar redundância de dados, o que me ensinou a ter muito cuidado com predicados geradores no topo das regras quando as variáveis já chegam instanciadas pela query.
