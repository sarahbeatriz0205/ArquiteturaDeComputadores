.data # espaço reservado para guardar os dados
.word 32 # 0x10010000
.word 37 # 0x10010004
.word 2 # 0x10010008
.word 3 # 0x1001000c
.word 1 # 0x10010010
# int a = 32, b = 37...
# word: tipo de dado que será trabalhado

.text
main: addi $2, $0, 5
      syscall
      
      lui $8, 0x1001 # lui: desloca o endereço 16 bits para a esquerda e guarda no $8
      # $8 <= 0x10010000
      sw $2, 0($8) # o dado lido vai sobrepor o valor 32 que está na memória
      sw $2, 4($8) # transformei o $8 em um endereço de memória (ponteiro)
      # sw (store word): salva o dado
      
      # lw (load word): carrega o dado para ser usado no que eu quiser
      lw $4, 12($8) # nesse caso específico, estou imprimindo o valor
      addi $2, $0, 1
      syscall
      
      addi $2, $0, 10
      syscall