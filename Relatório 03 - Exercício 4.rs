use std::io;

fn calcular_media(nota1: f64, nota2: f64, nota3: f64) -> f64 {
    let npt = (nota1 + nota2) / 2.0;
    let media = (0.7 * npt) + (0.3 * nota3);
    media
}

fn main() {
    let mut entrada1 = String::new();
    println!("Digite a nota 1:");
    io::stdin().read_line(&mut entrada1).expect("Erro ao ler");
    let nota1: f64 = entrada1.trim().parse().unwrap_or(0.0);

    let mut entrada2 = String::new();
    println!("Digite a nota 2:");
    io::stdin().read_line(&mut entrada2).expect("Erro ao ler");
    let nota2: f64 = entrada2.trim().parse().unwrap_or(0.0);

    let mut entrada3 = String::new();
    println!("Digite a nota 3:");
    io::stdin().read_line(&mut entrada3).expect("Erro ao ler");
    let nota3: f64 = entrada3.trim().parse().unwrap_or(0.0);

    let npt = (nota1 + nota2) / 2.0;  //vou assumir na main também, pois a função média retorna somente a média

    let media_final = calcular_media(nota1, nota2, nota3);
    println!("Media final: {}", media_final);

    if npt >= 60.0 && nota3 >= 60.0 {
        println!("Aluno aprovado!");
    } else {
        println!("Aluno reprovado!");
    }
}
