.data #0x10010000
.text
main:  addi $8, $0, 10
       lui $9, 0x1001
forle: beq $8, $0, ordena
       addi $2, $0, 5
       syscall
       sw $2, 0($9)
       addi $9, $9, 4
       addi $8, $8, -1
       j forle
ordena: lui $10, 0x1001

       addi $8, $0, 0 # i = 0
       addi $18, $0, 9
lacext: beq $8, $18, imp      
       addi $9, $8, 1 # j = i+1
       addi $19, $0, 10
       sll $11, $8, 2
       add $11, $11, $10
lacint: beq $9, $19, flint      
        sll $12, $9, 2
        add $12, $12, $10
       
        lw $13, 0($11)
        lw $14, 0($12)
        slt $15, $13, $14 # if($13<$14){$15=1;}else{$15=0;}
        bne $15, $0, segue
        add $16, $0, $14
        add $14, $0, $13
        add $13, $0, $16
        sw $13, 0($11)
        sw $14, 0($12)
segue: addi $9, $9, 1
       j lacint
flint: addi $8, $8, 1  # i++
       j lacext


imp:   addi $8, $0, 10
       lui $9, 0x1001
forimp: beq $8, $0, term
       
       lw $4, 0($9)
       addi $2, $0, 1
       syscall
       
       addi $4, $0, ' '
       addi $2, $0, 11
       syscall
       
       
       
       addi $9, $9, 4
       addi $8, $8, -1
       j forimp    

 
 
   
term:  addi $2, $0, 10
       syscall
