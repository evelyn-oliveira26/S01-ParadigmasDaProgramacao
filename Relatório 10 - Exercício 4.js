class Hunter {
  constructor(nome) {
    this.nome = nome;
  }

  lutar() {
    return `${this.nome} usou um ataque generico!`;
  }
}

class Gon extends Hunter {
  constructor() {
    super('Gon');
  }

  lutar() {
    return `${this.nome} usou Jajanken — Pedra!`;
  }
}

class Killua extends Hunter {
  constructor() {
    super('Killua');
  }

  lutar() {
    return `${this.nome} ativou Godspeed e atacou em velocidade maxima!`;
  }
}

class Kurapika extends Hunter {
  constructor() {
    super('Kurapika');
  }

  lutar() {
    return `${this.nome} prendeu o inimigo com as Correntes Imperativas!`;
  }
}

class TrupeFantasma {
  constructor(nome, membros) {
    this.nome = nome;
    this.membros = membros;
  }

  revelarMembros() {
    console.log(`=== ${this.nome} ===`);
    this.membros.forEach(m => {
      console.log(`Membro: ${m.nome}`);
    });
  }
}

//main
const gon     = new Gon();
const killua  = new Killua();
const kurapika = new Kurapika();

console.log(gon.lutar());
console.log(killua.lutar());
console.log(kurapika.lutar());

console.log('');

const trupe = new TrupeFantasma('Trupe Fantasma', [
  { nome: 'Chrollo' },
  { nome: 'Hisoka' },
  { nome: 'Feitan' }
]);

trupe.revelarMembros();
