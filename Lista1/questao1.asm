# Fa�a um programa para ler um n�mero inteiro e imprimir o dobro desse n�mero

.text

main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      
soma: add $9, $8, $8