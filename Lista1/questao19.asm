.text

main: # leitura do ano
      addi $2, $0, 5
      syscall
      
      addi $8, $0, 8
      div $8, $9
      
      mflo $10
      
      add $11, $8, $10
      
      andi $12, $11, 1
      
      # 6 = 0000... 000110
          # 0000... 000001 and
        # --------------------
        #   0000...000000 
        
      addi $4, $12, 30
      addi $2, $0, 1
      syscall