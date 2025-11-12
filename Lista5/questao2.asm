.data

.text
main: lui $10, 0x1001

      # indutor do laço leitura
      addi $8, $0, 0
      addi $9, $0, 6
      addi $14, $0, 0
      
      # indutor do laço impressao
         addi $11, $0, 0
         addi $12, $0, 6
         
         addi $13, $0, 0
      
      
      
leitura: beq $8, $9, impressao

         addi $2, $0, 5
         syscall
         
         add $10, $10, $14
         sw $2, 0($10)
        
         addi $14, $0, 4
         addi $8, $8, 1
         
         j leitura
         
         
       
impressao: beq $11, $12, sai
           add $10, $10, $13
           lw $4, 0($10)
           addi $2, $0, 1
           syscall
           
           addi $4, $0, ' '
           addi $2, $0, 11
           syscall
           
           addi $13, $0, 4
           addi $11, $11, 1
           j impressao
       
               
sai: addi $2, $0, 10
     syscall   