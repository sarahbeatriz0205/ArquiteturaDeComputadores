.text

main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      addi $2, $0, 5
      syscall
      add $9, $0, $2
      
      slt $10, $8, $9 
      beq $10, $0, maior2 
      j maior1 

maior2: add $4, $0, 10 # quebra de linha entre os n�meros inseridos e os resultados
        addi $2, $0, 11
        syscall 
        add $4, $0, $8
        addi $2, $0, 1
        syscall
        add $4, $0, 10
        addi $2, $0, 11
        syscall
        sub $11, $8, $9
        add $4, $0, $11
        addi $2, $0, 1
        syscall
        addi $2, $0, 10
        syscall

maior1: add $4, $0, 10 # quebra de linha entre os n�meros inseridos e os resultados
        addi $2, $0, 11
        syscall
        add $4, $0, $9
        addi $2, $0, 1
        syscall
        add $4, $0, 10
        addi $2, $0, 11
        syscall
        sub $11, $9, $8
        add $4, $0, $11
        addi $2, $0, 1
        syscall