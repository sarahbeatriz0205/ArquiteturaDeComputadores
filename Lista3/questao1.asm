.text
main: addi $8, $0, 3 #$8 contém os múltiplos
      addi $10, $0, 10 # ponto de parada do laço
      addi $9, $0, 0 # i = 0

# for (i=1; i<10; i++)
test: beq $9, $10, fimDoFor
      add $4, $0, $8
      addi $2, $0, 1
      syscall
      
      add $4, $0, '\n'
      addi $2, $0, 11
      syscall 
      
      addi $8, $8, 3
      
      addi $9, $9, 1 # incremento i++
      j test

fimDoFor: addi $2, $0, 10
          syscall