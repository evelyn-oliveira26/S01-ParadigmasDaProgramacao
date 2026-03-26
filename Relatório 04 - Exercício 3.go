package main

import "fmt"

// função que calcula a sequência de Fibonacci
func fibonacci(n int) {
	a := 0
	b := 1

	for i := 0; i < n; i++ {
		fmt.Print(a, " ")
		proximo := a + b
		a = b
		b = proximo
	}
}

func main() {
	var n int

	fmt.Print("Quantos números da sequência de Fibonacci você quer? ")
	fmt.Scanln(&n)

	fibonacci(n)
}
