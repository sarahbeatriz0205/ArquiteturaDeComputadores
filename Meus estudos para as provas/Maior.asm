.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      
      addi $2, $0, 5
      syscall
      add $9, $0, $2
      
      add $11, $0, $8
      slt $12, $8, $9 # se true, $12 recebe 0
      bne $12, $0, menor$8 # se $12 = 1 e $0 = 0, vá pra menor$8
      j menor$9
      
menor$8: add $4, $0, $9
         addi $2, $0, 1
         syscall
         addi $2, $0, 10
         syscall
         
menor$9: add $4, $0, $8
         addi $2, $0, 1
         syscall
         addi $2, $0, 10
         syscall
         