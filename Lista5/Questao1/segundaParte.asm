.data
.word 1 # A[0]
.word 0 # A[1]
.word 5 
.word -2
.word 5 # A[4]
.word 7 # A[5]

.text
main: lui $8, 0x1001
      addi $9, $0, 100
      sw $9, 16($8)
      
      add $2, $0, 10
      syscall     