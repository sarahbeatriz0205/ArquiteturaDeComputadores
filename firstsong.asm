# exemplo da internet, mas a estrutura � basicamente essa

.text
main: addi $4, $0, 60 # tom da nota
      addi $5, $0, 5000 # tempo de dura��o
      addi $6, $0, 0 # instrumento selecionado
      addi $7, $0, 127 # volume
      
      addi $2, $0, 31 #c�digo de servi�o para retornar imediatamente
      syscall
      
      addi $v0, $0, 10 # sair do syscall
      syscall