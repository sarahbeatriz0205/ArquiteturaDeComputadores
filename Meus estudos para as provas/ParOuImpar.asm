# PAR OU �MPAR COM AND - AND IMEDIATO
.text

main: addi $2, $0, 5
      syscall
      andi $8, $2, 1 #valor imediato 1: o �ltimo bit � 1
      #se o �ltimo bit do valor digitado for 1, ele retornar� 1, e ser� o n�mero �mpar
      #sen�o, ser� par
      
      addi $2, $0, 1 
      add $4, $0, $8 #n�o esquecer de adicionar o valor que eu quero imprimir no $4!
      syscall
      
      addi $2, $0, 10
      syscall