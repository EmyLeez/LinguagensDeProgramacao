%INCLUDE "io.inc"
SECTION .data
num1 DD 10
fatorial DD 1

SECTION .text
global CMAIN 

; Autores do Código:
    ; Emylly Guimarães (Matricula: 171079) e Felipe Marzani (Matricula: 162662)

CMAIN:
   MOV EAX, [num1] ; atribuindo a EAX o valor do num1
   MOV EBX, [fatorial] ; atribuindo a EBX o valor do fatorial iniciado em 1
   
   CMP EAX, 0 ; Verificando se o num1 inteiro é igual a zero
   
   ; Se for 0, executará a parte do IF_ZERO
   JE IF_ZERO ; JE significa Jump if Equal, portanto, caso a condição satisfaça ele irá pular para executar
   
   ; Se não for 0, seguirá nesta parte.
   MOV ECX, EAX ; Usando o ECX como contador para o Loop
   MOV EDX, [fatorial] ; Inicializa o contador para a Multiplicação
   
   CALCULAR_FATORIAL:
      IMUL EDX, ECX ; Multiplicando EAX pelo contador
      SUB ECX, 1 ; Decrementa em 1 o Contador
      CMP ECX, 1 ; Comparando o contador com o numero original
      JG CALCULAR_FATORIAL
   
   MOV [fatorial], EDX ; Fatorial vai conter o valor do EAX final
   MOV EAX, 0 ; Zerando o EAX
   PRINT_UDEC 4, [fatorial] ; Printando o fatorial 
   
   RET
       

IF_ZERO:
    MOV [fatorial], EBX ; fatorial é igual EBX
    MOV EAX, 0 ; Zerando o EAX
    PRINT_UDEC 4, [fatorial] ; Se o numero for igual a 0, o fatorial é 1
    
    RET