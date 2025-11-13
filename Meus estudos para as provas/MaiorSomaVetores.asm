.data

.text
main: # leituraEvetor 
      addi $8, $0, 0 
      addi $9, $0, 10
      lui $10, 0x1001
      lui $13, 0x1001
      
      # soma
      addi $11, $0, 0
      addi $12, $0, 10
      
      
leituraEvetor: beq $8, $9, soma
         addi $2, $0, 5
         syscall
         
         sw $2, 0($10)
         addi $10, $10, 4
        
         
         addi $8, $8, 1
         j leituraEvetor

soma: beq $11, $12, maior
      lw $14, 0($13)
      lw $15, 4($13)
      addi $13, $13, 4 # garante que ele vai "percorrer todos os elementos" do vetor
      add $14, $14, $15
     
      add $4, $0, $14
      addi $2, $0, 1
      syscall
      
      add $4, $0, ' '
      addi $2, $0, 11
      syscall
      
      addi $11, $11, 1
      j soma
      
      # zerando
      add $8, $0, $0
      add $9, $0, $0
      add $11, $0, $0 
      add $12, $0, $0
      addi $12, $0, 10
      addi $25, $0, 1
      
maior: beq $11, $12, sai
       lw $8, 32($13) # maior inicial
       addi $13, $13, -4
       lw $9, 28($13)
       
       slt $24, $8, $9
       beq $24, $25, substituirMaior

       
       addi $11, $11, 1
       j maior

# não tá acontecendo nada ainda       
substituirMaior: add $8, $0, $9
                 beq $11, $12, maior
                 
                 add $4, $0, $8
                 addi $2, $0, 1
                 syscall
       

sai: addi $2, $0, 10
     syscall
