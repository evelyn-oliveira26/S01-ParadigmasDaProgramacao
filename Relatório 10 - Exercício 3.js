class Criatura {
  constructor(nome, perigo) {
    this.nome = nome;
    this.perigo = perigo;
  }
}

class Diario {
  constructor() {
    this._criaturas = []; 
  }

  registrarCriatura(criatura) {
    this._criaturas.push(criatura);
  }

  listarCriaturas() {
    console.log('Diario 3 — Criaturas Registradas');
    this._criaturas.forEach(c => {
      console.log(`Criatura: ${c.nome} | Perigo: ${c.perigo}`);
    });
  }
}

class Personagem {
  constructor(nome) {
    this.nome = nome;
  }
}

class CabanaMisterio {
  constructor(personagens) {
    this.personagens = personagens; 
  }

  listarFuncionarios() {
    console.log('Cabana do Misterio — Funcionarios');
    this.personagens.forEach(p => {
      console.log(`Personagem: ${p.nome}`);
    });
  }
}

//main
const diario = new Diario();

diario.registrarCriatura(new Criatura('Gnomo', 'Medio'));
diario.registrarCriatura(new Criatura('Shapeshifter', 'Alto'));
diario.registrarCriatura(new Criatura('Lumberjack Fantasma', 'Extremo'));

diario.listarCriaturas();

console.log('');

const grunkleStan = new Personagem('Grunkle Stan');
const mabel       = new Personagem('Mabel');
const soos        = new Personagem('Soos');

const cabana = new CabanaMisterio([grunkleStan, mabel, soos]);

cabana.listarFuncionarios();
