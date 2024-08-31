package main

import "fmt"

func main() {
	var f float64
	fmt.Print("Digite a temperatura em Fahrenheit: ")
	fmt.Scan(&f)

	c := (f - 32) * 5 / 9
	fmt.Printf("%.2f Fahrenheit é igual a %.2f Celsius.\n", f, c)
}
