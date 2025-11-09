.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2 # número de linhas
      addi $9, $0, 1 # número que tá sendo usado pra a soma
      addi $10, $0, 0 # i = 0
      
numLinhas: beq $10, $8, sair # quando o i chegar no número que eu inseri, o programa deve parar
           
           addi $11, $10, 1 # contador de linhas
           addi $12, $0, 0 # próximo laço -> j = 0
           
		lacoInterno: beq $12, $11, fimInterno
             		     add $4, $0, $9
             		     add $2, $0, 1
             		     syscall
             		     
             		     add $4, $0, ' '
                             addi $2, $0, 11
                             syscall     
                             
                             addi $9, $9, 1
                             addi $12, $12, 1
                             
                             j lacoInterno


                             fimInterno: add $4, $0, '\n'
                                         addi $2, $0, 11
                                         syscall
 
                                         addi $10, $10, 1 # i++;      
                                         j numLinhas # a partir daqui, ele executa tudo de novo até que numLinhas seja falso
sair: addi $2, $0, 10
      syscall