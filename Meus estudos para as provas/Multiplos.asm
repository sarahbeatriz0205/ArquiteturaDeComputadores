.text
main: addi $8, $0, 0 # começo do i = 0
      addi $2, $0, 5
      syscall
      addi $9, $0, 10  # condição de parada
      add $10, $0, $2 # número que vai ser multiplicado
laco: beq $8, $9, sairLaco # quando i for igual a condição de parada, sair do laço
      mult $10, $8
      mflo $11
      
      add $4, $0, $11
      addi $2, $0, 1
      syscall
      
      add $4, $0, '\n'
      addi $2, $0, 11
      syscall
     
     addi $8, $8, 1 # i = i + 1 -> incremento; executado caso o 1º beq não for verdadeiro
     j laco

sairLaco: addi $2, $0, 10
     syscall