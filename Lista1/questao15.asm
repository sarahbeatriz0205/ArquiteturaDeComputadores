.text

main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      
      sub $9, $0, $8 # 0 - num
      srl $10, $9, 31 # shift right logical: deslocamento do bit mais significativo, que será o sinal
      sll $11, $10, 4
      
      addi $4, $11, 32
      add $4, $8, $4
      addi $2, $0, 11
      syscall
      
      addi $4, $0, '|'
      addi $2, $0, 11
      syscall
      
      addi $2, $0, 10
      syscall
      
      # (num + 32) + sinal (0 - num) * 16
      
      