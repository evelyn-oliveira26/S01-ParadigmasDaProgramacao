# IA_report - Exercício 2 - Lisp

### Modelo utilizado: Google Gemini

## 1. Identificação
* **Nome completo:** Evelyn Maria de Oliveira Silva
* **Matrícula:** 686

## 2. Histórico de Prompts

**Prompt 1:**
> o exercício que estou fazendo pede para criar um tipo 'periculosidade' com os construtores baixa, media e alta, como se fosse um enum em C++, como eu represento isso no lisp na hora de preencher o defstruct?

**Prompt 2:**
> preciso usar o remove-if-not para filtrar uma lista, mas eu quero manter as criaturas cuja periculosidade não seja 'baixa'. como faço uma operação de diferença ou de negação lógica dentro do lambda no lisp

**Prompt 3:**
> na função de relatório, o enunciado pede para eu primeiro filtrar só as criaturas do ambiente 'deep' e, em seguida, usar um map para formatar os nomes. como eu conecto um remove-if-not com um mapcar na mesma função em lisp de forma limpa?


## 3. Respostas Obtidas

**Resposta do prompt 1:** A IA me explicou que a forma mais simples e idiomática de representar categorias no Lisp, já que não usamos enums como no C++, é utilizar Strings diretas ("Baixa", "Media", "Alta"). Aprendi que, por ser dinamicamente tipado, o Lisp lida muito bem com comparações de texto puro para definir estados, sem precisar criar tipos complexos só para isso.

**Resposta do prompt 2:** A IA me mostrou que, no Lisp, a exclusão não é feita com um operador !=, mas sim envolvendo a comparação com a função lógica not. Aprendi a estruturar a condição como **(not (string= ...))** dentro do lambda, invertendo o resultado verdadeiro para que o **remove-if-not** mantivesse apenas as criaturas que não fossem de perigo baixo.

**Resposta do prompt 3:** A IA me orientou a usar a estrutura **let*** (com asterisco) para criar uma sequência lógica. Aprendi que posso declarar uma primeira variável para guardar o resultado do filtro **(remove-if-not)** e, na mesma estrutura, já passar essa variável como entrada para a formatação do mapcar, resolvendo o problema de forma encadeada e sem alterar os dados originais.

## 4. Relatório de Satisfação e Aprendizado

* **Como a resposta ajudou (ou falhou em ajudar) na solução do problema:**
Me ajudou a descobrir como fazer filtros de exclusão (remover itens específicos) e como encadear duas operações seguidas no Lisp.

* **De que forma ela solucionou a sua dúvida:** 
Ela me mostrou como usar a função not junto com o **remove-if-not** para inverter a condição do filtro, e me orientou a usar o **let*** para conseguir formatar a lista logo após ela ser filtrada.

* **O que você aprendeu com aquele retorno para aplicar em problemas futuros:** Aprendi que no Lisp a negação não usa operadores como !=, mas sim a função **not** em volta da condição, e consolidei que o **let*** é obrigatório quando a próxima variável precisa usar o resultado da anterior.
