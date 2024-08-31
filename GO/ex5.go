package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	reader := bufio.NewReader(os.Stdin)

	fmt.Print("Digite uma frase: ")
	frase, _ := reader.ReadString('\n')
	frase = strings.TrimSpace(frase)

	fmt.Print("Digite a palavra a ser contada: ")
	palavra, _ := reader.ReadString('\n')
	palavra = strings.TrimSpace(palavra)

	frase = strings.ToUpper(frase)
	palavra = strings.ToUpper(palavra)

	contagem := 0
	for i := 0; i <= len(frase)-len(palavra); i++ {
		if frase[i:i+len(palavra)] == palavra {
			contagem++
		}
	}

	fmt.Printf("A palavra '%s' ocorre %d vezes na frase.\n", palavra, contagem)
}
