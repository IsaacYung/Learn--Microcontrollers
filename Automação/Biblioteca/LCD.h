void Intro() {                  // Function used for text moving

  char txtI1[] = "SIREX - SISTEMAS";
  char txtI2[] = " * EMBARCAD0S * ";

  Lcd_Cmd(_LCD_CLEAR);               // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off

  Lcd_Out(1,1,txtI1);                 // Write text in first row
  Lcd_Out(2,1,txtI2);                 // Write text in first row

  Delay_ms(1300);
}
