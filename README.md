# Assembly - MARS MIPS

## Comandos Básicos - Assembly
- Registrador $0 está aterrado, então sempre terá o valor 0 e não é possível mudá-lo;
- Registrador $31 é usado para chamada de subrotina, quando há modularização do meu código. Funciona como um retorno;
- Registrador $29: apontador da pilha;

- Registradores livres para uso vão de $8 até $15 (variáveis temporárias). $24 e $ 25 também são variáveis temporárias;
- Registradores de $16 até $23 são variáveis salvas. Variáveis Salvas são aquelas que não podem ser alteradas pela subrotina;

### Sobre os registradores
 | Apelido do registrador | Número do registrador (Implementação no código) | Seu uso | Preservado em chamadas |
| :-------------------: | :--------------------: | :------: | :---------------------: |
| $zero     | $0        | Constante 0                | Fixa em Zero |
| $at       | $1        | Uso do montador (Assembler Temporário) | Não |
| $v0 - $v1 | $2 - $3   | Resultado de funções       | Não |
| $a0 - $a3 | $4 - $7   | Argumentos de funções      | Não |
| $t0 - $t7 | $8 - $15  | Variáveis Temporárias      | Não |
| $t8 - $t9 | $24 - $25 | Mais variáveis temporárias | Não |
| $s0 - $s7 | $16 - $23 | Variáveis salvas (Modularização) | Sim |
| $k0 - $k1 | $26 - $27 | SO Kernel (interrupções)   | Não |
| $gp       | $28       | Global Pointer             | Sim |
| $sp       | $29       | Stack Pointer              | Sim |
| $fp       | $30       | Frane Pointer              | Sim |
| $ra       | $31       | Return Address (Endereço de retorno) | Sim |

#### Observações
- $at ($1): usado para construção de pseudoinstruções;
- $gp, $sp, $fp: apontadores para certas regiões de memória de dados;

#### Outros registradores
- HI (32 bits; recebe os 32 bits mais significativos) / LO (32 bits; recebe os 32 bits menos significativos): usados para receber operações que resultem em 64 bits, como uma multiplicação, por exemplo;
- PC - Program Counter (32 bits): aponta para a instrução que está na memória e que será executada a seguir;

### Operações Aritméticas
#### Soma
- add $registradorDeDestino, $fonteDeValor1, $fonteDeValor2
##### em C:
~~~c
int add(int fonteDeValor1, int fonteDeValor2){
  return fonte1 + fonte2
}

int main(void){
  int REG[32];
  t0 = 5;
  t1 = 6;
  t2 = add(t0, t1);
  printf("t2 = %d\n", t2);
  return 0;
}
~~~
##### Add Immediate:
- addi $fonteDeValor, Constante
#### Subtração
- sub $registradorDeDestino, $fonteDeValor1, $fonteDeValor2
##### em C:
~~~c
int add(int fonteDeValor1, int fonteDeValor2){
  return fonte1 + fonte2
}

int main(void){
  int REG[32];
  t0 = 5;
  t1 = 6;
  t2 = add(t0, t1);
  printf("t2 = %d\n", t2);
  return 0;
}
~~~

#### Multiplicação
- mult $fonte1, $fonte2
- valores recebidos pelos registradores HI e LO;
- Variação mul: sintaxe idêntica ao add e o sub, mas o registrador de destino é o LO

#### Divisão
- div $fonte1, $fonte2
- registrador HI: recebe o resto da divisão;
- registrador LO: recebe o quociente da divisão

#### Move from HI - mfhi
- mfhi $destino
- move o valor que está em HI para o $destino.
#### Move from LO - mflo
- mflo $destino
- move o valor de LO para o $destino.

### Operações Lógicas
#### AND - Bit a Bit (Bitwise)
- and $destino, $fonte1, $fonte2
- *obs: O operador AND bit a bit (&) compara cada bit do primeiro operando com o bit correspondente do segundo operando. Se ambos os bits forem 1, o bit de resultado correspondente será definido como 1. Caso contrário, o bit de resultado correspondente é definido como zero (0).*

#### OR - Bit a Bit (Bitwise)
- or $destino, $fonte1, $fonte2

#### NOR - Bit a Bit (Bitwise)
- nor $destino, $fonte1, $fonte2

#### Shift Left Logical - desloca bits para a esquerda (<<)
- sll $destino, $fonte1, Constante (valor fixo)
- a Constante será o número de vezes que o bit será deslocado
- obs: ao deslocar uma casa para a esquerda, multiplico por 2

 | Deslocamento | Valor |
| :---------: | :-------: |
| 00101 | 5 | 
| 01010 | 10 |
| 10100 | 20 |
| 11000 | 40 |

