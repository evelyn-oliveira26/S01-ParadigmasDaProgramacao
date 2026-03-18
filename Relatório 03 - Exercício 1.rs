use std::io;

fn verificar_senha(senha: &str) -> bool {
  let mut numeros = 0;
  let mut maiuscula = false;

  for i in senha.chars() {
    if i.is_digit(10) {
      numeros += 1;
    }
    if i.is_ascii_uppercase() {
      maiuscula = true;
    }
  }
  senha.len() >= 10 && numeros >= 2 && maiuscula  //retorno da função
}

fn main() {
  let mut senha = String::new();
  
  println!("Digite uma senha:");
  io::stdin().read_line(&mut senha).expect("Erro ao ler");
  
  let mut senha_limpa = senha.trim(); //removendo os espaços vazios
  
  while !verificar_senha(senha_limpa) {
    println!("Senha invalida. Digite novamente:");

    senha = String::new();
    io::stdin().read_line(&mut senha).expect("Erro ao ler");

    senha_limpa = senha.trim();
    }

  println!("A senha e valida, seja bem vindo!");
}
