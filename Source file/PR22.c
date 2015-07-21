//==========================================================================
//	Author				: Cytron Technologies
//	Project				: PR22
//	Project description	: Reading Compass Module, Capacitive and Barometric Pressure Sensor
//==========================================================================

//	include
//==========================================================================
#if defined(__XC8)
  #include <xc.h>
 #pragma config CONFIG = 0x3F32
//FOSC = EXTRC     // Oscillator Selection bits (RC oscillator)
//WDTE = ON        // Watchdog Timer Enable bit (WDT enabled)
//PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
//BOREN = ON       // Brown-out Reset Enable bit (BOR enabled)
//LVP = ON         // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3/PGM pin has PGM function; low-voltage programming enabled)
//CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
//WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
//CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

#else
//#include <htc.h>                  //include the PIC microchip header file
#include <pic.h>

//	configuration
//==========================================================================
__CONFIG (0x3F32);//configuration for the  microcontroller

#endif

//==========================================================================================

//	define
//==========================================================================
#define	RS          RC0				//RS pin of the LCD display
#define	E           RA5				//E pin of the LCD display
#define	BRIGHTNESS	CCPR1L			//brightness of the LCD backlight
#define CONTRAST    CCPR2L			//contrast of the LCD character
#define	LCD_DATA    PORTB			//LCD 8-bit data PORT

#define	BUTTON1     RA0				//button (active low)
#define	BUTTON2     RA1				//button (active low)
#define	BUTTON3     RA2				//button (active low)

#define SDI         RC5				//serial data in (SPI)
#define SCL         RC6				//serial clock (SPI)
#define SDO         RC7				//serial data out (SPI)
#define CSB         RA3				//chip select (SPI)

#define write		0
#define read		1

//	function prototype				(every function must have a function prototype)
//==========================================================================
void mode1(void);
void mode2(void);
void mode3(void);

void delay(unsigned long data);

void send_config(unsigned char data);
void send_char(unsigned char data);
void lcd_goto(unsigned char data);
void lcd_clr(void);
void send_string(const char *s);

void i2c_start(unsigned char address, unsigned char size, unsigned operation);

void spi_baro(unsigned char register_address, unsigned char data, unsigned operation);
unsigned char spi_start(unsigned char data);

//	global variable
//==========================================================================
unsigned char mode;

unsigned char i2c_master_data[7] = {0};	//data to be sent to slave
unsigned char i2c_master_rcvb[7] = {0};	//data received from slave

unsigned char spi_baro_rcvb[2] = {0};	//data received from slave (barometric sensor)

