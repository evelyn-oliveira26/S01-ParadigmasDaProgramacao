class Pokemon {
  constructor(nome, tipo) {
    this.nome = nome;
    this.tipo = tipo;
    this._vida = 100;
  }

  get vida() {
    return this._vida;
  }

  atacar() {
    return `${this.nome} usou um ataque genérico!`;
  }

  receberDano(dano) {
    this._vida = Math.max(0, this._vida - dano);
  }
}

class Pikachu extends Pokemon {
  constructor() {
    super('Pikachu', 'Eletrico');
  }

  atacar() {
    return `${this.nome} usou Trovao!`;
  }
}

class Charizard extends Pokemon {
  constructor() {
    super('Charizard', 'Fogo');
  }

  atacar() {
    return `${this.nome} usou Lanca-Chamas!`;
  }
}

//main
const pikachu = new Pikachu();
const charizard = new Charizard();

console.log(pikachu.atacar());    
console.log(charizard.atacar());  

charizard.receberDano(40);
console.log(charizard.vida);      

charizard.receberDano(999);
console.log(charizard.vida);      
