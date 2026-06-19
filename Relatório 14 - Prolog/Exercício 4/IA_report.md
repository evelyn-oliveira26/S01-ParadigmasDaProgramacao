# IA_report - Exercício 4 - Prolog

### Modelo utilizado: Google Gemini

## 1. Identificação
* **Nome completo:** Evelyn Maria de Oliveira Silva
* **Matrícula:** 686

## 2. Histórico de Prompts

**Prompt 1:**
> como funciona a estrutura de recursividade no prolog, especificamente a diferença entre o caso base e o passo recursivo pra eu poder aplicar

**Prompt 2:**
> E como o prolog sabe que tem que parar? o que acontece se eu não colocar o caso base na regra?

## 3. Respostas Obtidas

**Resposta do prompt 1:** A IA explicou que a recursão no Prolog precisa de duas partes essenciais para ser aplicada: o "Caso Base" (a condição de parada) e o "Passo Recursivo" (a regra chamando a si mesma usando uma variável intermediária). Aprendi que para aplicar isso na prática, o passo recursivo atua como uma ponte para buscar ligações sucessivas, enquanto o caso base ancora o final da busca.

**Resposta do prompt 2:** A IA esclareceu que, sem o caso base, o programa entraria em um loop infinito ou simplesmente retornaria **false** ao esgotar as possibilidades sem validar uma saída. Aprendi que é uma boa prática declarar o caso base sempre antes da regra recursiva no arquivo `.pl`, forçando o motor de inferência a testar a condição de parada primeiro.

## 4. Relatório de Satisfação e Aprendizado

* **Como a resposta ajudou na solução do problema:**
Ajudou a consolidar a teoria lógica para que eu pudesse aplicá-la com segurança na modelagem das regras do exercício 4, justificando a necessidade de criar duas cláusulas com o mesmo nome (`fluxo_energia/2`) para o programa rodar corretamente.

* **De que forma ela solucionou a sua dúvida:** A IA traduziu os conceitos abstratos da linguagem lógica (como unificação e fluxo de execução) de forma prática, permitindo entender como estruturar o código passo a passo.

* **O que você aprendeu com aquele retorno para aplicar em problemas futuros:** Aprendi a projetar regras recursivas de forma segura e eficiente, compreendendo que a ordem das declarações importa no Prolog e que a construção correta da condição de parada é o que garante que o algoritmo execute e finalize sem erros de memória.
