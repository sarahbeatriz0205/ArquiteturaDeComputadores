.data
.word 1 # A[0]
.word 0 # A[1]
.word 5 
.word -2
.word 5
.word 7 # A[5]

# atribui, imprime
.text
main: lui $8, 0x1001
      addi $9, $0, 0
      addi $10, $0, 6
      addi $11, $0, 0
      
impressao: beq $9, $10, sai
           add $8, $8, $11 # como o lw não aceita registradores no lugar das constantes, tenho que fazer o deslocamento antes diretamente no $8 
           lw $4, 0($8)
           addi $2, $0, 1
           syscall
           
           addi $4, $0, '\n'
           addi $2, $0, 11
           syscall
           
           
           addi $11, $0, 4
           addi $9, $9, 1
           j impressao
           
sai: addi $2, $0, 10
     syscall