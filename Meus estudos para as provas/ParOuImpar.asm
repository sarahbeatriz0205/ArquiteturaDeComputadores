# PAR OU ÍMPAR COM AND - AND IMEDIATO
.text

main: addi $2, $0, 5
      syscall
      andi $8, $2, 1 #valor imediato 1: o último bit é 1
      #se o último bit do valor digitado for 1, ele retornará 1, e será o número ímpar
      #senão, será par
      
      addi $2, $0, 1 
      add $4, $0, $8 #não esquecer de adicionar o valor que eu quero imprimir no $4!
      syscall
      
      addi $2, $0, 10
      syscall