//	main function					(main fucntion of the program)
//==========================================================================
void main()
{
	//set I/O input output
	TRISB = 0b00000000;					//configure PORTB I/O direction
	TRISC = 0b00111000;					//configure PORTC I/O direction
	TRISA = 0b00010111;					//configure PORTA I/O direction

	//i2c initialization
	SSPBUF = 0;							//clear ssp buffer
	SSPSTAT = 0b11000000;
	SSPCON = 0b00111000;				//i2c mode = master
	SSPCON2 = 0b00000000;
	SSPADD = 0x32;						//baud rate = 100KHz
	SSPIF = 0;							//clear ssp flagbit

	//SPI intialization
	SCL = 1;							//release SPI clock
	SDO = 1;							//release SPI data out
	CSB = 1;							//disable slave

	//setup ADC
	ADCON1 = 0b00000110;				//set ADx pin digital I/O

	//configure lcd
	send_config(0b00000001);			//clear display at lcd
	send_config(0b00000010);			//lcd return to home
	send_config(0b00000110);			//entry mode-cursor increase 1
	send_config(0b00001100);			//display on, cursor off and cursor blink off
	send_config(0b00111000);			//function set

	//setup PWM for brightness & b_light adjustment
	CCP1CON = 0b00001100;				//PWM Mode
	CCP2CON = 0b00001100;				//PWM Mode
	PR2 = 0xFF;							//PWM Period Setting (4.88KHz)
	T2CON = 0b00000101;					//Timer2 On, prescale 4
	CONTRAST = 50;						//lower is darker (character) (0 - 254)
	BRIGHTNESS = 0;					//higher is brighter (back_light) (0 - 254)

	//display startup message
	lcd_clr();							//clear lcd
	lcd_goto(0);						//set the lcd cursor to location 0
	send_string("Cytron Tech.");		//display "Cytron Tech."
	lcd_goto(20);						//set the lcd cursor to location 20
	send_string("PR22");				//display "PR22"

	delay(200000);						//delay for certain period

	mode = 1;							//set default mode to 1

	while(1)							//infinite loop
	{
		lcd_clr();						//clear lcd
		lcd_goto(0);					//set the lcd cursor to location 0
		send_string("Sensor:");			//display "Sensor:"
		lcd_goto(20);					//set the lcd cursor to location 20
		send_string("OK");				//display "OK"

		while(BUTTON3)					//while button3 (ok) is pressed
		{
			if(!BUTTON1)				//if button1 (decrease) is pressed
			{
				//prevent the program to decrease the mode to lower than 1
				if(mode > 1)
					mode--;
			}
			else if(!BUTTON2)			//else if button2 (increase) is pressed
			{
				//prevent the program to increase the mode to higher than 3
				if(mode < 3)
					mode++;
			}

			//display mode on LCD
			lcd_goto(8);				//set the lcd cursor to location 8
			switch(mode)
			{
				case 1	:	send_string("HMC6352");		//display "HMC6352"
							break;

				case 2	:	send_string("AD7746 ");		//display "AD7746"
							break;

				case 3	:	send_string("SCP1000");		//display "SCP1000"
							break;
			}

			delay(30000);				//delay for certain period so user can increase/decrease
										//the mode continuously by pressing the button
		}

		delay(10000);					//delay for certain period to debounce
		while(!BUTTON3);				//hold program until button3 (ok) is released
		delay(10000);					//delay for certain period to debounce

		switch(mode)
		{
			case 1	:	mode1();		//mode 1 is selected (HMC6352 Compass Module)
						break;

			case 2	:	mode2();		//mode 2 is selected (AD7746 Capacitive Sensor)
						break;

			case 3	:	mode3();		//mode 3 is selected (SCP1000-D01 Barometric)
						break;
		}
	}
}

