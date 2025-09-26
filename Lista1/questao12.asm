.text
# descoberta: eu posso ir atualizando um registrador específico da maneira que eu desejar
main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      
      addi $2, $0, 5
      syscall
      add $9, $0, $2
      
      addi $2, $0, 5
      syscall
      
      # malditas somas
      # primeiro valor:
      add $11, $8, $8
      add $11, $11, $8
      
      #segundo valor:
      add $12, $9, $9
      add $12, $12, $9
      add $12, $12, $9
      add $12, $12, $9
      add $12, $12, $9
      add $12, $12, $9
      add $12, $12, $9
      
      #terceiro valor:
      add $13, $2, $2
      add $13, $13, $2
      add $13, $13, $2
      add $13, $13, $2
      add $13, $13, $2
      add $13, $13, $2
      add $13, $13, $2
      add $13, $13, $2
      add $13, $13, $2
      add $13, $13, $2
      add $13, $13, $2
      add $13, $13, $2
      add $13, $13, $2
      
      # soma total
      add $14, $11, $12
      add $14, $14, $13
      
      # denominador
      add $10, $0, 3
      add $10, $10, 9
      add $10, $10, 15
      
      # divisão
      div $14, $10
      mflo $15
      
      addi $2, $0, 1
      add $4, $0, $15
      syscall