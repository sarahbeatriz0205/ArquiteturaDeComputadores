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
