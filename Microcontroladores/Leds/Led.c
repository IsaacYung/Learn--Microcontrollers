//Inclusão do microcontrolador a utilizar
#include <p18cxxx.h>
//Definição de variaveis
#define FREQ_CRISTAL (20000000) //20Mhz
#define CLOCK (5) //((Fosc/4) / 1000000)
#define Pino (PORTDbits.RD0) //Pino 19 do microcontrolador
#define Pino2 (PORTDbits.RD1)
#define Pino3 (PORTDbits.RD2)


//Prototipos de funções do programa
void Delay_ms ( int a);
//Programa principal
void main (void)
{
	int loop;
	
TRISD &= 0b11111000; //Configura pino RD0 como saída
while (1) //Ciclo infinito
{
 //Gera um delay de 500ms por polling

for(loop = 0;loop < 5;loop++){
Delay_ms(500);	
Pino = !Pino; //Comuta o estado do pino RD0
Pino2 = !Pino;
}
for(loop = 0;loop < 5;loop++){
Delay_ms(500);
Pino = 1; //Comuta o estado do pino RD0
Pino2 = 1;
Delay_ms(500);
Pino = 0; //Comuta o estado do pino RD0
Pino2 = 0;
}
for(loop = 0;loop < 20;loop++){
Delay_ms(200);	
Pino = !Pino; //Comuta o estado do pino RD0
Pino2 = !Pino;
}


}
}



void Delay_ms ( int Delay)
{
unsigned int aux1;
for ( aux1 = 0 ; aux1 < Delay ; aux1++) //Gera um atraso de 1 ms.
{
Delay1KTCYx(CLOCK); //1000 ciclos de relógio.
}
}
