.text

main: addi $2, $0, 5
      syscall
      add $8, $0, $2 #cópia 1
      
      addi $2, $0, 5
      syscall
      add $9, $0, $2 #cópia 2
      
      addi $2, $0, 5
      syscall
      
soma: add $10, $8, $9
      add $11, $10, $2
