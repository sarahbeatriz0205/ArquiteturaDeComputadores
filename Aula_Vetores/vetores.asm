.data

.text
main: lui $10, 0x1001
      addi $8, $0, 6 # i = 6

# leitura dos valores
for1: beq $8, $0, ffor1

      addi $2, $0, 5
      syscall
      sw $2, 0($10)
      addi $10, $10, 4 # garantia de que os valores serão armazenados nos endereços de memória consecutivos

      
      addi $8, $8, -1
      j for1

ffor1: addi $10, $10, -4
         addi $8, $0, 6

for2: beq $8, $0, ffor2
      
      lw $4, 0($10)
      addi $2, $0, 1
      syscall
      
      addi $4, $0, '\n'
      addi $2, $0, 11
      syscall
      
      addi $10, $10, -4
      addi $8, $8, -1
      j for2
      
ffor2: addi $2, $0, 10
       syscall