//	functions
//==========================================================================
void mode1(void)
{
	unsigned int result;
	unsigned char submode = 1;

	lcd_clr();						//clear LCD
	while(1)						//infinite loop
	{
		lcd_goto(20);				//set lcd cursor to location 20
		send_string("OK");			//display "OK"

		if(!BUTTON1)				//if button1 (decrease) is pressed
		{
			//prevent the program to decrease the submode to lower than 1
			if(submode > 1)
				submode--;
		}
		else if(!BUTTON2)			//else if button2 (increase) is pressed
		{
			//prevent the program to increase the submode to higher than 4
			if(submode < 4)
				submode++;
		}

		//display submode
		lcd_goto(0);				//set the lcd cursor to location 0
		switch(submode)
		{
			case 1	:	send_string("Heading Output?");		//display "Heading Output?"
						break;

			case 2	:	send_string("Calibration?   ");		//display "Calibration?   "
						break;

			case 3	:	send_string("Reset Offset?  ");		//display "Reset Offset?  "
						break;

			case 4	:	send_string("Exit?          ");		//display "Exit?          "
						break;
		}

		if(!BUTTON3)				//if button3 (ok) is pressed
		{
			delay(10000);			//delay for certain period to debounce
			while(!BUTTON3);		//hold program until button3 is released
			delay(10000);			//delay for certain period to debounce

			lcd_clr();				//clear lcd
			lcd_goto(0);			//set lcd cursor to location 0

			switch(submode)
			{
				case 1	:	//display heading output

							send_string("Heading:");			//display "Heading:"
							lcd_goto(20);						//set lcd cursor to location 20
							send_string("Exit");				//display "Exit"

							//update bridge offset (compass)
							i2c_master_data[0] = 'O';
							i2c_start(0x42, 1, write);			//send '0' to slave (compass)
							delay(10000);						//delay for certain period

							while(BUTTON3)						//loop while button3 is released
							{
								//send read command
								i2c_master_data[0] = 'A';
								i2c_start(0x42, 1, write);		//send 'A' to slave (compass)
								delay(10000);					//delay for certain period

								i2c_start(0x42, 2, read);		//read data from slave (compass)

								lcd_goto(9);					//set lcd cursor to location 20

								//combine 2 bytes to form an integer
								result = (i2c_master_rcvb[0] << 8) + i2c_master_rcvb[1];

								// 0.00 <= result <= 359.9
								send_char('0' + (result % 10000) / 1000);	//display 'X'00.0
								send_char('0' + (result % 1000) / 100);		//display 0'X'0.0
								send_char('0' + (result % 100) / 10);		//display 00'X'.0
								send_char('.');								//display '.'
								send_char('0' + (result % 10));				//display 000.'X'
								delay(10000);					//delay for certain period
							}

							delay(10000);						//delay for certain period to debounce
							while(!BUTTON3);					//wait until button3 is released
							delay(10000);						//delay for certain period to debounce

							lcd_clr();							//clear lcd
							break;

				case 2	:	//calibration

							lcd_clr();							//clear lcd
							lcd_goto(0);						//set the lcd cursor to location 0
							send_string("Calibrating...");		//display "Calibrating..."
							lcd_goto(20);						//set the lcd cursor to location 20
							send_string("Exit");				//display "Exit"

							//send 'calibration' command
							i2c_master_data[0] = 'C';
							i2c_start(0x42, 1, write);			//send 'C' to slave (compass)

							while(BUTTON3);						//wait until button3 is pressed
							delay(10000);
							while(!BUTTON3);					//wait until button3 is released
							delay(10000);

							//send 'exit calibration' command
							i2c_master_data[0] = 'E';
							i2c_start(0x42, 1, write);			//send 'E' to slave (compass)

							lcd_clr();							//clear lcd
							lcd_goto(0);						//set the lcd cursor to location 0
							send_string("Done");				//display "Done"
							delay(200000);						//delay for certain period
							break;

				case 3	:	//reset compass offset (discard calibration)

							//send 'write eeprom' command
							i2c_master_data[0] = 'w';
							i2c_master_data[1] = 0x01;			//x_offset high byte
							i2c_master_data[2] = 0;				//clear
							i2c_start(0x42, 3, write);			//send 'w', 0x01 and 0 to slave (compass)
							delay(10000);

							i2c_master_data[1] = 0x02;			//x_offset low byte
							i2c_start(0x42, 3, write);			//send 'w', 0x02 and 0 to slave (compass)
							delay(10000);						//delay for certain period

							i2c_master_data[1] = 0x03;			//y_offset high byte
							i2c_start(0x42, 3, write);			//send 'w', 0x03 and 0 to slave (compass)
							delay(10000);						//delay for certain period

							i2c_master_data[1] = 0x04;			//y_offset low byte
							i2c_start(0x42, 3, write);			//send 'w', 0x04 and 0 to slave (compass)

							lcd_clr();							//clear lcd
							lcd_goto(0);						//set the lcd cursor to location 0
							send_string("Done");				//display "Done"
							delay(200000);						//delay for certain period
							break;

				case 4	:	//exit mode 1

							return;

				default	:	break;
			}
		}
		delay(30000);				//delay for certain period so user can increase/decrease
									//the submode continuously by pressing the button
	}
}

