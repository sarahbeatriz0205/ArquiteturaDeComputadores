# Faça um programa para ler dois números inteiros e imprimir a multiplicação desses dois números

.text

main: addi $2, $0, 5
      syscall
      add $8, $0, $2      
      addi $2, $0, 5
      syscall
      
mtpl: mul $9, $8, $2