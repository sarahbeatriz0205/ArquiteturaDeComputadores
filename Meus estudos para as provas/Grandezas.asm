.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      
      addi $2, $0, 5
      syscall
      add $9, $0, $2
      
      # se é igual
      beq $8, $9, iguais # essencial que a igualdade seja verificada primeiro
      
      # maior ou menor
      slt $10, $8, $9 #se $8 for menor que $9, $10 recebe 0
      beq $10, $0, maior$9 #se $10 for 0, o $8 é o menor valor e o $9 é o maior
      j menor$9 # senão, $9 é o menor
      
maior$9: add $4, $0, $8
         addi $2, $0, 1
         syscall
         
         add $4, $0, '>'
         addi $2, $0, 11
         syscall
         
         add $4, $0, $9
         addi $2, $0, 1
         syscall
         
         add $2, $0, 10
         syscall
         
menor$9: add $4, $0, $8
         addi $2, $0, 1
         syscall
         
         add $4, $0, '<'
         addi $2, $0, 11
         syscall
         
         add $4, $0, $9
         addi $2, $0, 1
         syscall
         
         addi $2, $0, 10
         syscall
         
iguais: add $4, $0, $8
         addi $2, $0, 1
         syscall
         
         add $4, $0, '='
         addi $2, $0, 11
         syscall
         
         add $4, $0, $9
         addi $2, $0, 1
         syscall
         
         add $2, $0, 10
         syscall