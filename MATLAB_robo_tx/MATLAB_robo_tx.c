#include<avr/io.h>
#include<util/delay.h>
#include"lcd.h"

void main()
{
	USARTInit(51);
	InitLCD(0);
	char data;
	DDRB=0xFF;
	LCDWriteStringXY(0,0,"MATLAB GUI");
	LCDWriteStringXY(0,1,"With PROTEUS");
	_delay_ms(1000);
	LCDClear();
	LCDWriteStringXY(0,0,"wtg--------");
	while(1)
	{
	data= USARTReadChar();
	if(data=='a')
	   {
	    
	 //	PORTB=0b00000001;
		LCDWriteStringXY(0,0,"FRD");
		USARTWriteChar('a');
    	}
	else if(data=='b')
	   {
	 	//PORTB=0b00000010;
		LCDWriteStringXY(0,0,"REV");
		USARTWriteChar('b');
    	}
	else if(data=='c')
	   {
	 	//PORTB=0b00000010;
		LCDWriteStringXY(0,0,"RGT");
		USARTWriteChar('c');
		}

	else if(data=='d')
	   {
	 	//PORTB=0b00000010;
		LCDWriteStringXY(0,0,"LFT");
		USARTWriteChar('d');
		}
	else if(data=='e') 
	   {
	    //PORTB=0b00000000;
		LCDWriteStringXY(0,0,"STP");
    	USARTWriteChar('e');
    	}
	}
	}
