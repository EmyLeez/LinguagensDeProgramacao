%INCLUDE "io.inc"
SECTION .data
num1 DD 19

SECTION .text
global CMAIN

; Autores do Código:
    ; Emylly Guimarães (Matricula: 171079) e Felipe Marzani (Matricula: 162662)

CMAIN:

    MOV EAX, [num1] ; Num1 ao registrador
        
    ; Verificando se o EAX é menor que 2
    CMP EAX, 2
    JL NAO_PRIMO ; Vai para o NAO_PRIMO se for menor que dois
    
    MOV ECX, 2 ; Adicionando uma espécie de contador ao ECX, para ser o divisor do EAX
    MOV EBX, 0 ; Inicializando o EBX em 2 para ser uma espécie de divisores. Incrementa quando for divisivel.
    
VERIFICA_PRIMO:
    XOR EDX, EDX ; Limpa EDX. O EDX armazena o resto.
    CMP ECX, EAX ; Verifica se ECX é maior que o numero
    JGE FIM ; Se for maior ou igual, termina
    
    DIV ECX ; Divide EAX por ECX  
    CMP EDX, 0 ; Verifica se o resto é 0, se for 0 joga para o DIVISIVEL que incrementa o EBX e o ECX
    JE DIVISIVEL 
    
    ; Se não for resto 0, cai nesta parte, o qual incrementa apenas o ECX
    ADD ECX, 1
    MOV EAX, [num1] ; Reatribui o numero ao EAX, pois o EAX quando feito a DIV vira o quociente.
    JMP VERIFICA_PRIMO  ; Realiza a verificação novamente do novo contador
        
DIVISIVEL:
    ; Se o numero for divisivel, cai nesta região. O EAX é reatribuido assim como anteriormente
    MOV EAX, [num1]
    ADD EBX, 1  ; Incrementa o EBX (a partir de 1 já não é mais primo)
    ADD ECX, 1  ; Incrementa o ECX
    JMP VERIFICA_PRIMO
        
                
NAO_PRIMO:
    PRINT_STRING 'Numero nao Primo'
    MOV EAX, 0
    RET    

E_PRIMO:
    PRINT_STRING 'Numero primo'
    MOV EAX, 0
    RET

FIM:
    CMP EBX, 0 ; Verifica se o contador de divisores é 0.
    ; Considera-se 1 e o próprio número como divisores apenas e pula-se o 1 e o próprio número na análise.
    JE E_PRIMO ; Se for igual a 0, o número e_primo. Do contrário é nao_primo
    JG NAO_PRIMO
