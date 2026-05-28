# IA_report - Exercício 3 - Java

### Modelo utilizado: Google Gemini

## 1. Identificação
* **Nome completo:** Evelyn Maria de Oliveira Silva
* **Matrícula:** 686

## 2. Histórico de Prompts

**Prompt 1:**
> me explica diretamente quando eu vou precisar o super ou não na hora de instanciar

**Prompt 2:**
> no vídeo do monitor eu vi que ele usa classes abstratas, quando seria bom colocar ela?

**Prompt 3:**
> certo, agora estou numa parte do exercício que usa hashmap(), na definição do meu pdf está assim: O HashMap armazena dados no formato chave-valor, sendo a
implementação mais comum da interface Map. A chave deve ser única,
servindo como um índice ultrarrápido para recuperar o valor associado
(.get(chave)). O acesso e a manipulação são extremamente rápidos, mas
a ordem de inserção não é preservada. É perfeito para mapeamentos e
dicionários (ex: CPF: Pessoa).
Exemplo de declaração: HashMap catalogo = new
HashMap<>();
porém como eu poderia usar de esqueleto no exercicio?

**Prompt 4:**
> certo, mas tem uma parte do exercício que é para listarEntidades (método), e nela tem que percorrer o hashmap, aí como faria isso?

**Prompt 5:**
> tentei fazer isso numa parte do meu exercício, mas está dando erro: System.out.print(e.getNome() + ": " + e.obterCoordenadas());

## 3. Respostas Obtidas

**Resposta do prompt 1:** A IA me explicou como e quando obrigatoriamente eu preciso usar o **super()**. Ela disse que ele é obrigatório quando a classe mãe possui um construtor com parâmetros, servindo para repassar esses dados da classe filha para a classe base, e me deu exemplos de código. 

**Resposta do prompt 2:** A IA me explicou quais seriam as melhores ocasiões para usar uma classe abstrata nos exercícios. Ela disse as que classes abstratas devem ser usadas quando um conceito é muito genérico e serve apenas de molde para as outras, nos proibindo de instanciá-la diretamente com o comando new na classe Main.

**Resposta do prompt 3:** A IA me deu exemplos sobre como funciona o **HashMap**. Ela me ensinou a usar o método .containsKey() para verificar se uma chave já existe antes de inserir dados com o .put() e como seria o esqueleto do código.

**Resposta do prompt 4:** A IA me exemplificou como eu poderia listar as entidades percorrendo o **HashMap**.

**Resposta do prompt 5:** A IA me explicou que eu estava misturando os conceitos de POO, logo, ela deu uma solução para essa parte do código funcionar. Ela me explicou que, como a interface Rastreavel estava declarada apenas nas classes filhas e não na classe mãe, o compilador do Java não reconheceria o método .obterCoordenadas() direto no loop genérico. A solução apresentada foi aplicar o conceito de Casting ((Rastreavel) e) para forçar o Java a reconhecer o objeto como rastreável temporariamente.

## 4. Relatório de Satisfação e Aprendizado

* **Como a resposta ajudou (ou falhou em ajudar) na solução do problema:**
 As respostas me ajudaram a entender mais sobre o **HashMap**, que achei um conceito novo e um pouco difícil de entender.

* **De que forma ela solucionou a sua dúvida:** Ela solucionou minha dúvida explicando e exemplificando exemplos de código.

* **O que você aprendeu com aquele retorno para aplicar em problemas futuros:** Aprendi mais sobre conceitos de POO, e sobre como utilizar melhor o **HashMap**.
