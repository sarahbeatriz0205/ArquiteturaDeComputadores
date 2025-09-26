.text

main: addi $2, $0, 12
      syscall
      
      addi $8, $0, 32
      sub $9, $2, $8
      
      addi $2, $0, 11
      add $4, $0, 10
      syscall
      
      addi $2, $0, 11
      add $4, $0, $9
      syscall