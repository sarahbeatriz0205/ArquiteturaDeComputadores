# não sei se essa é a melhor forma de fazer, mas deu certo

.data
.word 1 # A[0]
.word 0 # A[1]
.word 5 
.word -2
.word 5
.word 7 # A[5]

.text
main: lui $8, 0x1001
      lw $9, 0($8) # A[0]
      lw $10, 4($8) # A[1]
      lw $11, 16($8) # A[5]
      
      add $12, $9, $10
      add $12,$12, $11
      
      add $4, $0, $12
      addi $2, $0, 1
      syscall
      
      add $2, $0, 10
      syscall     