.text

main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      
      addi $9, $0, 10 # Constante
      
      div $8, $9
      mflo $11 #atribui o quociente da divisão (que estã no reg LO) ao registrador $11
      mfhi $12 #atribui o resto da divisão (que está no reg LO) ao registrador $12
      add $10, $10, $12
      sub $8, $0, $8
      add $8, $0, $11
      
      div $8, $9
      mflo $11
      mfhi $12
      add $10, $10, $12
      sub $8, $0, $8
      add $8, $0, $11 
      
      div $8, $9
      mflo $11
      mfhi $12
      add $10, $10, $12
      sub $8, $0, $8
      add $8, $0, $11
  
      addi $2, $0, 1
      add $4, $0, $10
      syscall     
