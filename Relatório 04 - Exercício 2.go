package main

import "fmt"

func main() {

	var a, b, c int

	fmt.Print("Digite o lado A: ")
	fmt.Scanln(&a)

	fmt.Print("Digite o lado B: ")
	fmt.Scanln(&b)

	fmt.Print("Digite o lado C: ")
	fmt.Scanln(&c)

	//vendo se forma triângulo
	if a+b > c && a+c > b && b+c > a {

		switch {
		case a == b && b == c:
			fmt.Println("Triângulo Equilátero")

		case a == b || a == c || b == c:
			fmt.Println("Triângulo Isósceles")

		default:
			fmt.Println("Triângulo Escaleno")
		}

	} else {
		fmt.Println("Erro: os valores não formam um triângulo.")
	}
}
