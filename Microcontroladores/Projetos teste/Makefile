# MPLAB IDE generated this makefile for use with GNU make.
# Project: Led.mcp
# Date: Mon Dec 21 15:13:35 2009

AS = MPASMWIN.exe
CC = mcc18.exe
LD = mplink.exe
AR = mplib.exe
RM = rm

../../../../../../../MCC18/lib/Led.cof : LED.o
	$(LD) /l"C:\MCC18\h" /l"C:\MCC18\lib" "..\..\..\..\..\..\..\MCC18\lkr\18f4620.lkr" "LED.o" "C:\MCC18\lib\p18f4620.lib" /u_CRUNTIME /u_DEBUG /z__MPLAB_BUILD=1 /z__MPLAB_DEBUG=1 /o"C:\MCC18\lib\Led.cof" /M"C:\MCC18\lib\Led.map" /W

LED.o : ../../../Projetos/LED.c ../../../../../../../MCC18/h/pwm.h ../../../../../../../MCC18/h/adc.h ../../../../../../../MCC18/h/stdlib.h ../../../../../../../MCC18/h/i2c.h ../../../../../../../MCC18/h/timers.h ../../../../../../../MCC18/h/delays.h ../../../../../../../MCC18/h/usart.h ../../../Projetos/LED.c ../../../../../../../MCC18/h/p18f4620.h ../../../../../../../MCC18/h/pconfig.h ../../../../../../../MCC18/h/p18cxxx.h
	$(CC) -p=18F4620 /i"C:\MCC18\lib" "C:\Users\Isaac\Documents\Documentos Educa��o\Projetos\LED.c" -fo="LED.o" -D__DEBUG -Ou- -Ot- -Ob- -Op- -Or- -Od- -Opa-

clean : 
	$(RM) "LED.o" "..\..\..\..\..\..\..\MCC18\lib\Led.cof" "..\..\..\..\..\..\..\MCC18\lib\Led.hex"

