# Fa�a um programa para ler um n�mero inteiro e imprimir o quadrado desse n�mero

.text

main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      
mtpl: mul $9, $8, $8