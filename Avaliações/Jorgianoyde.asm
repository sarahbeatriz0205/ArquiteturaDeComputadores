.text
main:  addi $2, $0, 5
       syscall
       add $8, $0, $2 # número de linhas; ex = 5
       
       subi $13, $8, 1 # 5 - 1 = 4
       
       addi $15, $0, 10
       
       # adiciona esse 4 no $9
       add $9, $0, 0 # a 1ª linha sempre vai começar com um a menos do num de linhas / número que vai ser subtraido
       
       add $10, $0, $8 # i = $8 até i = 0; ex: i = 4 até i = 0
       addi $14, $0, 0 # condição de parada
       
       lacoControle: beq $14, $10, sair
                     addi $9, $9, 0
                     
                     addi $12, $0, 1
                     
                     
                  
                        
                        impressao: add $4, $0, ' '
                                   addi $2, $0, 11
                                   syscall
                                   
                                   
                                   add $4, $0, $9
                                   addi $2, $0, 1
                                   syscall
                                  
                                  
                                  addi $9, $9, 1
                                  
                                  addi $12, $12, 1
                                  
                                  
                                  
                                  add $4, $0, '\n'
                                   addi $2, $0, 11
                                   syscall
                                    addi $14, $14, 1 # i++
                                  j lacoControle
                                  

sair: addi $2, $0, 10
      syscall
