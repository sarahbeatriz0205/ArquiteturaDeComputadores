.text
main:  addi $2, $0, 5
       syscall
       add $8, $0, $2 #$8 <= n
       
       addi $20, $0, 1 #nat = 1;
     
       addi $9, $0, 0 # i = 0;
test:  beq $9, $8, fimEXT  #i<n

       addi $10, $9, 1  #cols = i + 1;
       addi $11, $0, 0  # j = 0;
test2: beq $11, $10, fimINT
       add $4, $0, $20
       addi $2, $0, 1
       syscall        #printf("%d", nat);

       add $4, $0, ' '
       addi $2, $0, 11
       syscall        #printf(" ");
       
       addi $20, $20, 1 # nat++

       addi $11, $11, 1 # j++;
       j test2
fimINT:                  
       add $4, $0, '\n'
       addi $2, $0, 11
       syscall        #printf("\n");

       addi $9, $9, 1 # i++;      
       j test  
fimEXT: addi $2, $0, 10
        syscall