#### Shift Right Logical - desloca bits para a direita (>>)
- srl $destino, $fonte1, Constante
- a Constante será o número de vezes que o bit será deslocado
- obs: ao deslocar uma casa para a esquerda, divido por 2

 | Deslocamento | Valor |
| :---------: | :-------: |
| 00001000   | 8 |
| 00000100   | 4 |
| 00000010   | 2 | 
| 00000001   | 1 |  
| 00000000   | 0 | 


## Syscall
- Código de Serviço: diz ao Sistema Operacional qual serviço ele deve realizar (coletar dados do teclado, mostrar dados no monitor, etc.)
- O código de serviço deve estar sempre no registrador $2;
- Em seguida, o programa deve chamar o syscall, para verificação do código de serviço e execução da tarefa;
 ### Códigos de Serviços
 | Código de Serviço: $2 | Serviço | Argumentos (valor a ser usado) | Resultados |
| :--------------------: | :-----: | :--------: | :--------: |
| 1  | Imprime inteiro       | $4 |
| 2 | Imprime float | $f12 |
 | 3 | Imprime double | $f12|
 | 4| Imprime string | $4 |
| 5  | Lê inteiros (pelo teclado)| | $2 contém o inteiro que foi digitado |
| 6| Lê float (teclado) | | $f0 |
| 7| Lê double | | $f0 |
| 10 | Fim da execução       | |
| 11 | Imprimir um caractere | $4 |
| 12 | Lê um caractere       | | $2 contém o caractere lido |

### Ocupação de memória na arquitetura do MIPS
- Cada instrução ocupa 4 bytes (32 bits);
- Os programas ocupam uma área reservada na memória chamada .text;
- Podemos atribuir rótulos para endereços de memória:
<img width="1486" height="840" alt="Captura de tela 2025-09-20 113604" src="https://github.com/user-attachments/assets/75eb685f-e605-4d4e-a2e1-e7869591a272" />

## Comandos de decisão
### Como funciona o registrador PC?
- É um registrador de 32 bits;
- Aponta para a instrução que será executada a seguir;
- Uma série de instruções são carregadas na memória da máquina, tendo cada instrução um endereço próprio na memória;
- Quando o código estiver pronto e alocado na memória, o sistema operacional dará um comando de "START", que pede para que o registrador PC crie uma cópia do endereço de memória onde está a 1ª instrução;
- Logo após, o sistema operacional dá uma instrução de "EXEC", que faz com que a instrução que está na memória que PC tem a cópia seja executada e atribui a PC a cópia do endereço de memória da próxima instrução (processo que ocorre até o fim do código);

### Manipulação do PC
- Para que seja possível executar algo que envolva decisão, é necessário que haja manipulação do registrador PC, uma vez que ele executa tudo na ordem que está lhe sendo passado;

### Condicionais (para manipulação de PC)
#### Instrução Branch if EQuals (beq)
- beq $fonte1, $fonte2, rótulo
- O que faz:
```
    se ($fonte1 == $fonte2):
       PC = endereço de memória do rótulo (&rótulo);
    senão:
       PC = PC + 4 // salta para o próximo endereço de memória (segue o fluxo normalmente)
```
- Exemplo:
```
     beq $8, $9, main
```

#### Instrução Branch if Not EQuals (bne)
- bne $fonte1, $fonte2, rótulo
- O que faz:
```
     se ($fonte1 != $fonte2):
        PC = endereço de memória do rótulo (&rótulo)
     senão:
        PC = PC + 4 // salta para o próximo endereço de memória normalmente
```
- Exemplo:
```
     bne $8, $9, main
```

#### Salto absoluto (Instrução Jump)
- j rótulo
- O que faz:
```
    PC = &rótulo // atribui um rótulo a PC, com imediatez
```


#### É par ou ímpar? Explicação do código abaixo
- Adiciona ao registrador $2 a tarefa 5 do syscall, para leitura de inteiro;
- Chama o syscall;
- Faz um AND entre o inteiro 1 (00000000000000000000000000000001) e o inteiro que foi inserido, que está guardado no registrador $2;
- Quando passar para o "beq", ele vai verificar:   se o que está no registrador $8 for igual a o que está no registrador $0 (sempre zero), ele passa para as instruções que estão no rótulo "par", que contém a atribuição de um caractere 'p' para imprimir;   Senão, ele passa para a próxima instrução, que já diz que o inteiro é ímpar, com a impressão do caractere 'i';

<img width="1510" height="766" src="https://github.com/user-attachments/assets/78ff6299-d2da-468e-a78b-8c88d6220148" />
