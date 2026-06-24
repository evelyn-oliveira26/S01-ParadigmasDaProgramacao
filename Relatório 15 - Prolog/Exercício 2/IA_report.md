# IA_report - Exercício 2 - Prolog

### Modelo utilizado: Google Gemini

## 1. Identificação
* **Nome completo:** Evelyn Maria de Oliveira Silva
* **Matrícula:** 686

## 2. Histórico de Prompts

**Prompt 1:**
> Como é que eu cruzo dados de dois predicados diferentes na mesma regra? Por exemplo, na regra `hangar_combate`, eu preciso de saber se o hangar possui a peça através do `possui(H, P)` e, ao mesmo tempo, verificar se essa peça é de combate no `componente(P, Energia, Categoria)`.

**Prompt 2:**
> Na regra `falta_energia`, eu tentei fazer diretamente a negação assim: `\+ (possui(H, P), componente(P, _, propulsao)).`, mas em vez de listar os hangares, o Prolog deu erro ou retornou logo falso. Porque é que a negação não consegue encontrar os hangares sozinha?

**Prompt 3:**
> A query final (`?- hangar_combate(H), falta_energia(H).`) retornou `false`. Como posso ter a certeza de que a minha lógica não está errada e que é apenas o banco de dados que não tem um hangar com essas características?

## 3. Respostas Obtidas

**Resposta do prompt 1:** A IA explicou o conceito de *unificação de variáveis*. Aprendi que se usar a mesma variável (neste caso, a letra `P`) em ambas as condições dentro da regra, o Prolog faz uma intersecção automática (um "AND"). Ele procura uma peça `P` no hangar e testa se a *mesma* peça `P` tem a categoria 'combate'. 

**Resposta do prompt 2:** A IA alertou-me para uma regra de ouro do Prolog: **o operador de negação (`\+`) não instancia variáveis**. Aprendi que não posso pedir ao Prolog para "não ter" algo de um hangar `H` que ele ainda nem sabe quem é. Foi necessário colocar a condição geradora `possui(H, _)` *antes* da negação, forçando o motor a listar os hangares primeiro para, só depois, testar se lhes falta a propulsão.

**Resposta do prompt 3:** A IA explicou que o Prolog funciona como um validador estrito de factos. Ao cruzar manualmente as regras com o banco de dados, vimos que existem apenas duas peças de combate (`canhao_laser` e `torpedo_foton`), e o `hangar_epsilon` é o único que tem armas, mas tem apenas uma. Como a premissa `hangar_combate` nunca é verdadeira, o retorno `false` é, na verdade, a prova de que o código filtrou corretamente a base de dados.

## 4. Relatório de Satisfação e Aprendizado

* **Como a resposta ajudou na solução do problema:**
As respostas deram-me a estrutura exata para resolver os problemas de ligação de variáveis (cruzando `possui` com `componente`) e salvaram a Regra 2, que de outra forma falharia silenciosamente devido à forma como o Prolog lida com variáveis livres dentro de uma negação.

* **De que forma ela solucionou a sua dúvida:** Esclareceu perfeitamente o comportamento interno da máquina de inferência. Fiquei a perceber que devo sempre gerar as minhas variáveis (instanciar) antes de as passar por filtros negativos. 

* **O que você aprendeu com aquele retorno para aplicar em problemas futuros:**
Aprendi que escrever em Prolog exige pensar na "ordem de descoberta" da informação. O motor precisa de ter dados concretos em mãos antes de testar ausências. Esta técnica de ancorar variáveis antes de usar o `\+` é algo que aplicarei em qualquer banco de dados complexo para evitar que a pesquisa falhe ou entre em "floundering" (quando o sistema não sabe o que fazer com uma variável não instanciada).