void mode2(void)
{
	unsigned char i;
	unsigned char temperature;
	unsigned int capacitance;
	unsigned long capacitance_raw, temperature_raw;

	lcd_goto(20);							//set lcd cursor to location 20
	send_string("Calibrating...  ");		//display "Calibrating...  "

	//clear all variables
	for(i = 0; i < 7; i++)
		i2c_master_data[i] = i2c_master_rcvb[i] = 0;

	i2c_master_data[5] = 0b10000000;		//address = 0x0B (CAP DAC A)

	//************************************************************
	//**************Channel 1 is selected by default**************
	//************************************************************

	//Configure sensing module
	//after each data sent, the address register of sensing module will be incremented
	//by 1 automatically, so user does not required to specify the address of following
	//data to be sent
	i2c_master_data[0] = 0x07;				//starting address of data to be sent = 0x07
	i2c_master_data[1] = 0b10000000;		//address = 0x07 (CAP SET-UP)

	/*if channel 2 is selected, replace with the following code
	i2c_master_data[1] = 0b11000000;		//address = 0x07 (CAP SET-UP)
	*/

	i2c_master_data[2] = 0b10000001;		//address = 0x08 (VT SET-UP)
	i2c_master_data[3] = 0b00001011;		//address = 0x09 (EXC SET-UP)

	/*if channel 2 is selected, replace with the following code
	i2c_master_data[3] = 0b00100011;		//address = 0x09 (EXC SET-UP)
	*/

	i2c_master_data[4] = 0b00010001;		//address = 0x0A (CONFIGURATION)

	//Calibration
	//before taking any value, the module must be calibrated without any capacitor connected
	//to it, for taking air capacitance as zero scale in program
	do
	{
		i2c_start(0x90, 6, write);

		do
			i2c_start(0x90, 1, read);
		while(i2c_master_rcvb[0] != 0);		//continue to poll until data is ready

		i2c_start(0x90, 4, read);			//read capacitance raw value from module (for calibration)

		if(i2c_master_data[5] < 0xFF)		//overflow did not occur
		{									//continue to calibrate
			if(i2c_master_rcvb[1] != 0)
				i2c_master_data[5]++;		//address = 0x0B (CAP DAC A)
		}
		else								//overflow occured (calibration fail)
		{
			lcd_clr();						//clear lcd
			lcd_goto(0);					//set the lcd cursor to location 0
			send_string("Calibration Fail");//display "Calibration Fail"
			delay(200000);					//delay for certain period
			return;							//quit mode 2
		}
	} while(i2c_master_rcvb[1] != 0);
	//end of calibration

	//display result
	lcd_clr();								//clear lcd
	lcd_goto(0);							//set the lcd cursor to location 0
	send_string("Cap.:");					//display "Cap.:"
	lcd_goto(20);							//set the lcd cursor to location 20
	send_string("Tem.:");					//display "Tem.:"

	while(BUTTON3)							//hold program until button3 is pushed
	{
		//read data from sensing module

		do
			i2c_start(0x90, 1, read);
		while(i2c_master_rcvb[0] != 0);		//continue to poll until data is ready

		i2c_start(0x90, 7, read);			//read raw values (tem. & cap.) from module

		/*
		data read from sensing module
		(address)
			0x00			0x01			0x02			0x03			0x04			0x05			0x06

		(data)
		/	status	\/	capacitive	\/	capacitive	\/	capacitive	\/	v/t			\/	v/t			\/	v/t			\
		\			/\	high byte	/\	middle byte	/\	low byte	/\	high byte	/\	middle byte	/\	low byte	/
		*/

		//conversion to range (0 - 8.192pF)
		capacitance_raw = i2c_master_rcvb[1];
		capacitance_raw <<= 8;
		capacitance_raw += i2c_master_rcvb[2];
		capacitance_raw <<= 8;
		capacitance_raw += i2c_master_rcvb[3];
		capacitance = capacitance_raw / 2048;

		//conversion to degree (celcius)
		temperature_raw = i2c_master_rcvb[4];
		temperature_raw <<= 8;
		temperature_raw += i2c_master_rcvb[5];
		temperature_raw <<= 8;
		temperature_raw += i2c_master_rcvb[6];
		temperature = (temperature_raw / 2048) - 4096;

		//display capacitance in lcd
		lcd_goto(6);									//set lcd cursor to location 6
		if(capacitance >= 8191)							//error in reading (capacitance too large or short circuit)
			send_string("Saturated");					//display "Error   "
		else
		{
			send_char('0' + capacitance / 1000);			//display 'X'.000
			send_char('.');									//display '.'
			send_char('0' + (capacitance % 1000) / 100);	//display 0.'X'00
			send_char('0' + (capacitance % 100) / 10);		//display 0.0'X'0
			send_char('0' + (capacitance % 10));			//display 0.00'X'
			send_string("pF  ");							//display "pF  "
		}

		//display temperature in lcd
		lcd_goto(26);									//set lcd cursor to location 26
		send_char('0' + (temperature % 100) / 10);		//display ten
		send_char('0' + (temperature % 10));			//display one
		send_char('C');

		delay(10000);									//delay for certain period
	}

	delay(10000);										//delay for certain period to debounce
	while(!BUTTON3);									//hold program until button3 is released
	delay(10000);										//delay for certain period to debounce
}

