# IA_report - Exercício 1 - Prolog

### Modelo utilizado: Google Gemini

## 1. Identificação
* **Nome completo:** Evelyn Maria de Oliveira Silva
* **Matrícula:** 686

## 2. Histórico de Prompts

**Prompt 1:**
> [envio do código completo contendo os fatos e as regras] colei o código, mas a regra especie_chave está retornando false para a primeira query. qual o motivo?

**Prompt 2:**
> esses fatos poe no github? tipo junto ao codigo? acho que nao preciso upar o banco inteiro, mas coloco só os adicionais

**Prompt 3:**
> a parte que é pra eu colar no exercicio 1, me manda ai o trem

## 3. Respostas Obtidas

**Resposta do prompt 1:** A IA analisou o código enviado e identificou que o retorno false ocorria porque faltavam os fatos relacionando a alimentação da sucuri. Aprendi que precisava adicionar as linhas alimenta(agua, sucuri). e alimenta(terra, sucuri). para satisfazer a primeira condição da regra lógica.

**Resposta do prompt 2:** A IA explicou como o compilador do Prolog funciona em relação à ordem do código. Aprendi que é uma boa prática colocar os fatos novos agrupados com os outros fatos que usam o mesmo predicado (alimenta/2) para evitar avisos de Discontiguous predicate (predicado descontínuo) no terminal.

**Resposta do prompt 3:** A IA estruturou a resposta de forma limpa, separando apenas o que foi alterado e testado. Aprendi como documentar corretamente o código no relatório, colocando os comentários % fatos adicionais, % regra, % query teste e o % retorno para deixar a execução clara.

## 4. Relatório de Satisfação e Aprendizado

* **Como a resposta ajudou (ou falhou em ajudar) na solução do problema:**
Me ajudou a debugar o motivo pelo qual a query retornava falso, mostrando que o erro não estava na lógica da regra em si, mas sim na ausência de informações no banco de dados para a espécie testada.

* **De que forma ela solucionou a sua dúvida:** 
Ela foi direta ao ponto indicando exatamente quais fatos faltavam para a sucuri e explicou como estruturar a resposta final (fatos, regra e query) no relatório sem precisar copiar o banco de dados inteiro novamente.

* **O que você aprendeu com aquele retorno para aplicar em problemas futuros:** Aprendi que no Prolog a inferência de uma regra depende estritamente dos fatos declarados no arquivo. Se o fato não existe na base de conhecimento, a regra falhará na busca. Também aprendi a importância de manter fatos de um mesmo tipo agrupados para manter a organização e evitar warnings do compilador.
