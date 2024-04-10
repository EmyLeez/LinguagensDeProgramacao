%INCLUDE "io.inc"
SECTION .data
num1 DD 29

SECTION .text
global CMAIN

; Autores do Código:
    ; Emylly Guimarães (Matricula: 171079) e Felipe Marzani (Matricula: 162662)
    
CMAIN:

    MOV EAX, 1 ; Num1 para contabilizar a partir da análise das divisões. Será o contador que será incrementado.
    
    MOV EBX, [num1] ; EBX é o registrador que usará o número de entrada para analisar no verificador.
    
    MOV ESI, EAX ; ESI vai ser igual ao EX. A ideia é burlar sempre que o quociente é atribuido ao EAX. Assim, não perdendo o valor de EAX.
    
    MOV ECX, 2 ; Divisor utilizado para verificar se o resto da divisão de EAX por ECX é 0.
    
    PRINT_STRING 'Os primeiros n impares sao: '
    
    XOR EDX, EDX ; Limpa EDX. O EDX armazena o resto da divisão.
    
    VERIFICADOR:
        XOR EDX, EDX ; Limpa EDX. O EDX armazena o resto da divisão.
        
        CMP EAX, EBX ; Verificando se o EBX é maior que o EAX
        JG FIM
        
        ; Verificando se o EBX é divisível por 2, do contrário ele é impar. Resto precisa ser 0 para div.
        DIV ECX
        CMP EDX, 0
        JE DIVISIVEL
       
        MOV EAX, ESI ; Reatribuindo ao EAX o seu valor anterior, que foi registrado no ESI e incrementado.
        ADD ESI, 1 ; Incrementando o ESI para realizar a divisão da proxima verificaçao
        
        ; Se o resto que é o EDX, não for 0, ele irá printar.
        PRINT_UDEC 4, EAX ; Printa o N impar       
        PRINT_STRING ' ' ; Printa um espaço 
        
        MOV EAX, ESI ; Reatribui o novo valor do ESI incrementado em 1. Este EAX sera dividido sucessivamente com o incremento do ESI
        
        JMP VERIFICADOR
        
        
DIVISIVEL:
    MOV EAX, ESI ; Com a mesma ideia anterior, o EAX se tornara o quociente. Assim, reatribuo o valor anterior do EAX a partir do ESI
    ADD ESI, 1 ; Incremento o ESI
    MOV EAX, ESI ; Torno o EAX o valor anterior ao quociente a partir da divisao, incrementado em 1. 
    JMP VERIFICADOR

FIM:
    MOV EAX, 0
    XOR EDX, EDX
    RET