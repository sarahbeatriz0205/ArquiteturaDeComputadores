# Faça um programa para ler um número inteiro e imprimir o dobro desse número

.text

main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      
soma: add $9, $8, $8