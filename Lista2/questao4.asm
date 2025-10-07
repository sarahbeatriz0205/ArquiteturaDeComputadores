.text

main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      addi $2, $0, 5
      syscall
      add $9, $0, $2
      
      beq $8, $9, igualAo$9 # confere se são iguais
      
      slt $10, $8, $9 
      beq $10, $0, maiorQue$9
      j menorQue$9

maiorQue$9: add $4, $0, 10 # quebra de linha entre os números inseridos e os resultados
        addi $2, $0, 11
        syscall 
        
        add $4, $0, $8
        addi $2, $0, 1
        syscall
        
        add $4, $0, 62
        addi $2, $0, 11
        syscall
        
        add $4, $0, $9
        addi $2, $0, 1
        syscall
        
        add $2, $0, 10
        syscall
        
menorQue$9: add $4, $0, 10 # quebra de linha entre os números inseridos e os resultados
        addi $2, $0, 11
        syscall
        
        add $4, $0, $8
        addi $2, $0, 1
        syscall
        
        add $4, $0, 60
        addi $2, $0, 11
        syscall
        
        add $4, $0, $9
        addi $2, $0, 1
        syscall
        
        add $2, $0, 10
        syscall
        
igualAo$9: add $4, $0, 10 # quebra de linha entre os números inseridos e os resultados
        addi $2, $0, 11
        syscall
        
        add $4, $0, $8
        addi $2, $0, 1
        syscall
        
        add $4, $0, 61
        addi $2, $0, 11
        syscall
        
        add $4, $0, $9
        addi $2, $0, 1
        syscall
        
        addi $2, $0, 10
        syscall