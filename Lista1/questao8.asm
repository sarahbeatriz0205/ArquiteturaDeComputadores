.text

main: 
      # leitura em horas:
      addi $2, $0, 5
      syscall
      add $8, $0, $2
      
      # em minutos:
      addi $2, $0, 5
      syscall
      add $9, $0, $2
      
      # em segundos:
      addi $2, $0, 5
      syscall
      add $10, $0, $2
      
      # transformação de horas para minutos e soma dos minutos:
      addi $11, $0, 60
      mult $8, $11 # horas para minutos
      mfhi $12
      mflo $13
      
      # transformação de minutos para segundos:
      mult $13, $11
      mflo $14