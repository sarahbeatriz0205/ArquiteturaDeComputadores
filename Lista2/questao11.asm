.text

main: addi $2, $0, 5 # a
      syscall
      add $8, $0, $2
      
      addi $2, $0, 5 # b
      syscall
      add $9, $0, $2
      
      addi $2, $0, 5 # c
      syscall
      add $10, $0, $2
      
# verificações de pico
verificacaoPositivo: slt $11, $8, $9 # se (a < b)
	             slt $12, $9, $10
	             bne $11, $12, pico
	             
naoFormaPico: add $4, $0, 'N'
              addi $2, $0, 11
              syscall
              addi $2, $0, 10
              syscall
                                 
pico: addi $13, $0, 1
      beq $11, $13, picoPositivo # se for diferente, (a < b); se forem iguais (a > b)
      j picoNegativo
      
picoPositivo: add $4, $0, 'P'
              addi $2, $0, 11
              syscall
              add $4, $0, '+'
              addi $2, $0, 11
              syscall
              addi $2, $0, 10
              syscall

picoNegativo: add $4, $0, 'P'
              addi $2, $0, 11
              syscall
              add $4, $0, '-'
              addi $2, $0, 11
              syscall
      
