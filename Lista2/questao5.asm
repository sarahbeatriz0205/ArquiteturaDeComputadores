.text

main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      
      addi $2, $0, 5
      syscall
      add $9, $0, $2
      
      addi $2, $0, 5
      syscall
      add $10, $0, $2

mediaPonderada: addi $12, $0, 1 # peso 1
                addi $13, $0, 2 # peso 2
                addi $14, $0, 3 # peso 3
                
                # soma dos pesos -> denominador
                add $11, $12, $13
                add $11, $11, $14
                
                mult $8, $12 # multiplicação 1
                mflo $12
                
                mult $9, $13 # multiplicação 2
                mflo $13
                
                mult $10, $14 # multiplicação 3
                mflo $14
                
                # somas dos resultados das multiplicações
                add $12, $12, $13
                add $12, $12, $14
                
                # média
                div $12, $11
                mflo $12
                
                add $4, $0, $12
                addi $2, $0, 1
                syscall
                
                
verificacao: addi $15, $0, 60 # média geral pra ser aprovado
             slt $13, $12, $15
             beq $13, $0, aprovado
             j reprovado
               
aprovado: add $4, $0, 10 # quebra de linha entre os números inseridos e os resultados
          addi $2, $0, 11
          syscall  
        
          add $4, $0, 'A'
          addi $2, $0, 11
          syscall
          
          addi $2, $0, 10
          syscall

reprovado: add $4, $0, 10 # quebra de linha entre os números inseridos e os resultados
           addi $2, $0, 11
           syscall 

           add $4, $0, 'R'
           addi $2, $0, 11
           syscall 
           
           addi $2, $0, 10
           syscall