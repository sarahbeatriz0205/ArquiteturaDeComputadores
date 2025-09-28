# PAR OU ÍMPAR SEM AND

.text

main: addi $2, $0, 5
      syscall
      add $8, $0, $2 # cópia
      addi $9, $0, 2
      div $8, $9
      mfhi $10
      
      addi $2, $0, 1
      add $4, $0, $10
      syscall
      
      addi $2, $0, 10
      syscall