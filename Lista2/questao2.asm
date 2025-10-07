.text

main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      
      slt $9, $8, $0 # se ($8 < $0) -> $9 = 1
      beq $9, $0, positivo
      j negativo

positivo: add $10, $8, $8
          add $4, $0, $10
          addi $2, $0, 1
          syscall
          addi $2, $0, 10
          syscall

negativo: mult $8, $8
          mflo $11
          add $4, $0, $11
          addi $2, $0, 1
          syscall