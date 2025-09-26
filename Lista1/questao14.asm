.text

main: addi $2, $0, 5
      syscall
      
      addi $8, $0, 2
      div $2, $8
      mfhi $15