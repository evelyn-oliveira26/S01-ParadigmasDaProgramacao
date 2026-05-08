class Habilidade {
  usar() {
    throw new Error('O metodo usar() deve ser sobrescrito!');
  }
}

class Smoke extends Habilidade {
  usar() {
    return 'Lancando fumaca para bloquear visao!';
  }
}

class Flash extends Habilidade {
  usar() {
    return 'Jogando flash para cegar os inimigos!';
  }
}

class Dash extends Habilidade {
  usar() {
    return 'Executando dash para reposicionar rapidamente!';
  }
}

class Armadilha extends Habilidade {
  usar() {
    return 'Posicionando armadilha para detectar inimigos!';
  }
}

class Agente {
  constructor(nome, funcao, habilidade) {
    this.nome = nome;
    this.funcao = funcao;
    this._habilidade = habilidade;
  }

  entrarEmCombate() {
    console.log(`Agente: ${this.nome} | Funcao: ${this.funcao}`);
    console.log(this._habilidade.usar());
    console.log('---');
  }
}

class Time {
  constructor(agentes) {
    this.agentes = agentes;
  }

  iniciarPartida() {
    this.agentes.forEach(agente => agente.entrarEmCombate());
  }

  listarControladores() {
    return this.agentes.filter(agente => agente._habilidade instanceof Smoke);
  }
}

//main
const omen   = new Agente('Omen',   'Controlador', new Smoke());
const skye   = new Agente('Skye',   'Iniciador',   new Flash());
const jett   = new Agente('Jett',   'Duelista',    new Dash());
const cypher = new Agente('Cypher', 'Sentinela',   new Armadilha());

const time = new Time([omen, skye, jett, cypher]);

time.iniciarPartida();

const controladores = time.listarControladores();
console.log('Controladores no time:');
controladores.forEach(a => console.log(`- ${a.nome}`));
