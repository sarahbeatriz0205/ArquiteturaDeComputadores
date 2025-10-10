.text

main: addi $2, $0, 5
      syscall
      add $8, $0, $2 # ano inserido
      
      # verificações
      addi $9, $0, 4
      div $8, $9
      mfhi $9 # se o resto for zero, ele é divisível por 4 e é bissexto
      beq $9, $0, bissextoSim
      
      add $4, $0, 'N'
      addi $2, $0, 11
      syscall
      
      addi $2, $0, 10
      syscall
      
      addi $10, $0, 400
      div $8, $10
      mfhi $10
      beq $10, $0, bissextoSim
      
bissextoSim: add $4, $0, 'B'
             addi $2, $0, 11
             syscall
             
             addi $2, $0, 10
             syscall