.text
main: # idade (em anos)
      addi $2, $0, 5
      syscall
      add $8, $0, $2
      
      # tempo de serviço (em anos)
      addi $2, $0, 5
      syscall
      add $9, $0, $2
      
      #   ======= CONDIÇÕES PARA APOSENTADORIA =======
      # se tiver 65 anos (independente do tempo de serviço)
      # tempo de serviço = 40 anos (independente da idade)
      # se tiver 60 anos + 35 anos de serviço
      
      addi $10, $0, 65 # idade mínima sem considerar o tempo de serviço
      addi $11, $0, 40 # tempo de serviço sem a idade
      addi $13, $0, 60
      addi $14, $0, 36
      
      # se a idade for maior ou igual a 65, ele se aposenta
      beq $8, $10, aposentadoriaIdadeMinima # se a idade for 65, pule pra isso
      slt $12, $8, $10 
      beq $12, $0, aposentadoriaIdadeMinima # se a idade for maior que 65, ele se aposenta
      
      beq $8, $13, verificacaoTempoServico # se a idade for igual a 60, ele vai ver o tempo de serviço
      slt $12, $8, $13 
      beq $12, $0, verificacaoTempoServico # se a idade for maior que 60, ele vai verificar o tempo
      
      beq $9, $11, aposentadoriaTempoMinimo
      slt $12, $9, $11 
      beq $12, $0, aposentadoriaTempoMinimo
      
      j semAposentadoria
      
aposentadoriaIdadeMinima: add $4, $0, 'S'
                          addi $2, $0, 11
                          syscall
                          
                          addi $2, $0, 10
                          syscall
                          
aposentadoriaTempoMinimo: add $4, $0, 'S'
                          addi $2, $0, 11
                          syscall
                          
                          addi $2, $0, 10
                          syscall
                          
verificacaoTempoServico: beq $9, $14, aposentadoria
                         slt $12, $9, $14
                         beq $12, $0, aposentadoria
                          
semAposentadoria: add $4, $0, 'N'
                  addi $2, $0, 11
                  syscall
                          
                  addi $2, $0, 10
                  syscall
                  
aposentadoria: add $4, $0, 'S'
               addi $2, $0, 11
               syscall
                          
               addi $2, $0, 10
               syscall
      