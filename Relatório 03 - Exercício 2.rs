use std::io;

fn eh_impar(numero: i32) -> bool {
    numero % 2 != 0
}

fn main() {

    let mut escolha = String::new();
    println!("Jogador 1: escolha 'par' ou 'impar':");
    io::stdin().read_line(&mut escolha).expect("Erro ao ler");
    let escolha = escolha.trim();

    let mut entrada1 = String::new();
    println!("Jogador 1: Digite um numero:");
    io::stdin().read_line(&mut entrada1).expect("Erro ao ler");
    let numero1: i32 = entrada1.trim().parse().unwrap_or(0);

    let mut entrada2 = String::new();
    println!("Jogador 2: Digite um numero:");
    io::stdin().read_line(&mut entrada2).expect("Erro ao ler");
    let numero2: i32 = entrada2.trim().parse().unwrap_or(0);

    let soma = numero1 + numero2;

    println!("Soma: {}", soma);

    let resultado = eh_impar(soma);

    if (resultado && escolha == "impar") || (!resultado && escolha == "par") {
        println!("Jogador 1 venceu!");
    } else {
        println!("Jogador 2 venceu!");
    }
}
