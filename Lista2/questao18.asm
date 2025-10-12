.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      
      # $9 = quociente
      # $15 = resto
      # $11 = multiplicador = 1
      # $12 = 10
      # $13 = base = 2
      # $14 = binário fake
      
      addi $12, $0, 10
      addi $11, $0, 1
      addi $13, $0, 2
      addi $14, $0, 0 # inicia com o zero
      
      add $9, $0, $8 #quociente inicial = número
      
      # =========================================
      div $9, $13
      mfhi $15 #resto da divisão do quociente por 2
      mflo $9
      mul $15, $15, $11
      add $14, $14, $15
      mul $11, $11, $12
      
      div $9, $13
      mfhi $15 #resto da divisão do quociente por 2
      mflo $9
      mul $15, $15, $11
      add $14, $14, $15
      mul $11, $11, $12
      
      div $9, $13
      mfhi $15 #resto da divisão do quociente por 2
      mflo $9
      mul $15, $15, $11
      add $14, $14, $15
      mul $11, $11, $12
      
      div $9, $13
      mfhi $15 #resto da divisão do quociente por 2
      mflo $9
      mul $15, $15, $11
      add $14, $14, $15
      mul $11, $11, $12
      
      div $9, $13
      mfhi $15 #resto da divisão do quociente por 2
      mflo $9
      mul $15, $15, $11
      add $14, $14, $15
      mul $11, $11, $12
     
      div $9, $13
      mfhi $15 #resto da divisão do quociente por 2
      mflo $9
      mul $15, $15, $11
      add $14, $14, $15
      mul $11, $11, $12
      
      div $9, $13
      mfhi $15 #resto da divisão do quociente por 2
      mflo $9
      mul $15, $15, $11
      add $14, $14, $15
      mul $11, $11, $12
      
      div $9, $13
      mfhi $15 #resto da divisão do quociente por 2
      mflo $9
      mul $15, $15, $11
      add $14, $14, $15
      mul $11, $11, $12
      
      div $9, $13
      mfhi $15 #resto da divisão do quociente por 2
      mflo $9
      mul $15, $15, $11
      add $14, $14, $15
      mul $11, $11, $12
      
      div $9, $13
      mfhi $15 #resto da divisão do quociente por 2
      mflo $9
      mul $15, $15, $11
      add $14, $14, $15
      mul $11, $11, $12
      
      add $4, $0, $14
      addi $2, $0, 1
      syscall