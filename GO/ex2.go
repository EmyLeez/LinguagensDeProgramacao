package main

import "fmt"

func main() {
	var n int
	fmt.Print("Digite um número inteiro positivo: ")
	fmt.Scan(&n)

	if n <= 0 {
		fmt.Println("n não é compatível")
		return
	}

	isPrimo := true
	if n == 1 {
		isPrimo = false
	} else {
		for i := 2; i*i <= n; i++ {
			if n%i == 0 {
				isPrimo = false
				break
			}
		}
	}

	if isPrimo {
		fmt.Printf("%d é primo.\n", n)
	} else {
		fmt.Printf("%d não é primo.\n", n)
	}
}
