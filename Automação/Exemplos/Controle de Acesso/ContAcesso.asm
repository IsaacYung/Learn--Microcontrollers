
_Intro:

;sirexlib.h,1 :: 		void Intro() {                  // Function used for text moving
;sirexlib.h,3 :: 		char txtI1[] = "SIREX - SISTEMAS";
	MOVLW       ?ICSIntro_txtI1_L0+0
	MOVWF       TBLPTRL 
	MOVLW       hi_addr(?ICSIntro_txtI1_L0+0)
	MOVWF       TBLPTRH 
	MOVLW       higher_addr(?ICSIntro_txtI1_L0+0)
	MOVWF       TBLPTRU 
	MOVLW       Intro_txtI1_L0+0
	MOVWF       FSR1 
	MOVLW       hi_addr(Intro_txtI1_L0+0)
	MOVWF       FSR1H 
	MOVLW       34
	MOVWF       R0 
	MOVLW       1
	MOVWF       R1 
	CALL        ___CC2DW+0, 0
;sirexlib.h,6 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;sirexlib.h,7 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;sirexlib.h,9 :: 		Lcd_Out(1,1,txtI1);                 // Write text in first row
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Intro_txtI1_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Intro_txtI1_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;sirexlib.h,10 :: 		Lcd_Out(2,1,txtI2);                 // Write text in first row
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       Intro_txtI2_L0+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(Intro_txtI2_L0+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;sirexlib.h,12 :: 		Delay_ms(1300);
	MOVLW       33
	MOVWF       R11, 0
	MOVLW       250
	MOVWF       R12, 0
	MOVLW       119
	MOVWF       R13, 0
L_Intro0:
	DECFSZ      R13, 1, 1
	BRA         L_Intro0
	DECFSZ      R12, 1, 1
	BRA         L_Intro0
	DECFSZ      R11, 1, 1
	BRA         L_Intro0
;sirexlib.h,13 :: 		}
L_end_Intro:
	RETURN      0
; end of _Intro

_main:

;ContAcesso.c,27 :: 		void main() {
;ContAcesso.c,28 :: 		cnt = 0;                                 // Reset counter
	CLRF        _cnt+0 
;ContAcesso.c,29 :: 		Keypad_Init();                           // Initialize Keypad
	CALL        _Keypad_Init+0, 0
;ContAcesso.c,30 :: 		ANSEL  = 0;                              // Configure AN pins as digital I/O
	CLRF        ANSEL+0 
;ContAcesso.c,31 :: 		ANSELH = 0;
	CLRF        ANSELH+0 
;ContAcesso.c,32 :: 		Lcd_Init();                              // Initialize LCD
	CALL        _Lcd_Init+0, 0
;ContAcesso.c,33 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ContAcesso.c,34 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ContAcesso.c,37 :: 		Intro();
	CALL        _Intro+0, 0
;ContAcesso.c,38 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;ContAcesso.c,39 :: 		do {
L_main1:
;ContAcesso.c,40 :: 		kp = 0;                                // Reset key code variable
	CLRF        _kp+0 
;ContAcesso.c,43 :: 		do
L_main4:
;ContAcesso.c,45 :: 		kp = Keypad_Key_Click();             // Store key code in kp variable
	CALL        _Keypad_Key_Click+0, 0
	MOVF        R0, 0 
	MOVWF       _kp+0 
;ContAcesso.c,46 :: 		while (!kp);
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main4
;ContAcesso.c,48 :: 		switch (kp) {
	GOTO        L_main7
;ContAcesso.c,54 :: 		case  1: kp = 49; break; // 1        // Uncomment this block for keypad4x4
L_main9:
	MOVLW       49
	MOVWF       _kp+0 
	GOTO        L_main8
;ContAcesso.c,55 :: 		case  2: kp = 50; break; // 2
L_main10:
	MOVLW       50
	MOVWF       _kp+0 
	GOTO        L_main8
;ContAcesso.c,56 :: 		case  3: kp = 51; break; // 3
L_main11:
	MOVLW       51
	MOVWF       _kp+0 
	GOTO        L_main8
;ContAcesso.c,57 :: 		case  4: kp = 65; break; // A
L_main12:
	MOVLW       65
	MOVWF       _kp+0 
	GOTO        L_main8
;ContAcesso.c,58 :: 		case  5: kp = 52; break; // 4
L_main13:
	MOVLW       52
	MOVWF       _kp+0 
	GOTO        L_main8
;ContAcesso.c,59 :: 		case  6: kp = 53; break; // 5
L_main14:
	MOVLW       53
	MOVWF       _kp+0 
	GOTO        L_main8
;ContAcesso.c,60 :: 		case  7: kp = 54; break; // 6
L_main15:
	MOVLW       54
	MOVWF       _kp+0 
	GOTO        L_main8
;ContAcesso.c,61 :: 		case  8: kp = 66; break; // B
L_main16:
	MOVLW       66
	MOVWF       _kp+0 
	GOTO        L_main8
;ContAcesso.c,62 :: 		case  9: kp = 55; break; // 7
L_main17:
	MOVLW       55
	MOVWF       _kp+0 
	GOTO        L_main8
;ContAcesso.c,63 :: 		case 10: kp = 56; break; // 8
L_main18:
	MOVLW       56
	MOVWF       _kp+0 
	GOTO        L_main8
;ContAcesso.c,64 :: 		case 11: kp = 57; break; // 9
L_main19:
	MOVLW       57
	MOVWF       _kp+0 
	GOTO        L_main8
;ContAcesso.c,65 :: 		case 12: kp = 67; break; // C
L_main20:
	MOVLW       67
	MOVWF       _kp+0 
	GOTO        L_main8
;ContAcesso.c,66 :: 		case 13: kp = 42; break; // *
L_main21:
	MOVLW       42
	MOVWF       _kp+0 
	GOTO        L_main8
;ContAcesso.c,67 :: 		case 14: kp = 48; break; // 0
L_main22:
	MOVLW       48
	MOVWF       _kp+0 
	GOTO        L_main8
;ContAcesso.c,68 :: 		case 15: kp = 35; break; // #
L_main23:
	MOVLW       35
	MOVWF       _kp+0 
	GOTO        L_main8
;ContAcesso.c,69 :: 		case 16: kp = 68; break; // D
L_main24:
	MOVLW       68
	MOVWF       _kp+0 
	GOTO        L_main8
;ContAcesso.c,71 :: 		}
L_main7:
	MOVF        _kp+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_main9
	MOVF        _kp+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_main10
	MOVF        _kp+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_main11
	MOVF        _kp+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_main12
	MOVF        _kp+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_main13
	MOVF        _kp+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_main14
	MOVF        _kp+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_main15
	MOVF        _kp+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_main16
	MOVF        _kp+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_main17
	MOVF        _kp+0, 0 
	XORLW       10
	BTFSC       STATUS+0, 2 
	GOTO        L_main18
	MOVF        _kp+0, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_main19
	MOVF        _kp+0, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L_main20
	MOVF        _kp+0, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_main21
	MOVF        _kp+0, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_main22
	MOVF        _kp+0, 0 
	XORLW       15
	BTFSC       STATUS+0, 2 
	GOTO        L_main23
	MOVF        _kp+0, 0 
	XORLW       16
	BTFSC       STATUS+0, 2 
	GOTO        L_main24
L_main8:
;ContAcesso.c,73 :: 		if (kp != oldstate) {                  // Pressed key differs from previous
	MOVF        _kp+0, 0 
	XORWF       _oldstate+0, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L_main25
;ContAcesso.c,74 :: 		cnt = 1;
	MOVLW       1
	MOVWF       _cnt+0 
;ContAcesso.c,75 :: 		oldstate = kp;
	MOVF        _kp+0, 0 
	MOVWF       _oldstate+0 
;ContAcesso.c,76 :: 		}
	GOTO        L_main26
L_main25:
;ContAcesso.c,78 :: 		cnt++;
	INCF        _cnt+0, 1 
;ContAcesso.c,79 :: 		}
L_main26:
;ContAcesso.c,81 :: 		Lcd_Chr(1, 10, kp);                    // Print key ASCII value on LCD
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _kp+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;ContAcesso.c,83 :: 		if (cnt == 255) {                      // If counter varialble overflow
	MOVF        _cnt+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L_main27
;ContAcesso.c,84 :: 		cnt = 0;
	CLRF        _cnt+0 
;ContAcesso.c,85 :: 		Lcd_Out(2, 10, "   ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_ContAcesso+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_ContAcesso+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ContAcesso.c,86 :: 		}
L_main27:
;ContAcesso.c,88 :: 		WordToStr(cnt, txt);                   // Transform counter value to string
	MOVF        _cnt+0, 0 
	MOVWF       FARG_WordToStr_input+0 
	MOVLW       0
	MOVWF       FARG_WordToStr_input+1 
	MOVLW       _txt+0
	MOVWF       FARG_WordToStr_output+0 
	MOVLW       hi_addr(_txt+0)
	MOVWF       FARG_WordToStr_output+1 
	CALL        _WordToStr+0, 0
;ContAcesso.c,89 :: 		Lcd_Out(2, 10, txt);                   // Display counter value on LCD
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _txt+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_txt+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;ContAcesso.c,90 :: 		} while (1);
	GOTO        L_main1
;ContAcesso.c,91 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
