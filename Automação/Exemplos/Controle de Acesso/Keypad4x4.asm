
_main:

;Keypad4x4.c,56 :: 		void main() {
;Keypad4x4.c,57 :: 		cnt = 0;                                 // Reset counter
	CLRF        _cnt+0 
;Keypad4x4.c,58 :: 		Keypad_Init();                           // Initialize Keypad
	CALL        _Keypad_Init+0, 0
;Keypad4x4.c,61 :: 		Lcd_Init();                              // Initialize LCD
	CALL        _Lcd_Init+0, 0
;Keypad4x4.c,62 :: 		Lcd_Cmd(_LCD_CLEAR);                     // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Keypad4x4.c,63 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                // Cursor off
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;Keypad4x4.c,64 :: 		Lcd_Out(1, 1, "1");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_Keypad4x4+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_Keypad4x4+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Keypad4x4.c,65 :: 		Lcd_Out(1, 1, "Key  :");                 // Write message text on LCD
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr2_Keypad4x4+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr2_Keypad4x4+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Keypad4x4.c,66 :: 		Lcd_Out(2, 1, "Times:");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr3_Keypad4x4+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr3_Keypad4x4+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Keypad4x4.c,68 :: 		do {
L_main0:
;Keypad4x4.c,69 :: 		kp = 0;                                // Reset key code variable
	CLRF        _kp+0 
;Keypad4x4.c,72 :: 		do
L_main3:
;Keypad4x4.c,74 :: 		kp = Keypad_Key_Click();             // Store key code in kp variable
	CALL        _Keypad_Key_Click+0, 0
	MOVF        R0, 0 
	MOVWF       _kp+0 
;Keypad4x4.c,75 :: 		while (!kp);
	MOVF        R0, 1 
	BTFSC       STATUS+0, 2 
	GOTO        L_main3
;Keypad4x4.c,77 :: 		switch (kp) {
	GOTO        L_main6
;Keypad4x4.c,83 :: 		case  1: kp = 49; break; // 1        // Uncomment this block for keypad4x4
L_main8:
	MOVLW       49
	MOVWF       _kp+0 
	GOTO        L_main7
;Keypad4x4.c,84 :: 		case  2: kp = 50; break; // 2
L_main9:
	MOVLW       50
	MOVWF       _kp+0 
	GOTO        L_main7
;Keypad4x4.c,85 :: 		case  3: kp = 51; break; // 3
L_main10:
	MOVLW       51
	MOVWF       _kp+0 
	GOTO        L_main7
;Keypad4x4.c,86 :: 		case  4: kp = 65; break; // A
L_main11:
	MOVLW       65
	MOVWF       _kp+0 
	GOTO        L_main7
;Keypad4x4.c,87 :: 		case  5: kp = 52; break; // 4
L_main12:
	MOVLW       52
	MOVWF       _kp+0 
	GOTO        L_main7
;Keypad4x4.c,88 :: 		case  6: kp = 53; break; // 5
L_main13:
	MOVLW       53
	MOVWF       _kp+0 
	GOTO        L_main7
;Keypad4x4.c,89 :: 		case  7: kp = 54; break; // 6
L_main14:
	MOVLW       54
	MOVWF       _kp+0 
	GOTO        L_main7
;Keypad4x4.c,90 :: 		case  8: kp = 66; break; // B
L_main15:
	MOVLW       66
	MOVWF       _kp+0 
	GOTO        L_main7
;Keypad4x4.c,91 :: 		case  9: kp = 55; break; // 7
L_main16:
	MOVLW       55
	MOVWF       _kp+0 
	GOTO        L_main7
;Keypad4x4.c,92 :: 		case 10: kp = 56; break; // 8
L_main17:
	MOVLW       56
	MOVWF       _kp+0 
	GOTO        L_main7
;Keypad4x4.c,93 :: 		case 11: kp = 57; break; // 9
L_main18:
	MOVLW       57
	MOVWF       _kp+0 
	GOTO        L_main7
;Keypad4x4.c,94 :: 		case 12: kp = 67; break; // C
L_main19:
	MOVLW       67
	MOVWF       _kp+0 
	GOTO        L_main7
;Keypad4x4.c,95 :: 		case 13: kp = 42; break; // *
L_main20:
	MOVLW       42
	MOVWF       _kp+0 
	GOTO        L_main7
;Keypad4x4.c,96 :: 		case 14: kp = 48; break; // 0
L_main21:
	MOVLW       48
	MOVWF       _kp+0 
	GOTO        L_main7
;Keypad4x4.c,97 :: 		case 15: kp = 35; break; // #
L_main22:
	MOVLW       35
	MOVWF       _kp+0 
	GOTO        L_main7
;Keypad4x4.c,98 :: 		case 16: kp = 68; break; // D
L_main23:
	MOVLW       68
	MOVWF       _kp+0 
	GOTO        L_main7
;Keypad4x4.c,100 :: 		}
L_main6:
	MOVF        _kp+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_main8
	MOVF        _kp+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_main9
	MOVF        _kp+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_main10
	MOVF        _kp+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_main11
	MOVF        _kp+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_main12
	MOVF        _kp+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_main13
	MOVF        _kp+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_main14
	MOVF        _kp+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_main15
	MOVF        _kp+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_main16
	MOVF        _kp+0, 0 
	XORLW       10
	BTFSC       STATUS+0, 2 
	GOTO        L_main17
	MOVF        _kp+0, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_main18
	MOVF        _kp+0, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L_main19
	MOVF        _kp+0, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_main20
	MOVF        _kp+0, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_main21
	MOVF        _kp+0, 0 
	XORLW       15
	BTFSC       STATUS+0, 2 
	GOTO        L_main22
	MOVF        _kp+0, 0 
	XORLW       16
	BTFSC       STATUS+0, 2 
	GOTO        L_main23
L_main7:
;Keypad4x4.c,102 :: 		if (kp != oldstate) {                  // Pressed key differs from previous
	MOVF        _kp+0, 0 
	XORWF       _oldstate+0, 0 
	BTFSC       STATUS+0, 2 
	GOTO        L_main24
;Keypad4x4.c,103 :: 		cnt = 1;
	MOVLW       1
	MOVWF       _cnt+0 
;Keypad4x4.c,104 :: 		oldstate = kp;
	MOVF        _kp+0, 0 
	MOVWF       _oldstate+0 
;Keypad4x4.c,105 :: 		}
	GOTO        L_main25
L_main24:
;Keypad4x4.c,107 :: 		cnt++;
	INCF        _cnt+0, 1 
;Keypad4x4.c,108 :: 		}
L_main25:
;Keypad4x4.c,110 :: 		Lcd_Chr(1, 10, kp);                    // Print key ASCII value on LCD
	MOVLW       1
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVLW       10
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        _kp+0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;Keypad4x4.c,112 :: 		if (cnt == 255) {                      // If counter varialble overflow
	MOVF        _cnt+0, 0 
	XORLW       255
	BTFSS       STATUS+0, 2 
	GOTO        L_main26
;Keypad4x4.c,113 :: 		cnt = 0;
	CLRF        _cnt+0 
;Keypad4x4.c,114 :: 		Lcd_Out(2, 8, "   ");
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr4_Keypad4x4+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr4_Keypad4x4+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Keypad4x4.c,115 :: 		}
L_main26:
;Keypad4x4.c,117 :: 		ByteToStr(cnt, txt);                   // Transform counter value to string
	MOVF        _cnt+0, 0 
	MOVWF       FARG_ByteToStr_input+0 
	MOVLW       _txt+0
	MOVWF       FARG_ByteToStr_output+0 
	MOVLW       hi_addr(_txt+0)
	MOVWF       FARG_ByteToStr_output+1 
	CALL        _ByteToStr+0, 0
;Keypad4x4.c,118 :: 		Lcd_Out(2, 8, txt);                   // Display counter value on LCD
	MOVLW       2
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       8
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _txt+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_txt+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;Keypad4x4.c,119 :: 		} while (1);
	GOTO        L_main0
;Keypad4x4.c,120 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
