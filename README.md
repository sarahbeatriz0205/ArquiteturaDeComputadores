# Assembly - MARS MIPS

## Comandos Básicos - Assembly (Aula 1)
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