void mode3(void)
{
	unsigned int temp;
	unsigned int temperature;
	unsigned int temperature_raw;
	unsigned long pressure;
	unsigned long pressure_raw;

	spi_baro(0x03, 0x09, write);						//write 0x09 (high speed continuous) to register OPERATION (0x03)
	lcd_clr();											//clear lcd
	lcd_goto(0);										//set lcd cursor to location 0
	send_string("Pre.:");								//display "Pre.:"
	lcd_goto(20);										//set lcd cursor to location 20
	send_string("Tem.:");								//display "Tem.:"

	while(BUTTON3)										//hold program until button3 is pushed
	{
		do
			spi_baro(0x07, 0, read);
		while(!(0b00100000 & spi_baro_rcvb[0]));		//continue to poll until data is ready
														//DRDY (bit 5 in STATUS (0x07)) will be set
		//prepare raw pressure value
		spi_baro(0x1F, 0, read);						//read MSB from DATARD8 (0x1F)
		pressure_raw = (0b00000111 & spi_baro_rcvb[0]); //bit 2,1,0 (MSB of raw data)
		pressure_raw <<= 16;
		spi_baro(0x20, 0, read);						//read DATARD16 (0x20) (16 bits of LSB)
		pressure_raw += ((spi_baro_rcvb[0] << 8) + spi_baro_rcvb[1]);

		//prepare raw temperature value
		spi_baro(0x21, 0, read);						//read TEMPOUT (0x21) (14 bits)
		temperature_raw = (spi_baro_rcvb[0] << 8) + spi_baro_rcvb[1];

		//display pressure
		lcd_goto(6);
		pressure = pressure_raw >> 2;					//divide pressure_raw by 4
		temp = pressure / 1000;
		send_char('0' + (temp % 1000) / 100);			//display 'X'00.000
		send_char('0' + (temp % 100) / 10);				//display 0'X'0.000
		send_char('0' + (temp % 10));					//display 00'X'.000
		send_char('.');									//display '.'
		temp = pressure % 1000;
		send_char('0' + temp / 100);					//display 000.'X'00
		send_char('0' + (temp % 100) / 10);				//display 000.0'X'0
		send_char('0' + (temp % 10));					//display 000.00'X'
		send_string("kPa");								//display "kPa"

		//display temperature
		lcd_goto(26);									//set lcd cursor to location 26
		temperature = temperature_raw >> 1;				//divide temperature raw by 2

		if(temperature & 0x1000)						//if negative value
		{
			temperature = (~temperature) + 1;			//change to positive value from 2's complement
			send_char('-');
		}
		else											//else positive value
			send_char('+');

		//display result (temperature)
		send_char('0' + temperature / 1000);			//display 'X'00.0
		send_char('0' + (temperature % 1000) / 100);	//display 0'X'0.0
		send_char('0' + (temperature % 100) / 10);		//display 00'X'.0
		send_char('.');									//display '.'
		send_char('0' + temperature % 10);				//display 000.'X'
		send_char('C');									//display 'C'
	}

	delay(10000);										//delay for certain period to debounce
	while(!BUTTON3);									//hold program until button3 is released
	spi_baro(0x03, 0, write);							//set barometric module to standby mode
	delay(10000);										//delay for certain period
}

void delay(unsigned long data)			//delay function, the delay time
{										//depend on the given value
	for( ;data>0;data--);
}

void send_config(unsigned char data)	//send lcd configuration
{
	RS=0;								//set lcd to configuration mode
	LCD_DATA=data;						//lcd data port = data
	E=1;								//pulse e to confirm the data
	delay(50);
	E=0;
	delay(50);
}

