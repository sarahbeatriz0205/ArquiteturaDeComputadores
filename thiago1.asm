.data
.text

# Sarah Beatriz Barbosa do Nascimento
# Thiago Gonsalves da Silva

main:
  lui $8, 0x1001 # inicio do vetor
  addi $9, $0, 0 # contador loop preenchimento
  
  addi $2, $0, 5
  syscall
  add $20, $0, $2 # limite
populandovetor: 
  beq $9, $20, maiorinicial

  addi $2, $0, 5
  syscall
  sw $2, 0($8)
  
  addi $8, $8, 4 # move o indice do vetor
  addi $9, $9, 1 # incremento
  j populandovetor
 
maiorinicial:
  lui $8, 0x1001 # volta pro inicio do vetor

  add $14, $0, $0 # max_maior 
  add $10, $0, $0 # max_qtd 
  
  addi $15, $0, 1 # contador i, L
  
  addi $16, $0, 0 # indice maior seq
  addi $20, $20, 1
percorrevetor:
  beq $15, $20, fim
  
  add $11, $0, $0 # max_atual
  add $12, $0, $0 # qtd_atual
  add $19, $15, $0 # contador j, U
  
percorresubvetor:
  beq $19, $20, incrementoi
  
  lui $8, 0x1001
  addi $18, $19, -1
  mul $18, $18, 4
  add $8, $8, $18
  
  lw $9, 0($8) # n1 
  add $11, $9, $11 # a soma atual
  addi $8, $8, -4
  
  addi $12, $12, 1 #tam_seq
  
  sub $17, $14, $11 
  srl $17, $17, 31
  beq $17, 0, incrementoj
  addi $16, $15, -1 # indice inicial maior seq
  add $14, $0, $11
  add $10, $0, $12 
  
incrementoj:
  addi $19, $19, 1 # incremento
  j percorresubvetor
  
incrementoi:
  addi $15, $15, 1 # incremento
  j percorrevetor
  
fim:
  addi $2, $0, 11
  add $4, $0, '-'
  syscall
  addi $2, $0, 11
  add $4, $0, '\n'
  syscall
  
  addi $2, $0, 1
  add $4, $0, $14
  syscall
  
  addi $2, $0, 11
  add $4, $0, '\n'
  syscall
  
  addi $2, $0, 1
  add $4, $0, $16
  syscall
  
  addi $2, $0, 11
  add $4, $0, '\n'
  syscall
  
  addi $2, $0, 1
  add $4, $0, $10
  syscall

  addi $2, $0, 10
  syscall