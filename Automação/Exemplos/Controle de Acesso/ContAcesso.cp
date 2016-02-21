#line 1 "C:/Users/Isaac/Google Drive/Projetos/Automação/Exemplos/Controle de Acesso/ContAcesso.c"
#line 1 "c:/users/isaac/google drive/projetos/automação/biblioteca/sirexlib.h"
void Intro() {

 char txtI1[] = "SIREX - SISTEMAS";
 char txtI2[] = " * EMBARCAD0S * ";

 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);

 Lcd_Out(1,1,txtI1);
 Lcd_Out(2,1,txtI2);

 Delay_ms(1300);
}
#line 4 "C:/Users/Isaac/Google Drive/Projetos/Automação/Exemplos/Controle de Acesso/ContAcesso.c"
unsigned short kp, cnt, oldstate = 0;
char txt[6];


char keypadPort at PORTC;



sbit LCD_RS at LATE0_bit;
sbit LCD_EN at LATE1_bit;
sbit LCD_D4 at LATD4_bit;
sbit LCD_D5 at LATD5_bit;
sbit LCD_D6 at LATD6_bit;
sbit LCD_D7 at LATD7_bit;

sbit LCD_RS_Direction at TRISE0_bit;
sbit LCD_EN_Direction at TRISE1_bit;
sbit LCD_D4_Direction at TRISD4_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D7_Direction at TRISD7_bit;


void main() {
 cnt = 0;
 Keypad_Init();
 ANSEL = 0;
 ANSELH = 0;
 Lcd_Init();
 Lcd_Cmd(_LCD_CLEAR);
 Lcd_Cmd(_LCD_CURSOR_OFF);


 Intro();
 Lcd_Cmd(_LCD_CLEAR);
 do {
 kp = 0;


 do

 kp = Keypad_Key_Click();
 while (!kp);

 switch (kp) {





 case 1: kp = 49; break;
 case 2: kp = 50; break;
 case 3: kp = 51; break;
 case 4: kp = 65; break;
 case 5: kp = 52; break;
 case 6: kp = 53; break;
 case 7: kp = 54; break;
 case 8: kp = 66; break;
 case 9: kp = 55; break;
 case 10: kp = 56; break;
 case 11: kp = 57; break;
 case 12: kp = 67; break;
 case 13: kp = 42; break;
 case 14: kp = 48; break;
 case 15: kp = 35; break;
 case 16: kp = 68; break;

 }

 if (kp != oldstate) {
 cnt = 1;
 oldstate = kp;
 }
 else {
 cnt++;
 }

 Lcd_Chr(1, 10, kp);

 if (cnt == 255) {
 cnt = 0;
 Lcd_Out(2, 10, "   ");
 }

 WordToStr(cnt, txt);
 Lcd_Out(2, 10, txt);
 } while (1);
}
