.text

main: addi $2, $0, 5
      syscall
      
      addi $8, $0, 3600
      div $2, $8
      mfhi $10
      mflo $11
      
      addi $9, $0, 60
      div $10, $9
      mflo $12
      mfhi $13
      
      div $13, $9
      mfhi $14
      mflo $15
      
      addi $2, $0, 1
      add $4, $0, $11
      syscall
      
      addi $2, $0, 11
      add $4, $0, 58
      syscall
      
      addi $2, $0, 1
      add $4, $0, $12
      syscall
      
      addi $2, $0, 11
      add $4, $0, 58
      syscall
      
      addi $2, $0, 1
      add $4, $0, $13
      syscall