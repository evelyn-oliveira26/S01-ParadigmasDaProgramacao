package main

import "fmt"

// função que valida o usuário
func ValidarUsuario(nome string) (bool, string) {
	if len(nome) >= 8 {
		return true, "Usuário criado com sucesso!"
	}
	return false, "Erro: O nome de usuário é muito curto."
}

func main() {
	var nome string
	var valido bool
	var mensagem string

	// pede o nome até ser válido
	for {
		fmt.Print("Digite um nome de usuário: ")
		fmt.Scanln(&nome)

		valido, mensagem = ValidarUsuario(nome)

		fmt.Println(mensagem)

		if valido {
			break
		}
	}
}
