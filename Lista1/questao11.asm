# Fa�a um programa que leia 1 inteiro entre 100 e 999 e o imprima escrito de tr�s para frente. Exemplo: 384 gera uma sa�da 483

.text

main: addi $2, $0, 5
      syscall
      add $8, $0, $2 
      
      addi $9, $0, 10
      div $8, $9
      mfhi $13 # �ltimo d�gito od n�mero -> resto da divis�o
      mflo $10 # n�mero depois da divis�o
      
      div $10, $9
      mfhi $14
      mflo $11
      
      div $11, $9
      mfhi $15
      mflo $12
      
      addi $2, $0, 1
      add $4, $0, $13
      syscall
      
      addi $2, $0, 1
      add $4, $0, $14
      syscall
      
      addi $2, $0, 1
      add $4, $0, $15
      syscall