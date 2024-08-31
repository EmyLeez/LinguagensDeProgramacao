package main

import "fmt"

func main() {
	var n int
	fmt.Print("Digite o valor de n (positivo): ")
	fmt.Scan(&n)

	if n <= 0 {
		fmt.Println("n não é compatível")
		return
	}

	for i, count := 1, 0; count < n; i += 2 {
		fmt.Println(i)
		count++
	}
}
