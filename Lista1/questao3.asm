# Fa�a um programa para ler dois n�meros inteiros e imprimir a multiplica��o desses dois n�meros

.text

main: addi $2, $0, 5
      syscall
      add $8, $0, $2      
      addi $2, $0, 5
      syscall
      
mtpl: mul $9, $8, $2