void send_char(unsigned char data)		//send lcd character
{
	RS=1;								//set lcd to display mode
	LCD_DATA=data;						//lcd data port = data
	E=1;								//pulse e to confirm the data
	delay(10);
	E=0;
	delay(10);
}

void lcd_goto(unsigned char data)		//set the location of the lcd cursor
{										//if the given value is (0-15) the
 	if(data<16)							//cursor will be at the upper line
	{									//if the given value is (20-35) the
	 	send_config(0x80+data);			//cursor will be at the lower line
	}									//location of the lcd cursor(2X16):
	else								// -----------------------------------------------------
	{									// | |00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15| |
	 	data=data-20;					// | |20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35| |
		send_config(0xc0+data);			// -----------------------------------------------------
	}
}

void lcd_clr(void)						//clear the lcd
{
 	send_config(0x01);
	delay(600);
}

void send_string(const char *s)			//send a string to display in the lcd
{
  	while (s && *s)send_char (*s++);
}

void i2c_start(unsigned char address, unsigned char size, unsigned operation)
{
	unsigned char i;

	SEN = 1;								//send START
	while(!SSPIF);							//hold program until progress is completed (SSPIF will be set)
	SSPIF = 0;								//clear flagbit caused by START
	SSPBUF = address + operation;			//send addres to slave (operation = 1 if read, 0 if write)
	while(!SSPIF);							//hold program until data is transmitted (SSPIF will be set if completed)
	SSPIF = 0;								//clear flagbit caused by transmission
	if(operation == write)					//if write operaion
	{
		for(i = 0; i < size; i++)
		{
			SSPBUF = i2c_master_data[i];	//send data[i]
			while(!SSPIF);					//hold program until transmission is completed
			SSPIF = 0;						//clear flagbit caused by transmission
		}
		PEN = 1;							//after all data is transmitted, send STOP
		while(!SSPIF);						//hold program until progress is completed (SSPIF will be set)
		SSPIF = 0;							//clear flagbit caused by STOP
	}
	else if(operation == read)				//else read operation
	{
		for(i = 0; i < size; i++)
		{
			RCEN = 1;						//enable reception
			while(!SSPIF);					//hold program until progress is completed (SSPIF will be set)
			SSPIF = 0;						//clear flagbit caused by reception
			i2c_master_rcvb[i] = SSPBUF;	//store data in rcvb[i]
			if(i == (size - 1))				//if last byte, send NACK
				ACKDT = 1;
			else							//else send ACK
				ACKDT = 0;
			ACKEN = 1;						//send acknowledgement
			while(!SSPIF);					//hold program until progress is completed (SSPIF will be set)
			SSPIF = 0;						//clear flagbit caused by acknowledgement
		}
		PEN = 1;							//after all data is transmitted, send STOP
		while(!SSPIF);						//hold program until progress is completed (SSPIF will be set)
		SSPIF = 0;							//clear flagbit caused by STOP
	}
}

void spi_baro(unsigned char register_address, unsigned char data, unsigned operation)
{
	CSB = 0;								//enable slave
	spi_start(((register_address << 1) + !operation) << 1);

	if(operation == write)					//write operation
		spi_start(data);
	else									//read operation
	{
		//for read mode, send bulk data
		spi_baro_rcvb[0] = spi_start(0);

		if((register_address == 0x20) || (register_address == 0x21))	//if 16 bit wide (register 0x20 and 0x21)
			//for reading 16 bit register,spi_baro_rcvb[0] = MSbyte, spi_baro_rcvb[1] = LSbyte
			spi_baro_rcvb[1] = spi_start(0);
	}
	CSB = 1;								//disable slave
}

unsigned char spi_start(unsigned char data)
{
	unsigned char rcvb = 0;
	unsigned char i;

	for(i = 0; i < 8; i ++)
	{
		SCL = 0;							//hold clock low
		delay(100);							//delay for certain period
		SDO = (data & 0x80)? 1: 0;			//shift out data bit near rising edge
		rcvb += SDI;						//shift in data bit near rising edge
		data <<= 1;
		if(i < 7)
			rcvb <<= 1;
		SCL = 1;							//hold clock high
		delay(100);							//delay for certain period
	}
	return rcvb;							//return read data
}
