# IA_report - Exercício 1 - Prolog

### Modelo utilizado: Google Gemini

## 1. Identificação
* **Nome completo:** Evelyn Maria de Oliveira Silva
* **Matrícula:** 686

## 2. Histórico de Prompts

**Prompt 1:**
> Na regra `peça_crítica`, eu usei um underline `_` no final de `componente(P, Energia, _)`. Por que a gente usa esse underline em vez de colocar uma variável como `Categoria`, já que a categoria da peça está escrita lá no banco de dados?

**Prompt 2:**
> Na query da Parte 2 `?- componente(P, 6, sistemas), \+ precisa(_, P).`, nós usamos uma vírgula para juntar as duas condições. A ordem que eu coloco essas condições importa pro Prolog ou ele testa tudo de uma vez só?

**Prompt 3:**
> A query da Parte 2 retornou `false`. Eu sei que o `scanner_deep_space` tem 6 MW e é de sistemas, então ele existe no banco. Como exatamente o Prolog fez a conta para decidir que a resposta final deveria ser falsa?

## 3. Respostas Obtidas

**Resposta do prompt 1:** A IA explicou que o `_` se chama "variável anônima". Aprendi que usamos isso quando uma informação do banco de dados (nesse caso, a categoria) existe, mas não tem importância para a regra que estamos criando. Isso avisa o interpretador para ignorar aquele campo e não gastar memória salvando um valor que não será usado no cálculo.

**Resposta do prompt 2:** A IA me alertou que a vírgula funciona como o operador "E" (AND) e que a ordem importa muito, pois o Prolog lê da esquerda para a direita. Aprendi que é essencial colocar a busca da peça primeiro `componente(...)` para o Prolog descobrir quem é o `P` e, só depois, jogar esse `P` descoberto dentro da negação `\+ precisa(...)`. Se eu invertesse, a busca poderia dar erro ou ficar ineficiente.

**Resposta do prompt 3:** A IA detalhou o passo a passo interno do Prolog. Aprendi que, primeiro, ele filtrou o banco e isolou o `scanner_deep_space`. Depois, ele pegou esse nome e tentou provar a negação `\+ precisa(_, scanner_deep_space)`. Como existe a regra `precisa(estacao_pesquisa, scanner_deep_space)`, o Prolog viu que a peça *é* necessária. Como ela é necessária, a condição de "não ser necessária" falha, tornando a query inteira `false`.

## 4. Relatório de Satisfação e Aprendizado

* **Como a resposta ajudou na solução do problema:**
Ajudou a traduzir as restrições textuais do enunciado para a sintaxe funcional e exata do Prolog, garantindo que o código não só rodasse, mas estivesse otimizado.

* **De que forma ela solucionou a sua dúvida:** Apresentou a aplicação prática da variável anônima e explicou detalhadamente o comportamento do motor de inferência, validando que o retorno `false` era o resultado correto esperado ao esbarrar na dependência da estação de pesquisa.

* **O que você aprendeu com aquele retorno para aplicar em problemas futuros:** Aprendi a otimizar minhas regras ignorando parâmetros desnecessários com a variável anônima (`_`) e entendi a importância da ordem das cláusulas. Ficou claro que no Prolog nós construímos um "funil" lógico: primeiro pescamos a informação principal no banco de dados para instanciar a variável e, na sequência, passamos essa variável pelos filtros de exclusão (`\+` e `\=`) para chegar ao resultado final.
