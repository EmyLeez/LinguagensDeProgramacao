package main

import "fmt"

func main() {
	var x, n, resultado int
	fmt.Print("Digite o valor de x: ")
	fmt.Scan(&x)
	fmt.Print("Digite o valor de n (não-negativo): ")
	fmt.Scan(&n)

	if n < 0 {
		fmt.Println("n não é compatível")
		return
	}

	resultado = 1
	for i := 0; i < n; i++ {
		resultado *= x
	}

	fmt.Printf("%d elevado a %d é igual a: %d\n", x, n, resultado)
}
