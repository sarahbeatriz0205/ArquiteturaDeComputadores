.text

main: addi $2, $0, 5
      syscall
      add $9, $0, $2
      
      addi $2, $0, 5
      syscall
      add $10, $0, $2

mediaPonderada: addi $13, $0, 2 # peso 2
                addi $14, $0, 3 # peso 3
                
                # soma dos pesos -> denominador
                add $11, $13, $14
                
                mult $9, $13 # multiplicação 2
                mflo $13
                
                mult $10, $14 # multiplicação 3
                mflo $14
                
                # somas dos resultados das multiplicações
                add $12, $13, $14                
                # média
                div $12, $11
                mflo $12
                
                add $4, $0, $12
                addi $2, $0, 1
                syscall
                