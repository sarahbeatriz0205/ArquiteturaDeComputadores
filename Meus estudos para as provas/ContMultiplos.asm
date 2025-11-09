.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2 # número a ser multiplicado
      
      addi $2, $0, 5
      syscall
      add $9, $0, $2 # condição de parada
      
      addi $10, $0, 0 # i = 0
      
test: beq $10, $9, sair
      # a partir daqui já é o corpo do laço
      mult $8, $10
      mflo $11
      
      add $4, $0, $11
      addi $2, $0, 1
      syscall
      
      add $4, $0, '\n'
      addi $2, $0, 11
      syscall
      
      add $10, $10, 1
      
      j test
      
sair: addi $2, $0, 10
      syscall
