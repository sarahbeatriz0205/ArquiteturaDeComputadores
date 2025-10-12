.text

main: addi $2, $0, 5
      syscall
      add $9, $0, $2
      
      addi $2, $0, 5
      syscall
      add $10, $0, $2
      
      addi $2, $0, 5
      syscall
      add $8, $0, $2

mediaPonderada: addi $13, $0, 2 # peso 2
                addi $14, $0, 3 # peso 3
                
                # soma dos pesos -> denominador
                add $11, $13, $14
                
                mult $9, $13 # multiplicação 2
                mflo $13
                
                mult $10, $14 # multiplicação 3
                mflo $14
                
                # somas dos resultados das multiplicações
                add $12, $13, $14                
                # média
                div $12, $11
                mflo $12
                
                # média printada
                add $4, $0, $12
                addi $2, $0, 1
                syscall
                add $4, $0, 10
                addi $2, $0, 11
                syscall
                
                
                # faltas
                addi $15, $0, 5 # mínimo de faltas
                addi $10, $0, 10
                mult $8, $10
                mflo $13
                div $13, $15
                mflo $13 # cálculo final da regra de três
                slt $15, $13, $12 # se o cálculo final for menor
                beq $15, $0, saldoNegativo
                j subtracao

subtracao: sub $15, $12, $13
		   j fim

saldoNegativo: add $15, $0, $0
                
     # desconto da média          
fim: add $4, $0, $15
     addi $2, $0, 1
     syscall
     
     add $2, $0, 10
     syscall
