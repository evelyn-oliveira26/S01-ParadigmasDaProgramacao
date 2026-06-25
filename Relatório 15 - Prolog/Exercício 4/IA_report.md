# IA_report - Exercício 4 - Prolog

### Modelo utilizado: Google Gemini

## 1. Identificação
* **Nome completo:** Evelyn Maria de Oliveira Silva
* **Matrícula:** 686

## 2. Histórico de Prompts

**Prompt 1:**
> Como eu represento em Prolog a ideia da regra `peça_raiz`, onde uma peça "não precisa de nenhuma outra"? É só colocar a negação no predicado `precisa`?

**Prompt 2:**
> A Regra 2 pede para verificar se a peça "não é necessária para nenhuma outra" (Peça Final). Qual é a diferença estrutural disso para a regra 1 em termos de código, já que ambas usam o verbo "precisar"?

**Prompt 3:**
> Na hora de montar a Query 6, eu tenho que filtrar os componentes pela regra `peça_raiz` e também garantir que eles NÃO sejam da categoria 'propulsao'. Como eu encadeio essa busca da categoria se a regra `peça_raiz` só me devolve o nome da peça?

## 3. Respostas Obtidas

**Resposta do prompt 1:** A IA explicou que basta usar a negação combinada com a variável anônima. Aprendi que a estrutura fica `\+ precisa(P, _)`. No entanto, fui relembrada da regra de ouro: preciso primeiro instanciar a variável `P` chamando `componente(P, _, _)` antes da negação, para evitar que o Prolog tente negar uma variável vazia.

**Resposta do prompt 2:** A IA esclareceu que a diferença está na posição da variável dentro do predicado `precisa(Alvo, Requisito)`. Aprendi que, na regra 1 (Raiz), o componente é o Alvo que tem requisitos: `precisa(P, _)`. Na regra 2 (Final/Folha), o componente é o Requisito que serve a outros alvos: `precisa(_, P)`. Inverter a posição da variável anônima muda totalmente a lógica da busca na árvore.

**Resposta do prompt 3:** A IA mostrou que posso encadear a minha regra personalizada com os fatos originais do banco de dados na mesma query. Aprendi a usar a variável `P` que sai da `peça_raiz(P)` para alimentar um fato `componente(P, _, Categoria)`, "pescando" a categoria para, logo em seguida, aplicar o operador de diferença `Categoria \= propulsao`.

## 4. Relatório de Satisfação e Aprendizado

* **Como a resposta ajudou na solução do problema:**
As respostas garantiram que eu aplicasse as negações corretamente nos lados certos da relação de dependência (Alvo vs. Requisito), permitindo mapear quem está na base e quem está no topo da cadeia de engenharia.

* **De que forma ela solucionou a sua dúvida:** Solucionou a dúvida de como extrair atributos extras (como a categoria) de uma peça que passou por uma regra que só retornava o nome. A query final rodou perfeitamente e retornou o reator de fusão, o módulo de suporte à vida e o cloaking device, provando que o filtro cruzado funcionou.

* **O que você aprendeu com aquele retorno para aplicar em problemas futuros:**
Aprendi como mapear grafos direcionados e árvores de dependência no Prolog. Ficou muito claro como a posição de uma variável dentro dos parênteses altera o sentido lógico da relação, e reforcei a técnica de resgatar dados do banco cruzando regras criadas por mim com fatos estruturais puros dentro do terminal.
