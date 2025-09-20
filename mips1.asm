.text

main: addi $8, $0, 5 #atribui ao registrador $8 o valor 5; deixa o registrador $0 zerado, para que se some a constante 5 + 0
      addi $9, $0, 6 #atribui ao registrador $9 o valor 6; deixa o registrador $0 zerado, para que se some a constante 6 + 0
      addi $10, $0, 7 #atribui ao registrador $10 o valor 5; deixa o registrador $0 zerado, para que se some a constante 7 + 0
      addi $11, $0, 8 #atribui ao registrador $11 o valor 5; deixa o registrador $0 zerado, para que se some a constante 8 + 0
      
      add $13, $8, $9 #faz a soma entre os valores registrados nos registradores $8 e $9 e atribui esse resultado ao registrador $13
      add $14, $10, $11 #faz a soma entre os valores registrados nos registradores $10 e $11 e atribui esse resultado ao registrador $14
      add $15, $13, $14 #faz a soma entre os valores registrados nos registradores $13 e $14 e atribui esse resultado ao registrador $15