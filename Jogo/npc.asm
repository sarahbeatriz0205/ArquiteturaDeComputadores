.text
main:   ori $5, $0, 0xffff # definição de cor (início)
        sll $5, $5, 4 # mudar a cor
        ori $5, $5, 0xf 
        addi $2, $0, 42 # random int range (gera um número aleatório, sendo usado aqui especificamente para mudança de cor)
       
        lui $10, 0x1001 # início da memória
        addi $8, $0, 512 # i = 512
for1:   beq $8, $0, fimCena
       
        addi $4, $0, 0
        syscall
        sw $4, 0($10) # pinta o bit atual
        
        # vai servir para recuperar a cor anterior, pra dar sensação de movimento
        sw $4, 2048($10) # faz uma cópia do que foi pintado para uma área da memória "invisível", carinhosamente apelidada pelo professor de "shadow copy"

        addi $10, $10, 4 # incremento da memória, pra sempre ir pro próximo
        addi $8, $8, -1 # incremento do i
        j for1
fimCena:  


        lui $10, 0x1001 # reseta a memória (a título de observação pra mim: não interfere no que já foi carregado)
        add $14, $10, 124
        add $15, $0, $10
       
        ori $9, $0, 0xffff # definição de cor
        sll $9, $9, 8 # mudança de cor
        ori $9, $9, 0xff
        addi $12, $0, 200 
        sw $9, 0($10)
        addi $13, $0, 4

for2:   beq $12, $0, parou
        jal timer
       
        add $16, $10, $13 # atribui o próximo índice ao $16
        sw $9, 0($16)
       
        lw $11, 2048($10) # carrega no $11 a cópia da cor que está no índice 2048 (shadow copy)
        sw $11, 0($10)
       
        add $10, $10, $13
       
        beq $10, $14, dim
        beq $10, $15, pos  
        j segue
dim:    add $13, $0, -4
        j segue    
pos:    add $13, $0, 4        
       
segue:  addi $12, $12, -1
        j for2


parou:   addi $2, $0, 10
         syscall    
         
         
         
timer:  addi $25, $0, 6500 # tempo (é o incremento do laço)
fortimer: beq $25, $0, fimtimer # serve pra que o movimento fique mais lento
         
          addi $25, $25, -1
          j fortimer        
fimtimer: jr $31