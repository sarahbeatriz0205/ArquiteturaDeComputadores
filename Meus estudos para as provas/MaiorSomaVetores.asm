.data

.text
main: # leituraEvetor 
      addi $8, $0, 0 
      addi $9, $0, 10
      lui $10, 0x1001
      lui $13, 0x1001
       
      
      # soma
      addi $2, $0, 5
      syscall
      addi $9, $2, -1
      
     
leituraEvetor: beq $8, $9, comp
         addi $2, $0, 5
         syscall
         
         sw $2, 0($10)
         addi $10, $10, 4
        
         
         addi $8, $8, 1
         j leituraEvetor
         
comp: lui $13, 0x1001
      lw $14, 0($13)
      lw $15, 4($13)
      add $16, $14, $15 #primeira soma
      add $18, $0, $14 #primeiro valor
      add $20, $0, $15 #segundo valor 
      add $21, $0, $0
      addi $11, $0, 1
      addi $13, $13, 4
      
      

soma: beq $11, $12, sai
      lw $14, 0($13)
      lw $15, 4($13)
      add $19, $14, $15
      
      sub $17, $16, $19
      srl $17, $17, 31
      beq $17, 1, substituirMaior
      
      j incrementoMaior
      
substituirMaior: 
                 add $16, $0, $19
                 add $18, $0, $14
                 add $20, $0, $15
                 
                 add $21, $0, $11
                 


incrementoMaior: addi $11, $11, 1
                 addi $13, $13, 4 # garante que ele vai "percorrer todos os elementos" do vetor
                 j soma
                 
    

       

sai: add $4, $0, $18
     addi $2, $0, 1
     syscall
     
     addi $4, $0, '+'
     addi $2, $0, 11
     syscall
     
     add $4, $0, $20
     addi $2, $0, 1
     syscall
     
     addi $4, $0, '='
     addi $2, $0, 11
     syscall

     add $4, $0, $16
     addi $2, $0, 1
     syscall
     
     add $4, $0, '\n'
     addi $2, $0, 11
     syscall
     
     addi $4, $0, 'p'
     addi $2, $0, 11
     syscall
     
     
     add $4, $0, $21
     addi $2, $0, 1
     syscall

     addi $2, $0, 10
     syscall
