.text
main: addi $4, $0, 70 # Si bemol -  Lá sustenido
      addi $5, $0, 800
      addi $6, $0, 0
      addi $7, $0, 127
      addi $2, $0, 33
      syscall 
      
      addi $4, $0, 79 # Si bemol -  Lá sustenido
      addi $5, $0, 800
      addi $6, $0, 0
      addi $7, $0, 127
      addi $2, $0, 33
      syscall 
      
      addi $4, $0, 72 # Si bemol -  Lá sustenido
      addi $5, $0, 800
      addi $6, $0, 0
      addi $7, $0, 127
      addi $2, $0, 33
      syscall 
      
      addi $4, $0, 65 # Si bemol -  Lá sustenido
      addi $5, $0, 1000
      addi $6, $0, 0
      addi $7, $0, 127
      addi $2, $0, 33
      syscall 
      
      addi $4, $0, 66 # Si bemol -  Lá sustenido
      addi $5, $0, 800
      addi $6, $0, 0
      addi $7, $0, 127
      addi $2, $0, 33
      syscall 
      
      
      
      
      
     
      
      



      ## $a0 = pitch (0-127) 
      #$a1 = duration in milliseconds 
      #$a2 = instrument (0-127) 
      #$a3 = volume (0-127)
      
      # instrumento 126 = gritos
      # instrumento 124 = som de telefone