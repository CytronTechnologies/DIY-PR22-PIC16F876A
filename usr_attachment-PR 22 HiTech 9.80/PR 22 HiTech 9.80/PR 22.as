opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F876A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 13 "C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
	psect config,class=CONFIG,delta=2 ;#
# 13 "C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
	dw 0x3F32 ;#
	FNCALL	_main,_send_config
	FNCALL	_main,_lcd_clr
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_send_string
	FNCALL	_main,_delay
	FNCALL	_main,_mode1
	FNCALL	_main,_mode2
	FNCALL	_main,_mode3
	FNCALL	_mode3,_spi_baro
	FNCALL	_mode3,_lcd_clr
	FNCALL	_mode3,_lcd_goto
	FNCALL	_mode3,_send_string
	FNCALL	_mode3,___lldiv
	FNCALL	_mode3,___lwmod
	FNCALL	_mode3,___lwdiv
	FNCALL	_mode3,_send_char
	FNCALL	_mode3,___llmod
	FNCALL	_mode3,_delay
	FNCALL	_mode2,_lcd_goto
	FNCALL	_mode2,_send_string
	FNCALL	_mode2,_i2c_start
	FNCALL	_mode2,_lcd_clr
	FNCALL	_mode2,_delay
	FNCALL	_mode2,___lwdiv
	FNCALL	_mode2,_send_char
	FNCALL	_mode2,___lwmod
	FNCALL	_mode2,___awmod
	FNCALL	_mode2,___awdiv
	FNCALL	_mode1,_lcd_clr
	FNCALL	_mode1,_lcd_goto
	FNCALL	_mode1,_send_string
	FNCALL	_mode1,_delay
	FNCALL	_mode1,_i2c_start
	FNCALL	_mode1,___lwmod
	FNCALL	_mode1,___lwdiv
	FNCALL	_mode1,_send_char
	FNCALL	_spi_baro,_spi_start
	FNCALL	_send_string,_send_char
	FNCALL	_lcd_goto,_send_config
	FNCALL	_lcd_clr,_send_config
	FNCALL	_lcd_clr,_delay
	FNCALL	_spi_start,_delay
	FNCALL	_send_char,_delay
	FNCALL	_send_config,_delay
	FNROOT	_main
	global	_i2c_master_data
	global	_i2c_master_rcvb
	global	_mode
	global	_spi_baro_rcvb
	global	_CCP1CON
psect	text378,local,class=CODE,delta=2
global __ptext378
__ptext378:
_CCP1CON	set	23
	global	_CCP2CON
_CCP2CON	set	29
	global	_CCPR1L
_CCPR1L	set	21
	global	_CCPR2L
_CCPR2L	set	27
	global	_PORTB
_PORTB	set	6
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_T2CON
_T2CON	set	18
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RA5
_RA5	set	45
	global	_RC0
_RC0	set	56
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
	global	_RC7
_RC7	set	63
	global	_SSPIF
_SSPIF	set	99
	global	_ADCON1
_ADCON1	set	159
	global	_PR2
_PR2	set	146
	global	_SSPADD
_SSPADD	set	147
	global	_SSPCON2
_SSPCON2	set	145
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_ACKDT
_ACKDT	set	1165
	global	_ACKEN
_ACKEN	set	1164
	global	_PEN
_PEN	set	1162
	global	_RCEN
_RCEN	set	1163
	global	_SEN
_SEN	set	1160
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_19:	
	retlw	67	;'C'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	98	;'b'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_20:	
	retlw	67	;'C'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	98	;'b'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	70	;'F'
	retlw	97	;'a'
	retlw	105	;'i'
	retlw	108	;'l'
	retlw	0
psect	strings
	
STR_12:	
	retlw	69	;'E'
	retlw	120	;'x'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	63	;'?'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_10:	
	retlw	67	;'C'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	98	;'b'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	63	;'?'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_11:	
	retlw	82	;'R'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	102	;'f'
	retlw	102	;'f'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	63	;'?'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_9:	
	retlw	72	;'H'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	112	;'p'
	retlw	117	;'u'
	retlw	116	;'t'
	retlw	63	;'?'
	retlw	0
psect	strings
	
STR_15:	
	retlw	67	;'C'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	98	;'b'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_1:	
	retlw	67	;'C'
	retlw	121	;'y'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_23:	
	retlw	83	;'S'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_13:	
	retlw	72	;'H'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_6:	
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	55	;'7'
	retlw	55	;'7'
	retlw	52	;'4'
	retlw	54	;'6'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_7:	
	retlw	83	;'S'
	retlw	67	;'C'
	retlw	80	;'P'
	retlw	49	;'1'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_5:	
	retlw	72	;'H'
	retlw	77	;'M'
	retlw	67	;'C'
	retlw	54	;'6'
	retlw	51	;'3'
	retlw	53	;'5'
	retlw	50	;'2'
	retlw	0
psect	strings
	
STR_3:	
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	115	;'s'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_25:	
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	46	;'.'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_22:	
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	46	;'.'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_21:	
	retlw	67	;'C'
	retlw	97	;'a'
	retlw	112	;'p'
	retlw	46	;'.'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_24:	
	retlw	112	;'p'
	retlw	70	;'F'
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	50	;'2'
	retlw	50	;'2'
	retlw	0
psect	strings
	
STR_17:	
	retlw	68	;'D'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_14:	
	retlw	69	;'E'
	retlw	120	;'x'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	0
psect	strings
	
STR_27:	
	retlw	107	;'k'
	retlw	80	;'P'
	retlw	97	;'a'
	retlw	0
psect	strings
	
STR_4:	
	retlw	79	;'O'
	retlw	75	;'K'
	retlw	0
psect	strings
STR_16	equ	STR_14+0
STR_18	equ	STR_17+0
STR_8	equ	STR_4+0
STR_26	equ	STR_22+0
	file	"PR 22.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_i2c_master_data:
       ds      7

_i2c_master_rcvb:
       ds      7

_mode:
       ds      1

_spi_baro_rcvb:
       ds      2

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+011h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_send_config
?_send_config:	; 0 bytes @ 0x0
	global	?_lcd_clr
?_lcd_clr:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_send_string
?_send_string:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_mode1
?_mode1:	; 0 bytes @ 0x0
	global	?_mode2
?_mode2:	; 0 bytes @ 0x0
	global	?_mode3
?_mode3:	; 0 bytes @ 0x0
	global	?_i2c_start
?_i2c_start:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_spi_start
?_spi_start:	; 1 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___llmod
?___llmod:	; 4 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	i2c_start@size
i2c_start@size:	; 1 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	delay@data
delay@data:	; 4 bytes @ 0x0
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	ds	1
	global	i2c_start@operation
i2c_start@operation:	; 2 bytes @ 0x1
	ds	1
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_i2c_start
??_i2c_start:	; 0 bytes @ 0x3
	ds	1
	global	??_delay
??_delay:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	i2c_start@address
i2c_start@address:	; 1 bytes @ 0x5
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x6
	global	i2c_start@i
i2c_start@i:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x6
	ds	1
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x7
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x7
	ds	1
	global	??_send_config
??_send_config:	; 0 bytes @ 0x8
	global	??_send_char
??_send_char:	; 0 bytes @ 0x8
	global	??_spi_start
??_spi_start:	; 0 bytes @ 0x8
	global	??___llmod
??___llmod:	; 0 bytes @ 0x8
	global	??___lldiv
??___lldiv:	; 0 bytes @ 0x8
	global	send_config@data
send_config@data:	; 1 bytes @ 0x8
	global	send_char@data
send_char@data:	; 1 bytes @ 0x8
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x8
	ds	1
	global	??_lcd_clr
??_lcd_clr:	; 0 bytes @ 0x9
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x9
	global	??_send_string
??_send_string:	; 0 bytes @ 0x9
	global	spi_start@data
spi_start@data:	; 1 bytes @ 0x9
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x9
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x9
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x9
	ds	1
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0xA
	global	lcd_goto@data
lcd_goto@data:	; 1 bytes @ 0xA
	global	send_string@s
send_string@s:	; 1 bytes @ 0xA
	global	spi_start@rcvb
spi_start@rcvb:	; 1 bytes @ 0xA
	ds	1
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0xB
	global	spi_start@i
spi_start@i:	; 1 bytes @ 0xB
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xB
	ds	1
	global	??_spi_baro
??_spi_baro:	; 0 bytes @ 0xC
	ds	1
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xD
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_mode1
??_mode1:	; 0 bytes @ 0x0
	global	?_spi_baro
?_spi_baro:	; 0 bytes @ 0x0
	global	spi_baro@data
spi_baro@data:	; 1 bytes @ 0x0
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	global	spi_baro@operation
spi_baro@operation:	; 2 bytes @ 0x1
	ds	1
	global	mode1@result
mode1@result:	; 2 bytes @ 0x2
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	ds	1
	global	spi_baro@register_address
spi_baro@register_address:	; 1 bytes @ 0x3
	ds	1
	global	??_mode2
??_mode2:	; 0 bytes @ 0x4
	global	??_mode3
??_mode3:	; 0 bytes @ 0x4
	global	mode1@submode
mode1@submode:	; 1 bytes @ 0x4
	ds	4
	global	mode3@temperature_raw
mode3@temperature_raw:	; 2 bytes @ 0x8
	ds	1
	global	mode2@capacitance_raw
mode2@capacitance_raw:	; 4 bytes @ 0x9
	ds	1
	global	mode3@pressure_raw
mode3@pressure_raw:	; 4 bytes @ 0xA
	ds	3
	global	mode2@temperature_raw
mode2@temperature_raw:	; 4 bytes @ 0xD
	ds	1
	global	mode3@pressure
mode3@pressure:	; 4 bytes @ 0xE
	ds	3
	global	mode2@temperature
mode2@temperature:	; 1 bytes @ 0x11
	ds	1
	global	mode2@i
mode2@i:	; 1 bytes @ 0x12
	global	mode3@temp
mode3@temp:	; 2 bytes @ 0x12
	ds	1
	global	mode2@capacitance
mode2@capacitance:	; 2 bytes @ 0x13
	ds	1
	global	mode3@temperature
mode3@temperature:	; 2 bytes @ 0x14
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x16
	ds	1
;;Data sizes: Strings 222, constant 0, data 0, bss 17, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     23      40
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___llmod	unsigned long  size(1) Largest target is 2
;;		 -> spi_baro_rcvb(BANK0[2]), 
;;
;; ?___lldiv	unsigned long  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 2
;;		 -> spi_baro_rcvb(BANK0[2]), 
;;
;; send_string@s	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_27(CODE[4]), STR_26(CODE[6]), STR_25(CODE[6]), STR_24(CODE[5]), 
;;		 -> STR_23(CODE[10]), STR_22(CODE[6]), STR_21(CODE[6]), STR_20(CODE[17]), 
;;		 -> STR_19(CODE[17]), STR_18(CODE[5]), STR_17(CODE[5]), STR_16(CODE[5]), 
;;		 -> STR_15(CODE[15]), STR_14(CODE[5]), STR_13(CODE[9]), STR_12(CODE[16]), 
;;		 -> STR_11(CODE[16]), STR_10(CODE[16]), STR_9(CODE[16]), STR_8(CODE[3]), 
;;		 -> STR_7(CODE[8]), STR_6(CODE[8]), STR_5(CODE[8]), STR_4(CODE[3]), 
;;		 -> STR_3(CODE[8]), STR_2(CODE[5]), STR_1(CODE[13]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _mode3->_spi_baro
;;   _mode3->___lldiv
;;   _mode3->___lwdiv
;;   _mode2->___lwdiv
;;   _mode1->___lwdiv
;;   _spi_baro->_spi_start
;;   _send_string->_send_char
;;   _lcd_goto->_send_config
;;   _lcd_clr->_send_config
;;   _spi_start->_delay
;;   _send_char->_delay
;;   _send_config->_delay
;;   ___awdiv->___awmod
;;   ___lwdiv->___lwmod
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_mode3
;;   _mode3->_spi_baro
;;   _mode2->___awdiv
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0    5606
;;                                             22 BANK0      1     1      0
;;                        _send_config
;;                            _lcd_clr
;;                           _lcd_goto
;;                        _send_string
;;                              _delay
;;                              _mode1
;;                              _mode2
;;                              _mode3
;; ---------------------------------------------------------------------------------
;; (1) _mode3                                               18    18      0    1810
;;                                              4 BANK0     18    18      0
;;                           _spi_baro
;;                            _lcd_clr
;;                           _lcd_goto
;;                        _send_string
;;                            ___lldiv
;;                            ___lwmod
;;                            ___lwdiv
;;                          _send_char
;;                            ___llmod
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _mode2                                               17    17      0    1999
;;                                              4 BANK0     17    17      0
;;                           _lcd_goto
;;                        _send_string
;;                          _i2c_start
;;                            _lcd_clr
;;                              _delay
;;                            ___lwdiv
;;                          _send_char
;;                            ___lwmod
;;                            ___awmod
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (1) _mode1                                                5     5      0    1283
;;                                              0 BANK0      5     5      0
;;                            _lcd_clr
;;                           _lcd_goto
;;                        _send_string
;;                              _delay
;;                          _i2c_start
;;                            ___lwmod
;;                            ___lwdiv
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (2) _spi_baro                                             6     3      3     293
;;                                             12 COMMON     2     2      0
;;                                              0 BANK0      4     1      3
;;                          _spi_start
;; ---------------------------------------------------------------------------------
;; (2) _send_string                                          2     2      0     134
;;                                              9 COMMON     2     2      0
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (2) _lcd_goto                                             2     2      0     156
;;                                              9 COMMON     2     2      0
;;                        _send_config
;; ---------------------------------------------------------------------------------
;; (2) _lcd_clr                                              0     0      0     112
;;                        _send_config
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _spi_start                                            4     4      0     161
;;                                              8 COMMON     4     4      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _send_char                                            1     1      0      67
;;                                              8 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _send_config                                          1     1      0      67
;;                                              8 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___lldiv                                             14     6      8     162
;;                                              0 COMMON    14     6      8
;; ---------------------------------------------------------------------------------
;; (2) ___llmod                                             10     2      8     159
;;                                              0 COMMON    10     2      8
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              7 COMMON     5     1      4
;;                                              0 BANK0      4     4      0
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     159
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     162
;;                                              6 COMMON     8     4      4
;;                            ___lwmod (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _i2c_start                                            7     4      3     268
;;                                              0 COMMON     7     4      3
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                8     4      4      45
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _send_config
;;     _delay
;;   _lcd_clr
;;     _send_config
;;       _delay
;;     _delay
;;   _lcd_goto
;;     _send_config
;;       _delay
;;   _send_string
;;     _send_char
;;       _delay
;;   _delay
;;   _mode1
;;     _lcd_clr
;;       _send_config
;;         _delay
;;       _delay
;;     _lcd_goto
;;       _send_config
;;         _delay
;;     _send_string
;;       _send_char
;;         _delay
;;     _delay
;;     _i2c_start
;;     ___lwmod
;;     ___lwdiv
;;       ___lwmod (ARG)
;;     _send_char
;;       _delay
;;   _mode2
;;     _lcd_goto
;;       _send_config
;;         _delay
;;     _send_string
;;       _send_char
;;         _delay
;;     _i2c_start
;;     _lcd_clr
;;       _send_config
;;         _delay
;;       _delay
;;     _delay
;;     ___lwdiv
;;       ___lwmod (ARG)
;;     _send_char
;;       _delay
;;     ___lwmod
;;     ___awmod
;;     ___awdiv
;;       ___awmod (ARG)
;;   _mode3
;;     _spi_baro
;;       _spi_start
;;         _delay
;;     _lcd_clr
;;       _send_config
;;         _delay
;;       _delay
;;     _lcd_goto
;;       _send_config
;;         _delay
;;     _send_string
;;       _send_char
;;         _delay
;;     ___lldiv
;;     ___lwmod
;;     ___lwdiv
;;       ___lwmod (ARG)
;;     _send_char
;;       _delay
;;     ___llmod
;;     _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0      36       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     17      28       5       50.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      3A      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 66 in file "C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_send_config
;;		_lcd_clr
;;		_lcd_goto
;;		_send_string
;;		_delay
;;		_mode1
;;		_mode2
;;		_mode3
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
	line	66
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	68
	
l3555:	
;PR22.c: 68: TRISB = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	69
	
l3557:	
;PR22.c: 69: TRISC = 0b00111000;
	movlw	(038h)
	movwf	(135)^080h	;volatile
	line	70
	
l3559:	
;PR22.c: 70: TRISA = 0b00010111;
	movlw	(017h)
	movwf	(133)^080h	;volatile
	line	73
;PR22.c: 73: SSPBUF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(19)	;volatile
	line	74
	
l3561:	
;PR22.c: 74: SSPSTAT = 0b11000000;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(148)^080h	;volatile
	line	75
	
l3563:	
;PR22.c: 75: SSPCON = 0b00111000;
	movlw	(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	76
;PR22.c: 76: SSPCON2 = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(145)^080h	;volatile
	line	77
	
l3565:	
;PR22.c: 77: SSPADD = 0x32;
	movlw	(032h)
	movwf	(147)^080h	;volatile
	line	78
	
l3567:	
;PR22.c: 78: SSPIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	81
	
l3569:	
;PR22.c: 81: RC6 = 1;
	bsf	(62/8),(62)&7
	line	82
	
l3571:	
;PR22.c: 82: RC7 = 1;
	bsf	(63/8),(63)&7
	line	83
	
l3573:	
;PR22.c: 83: RA3 = 1;
	bsf	(43/8),(43)&7
	line	86
	
l3575:	
;PR22.c: 86: ADCON1 = 0b00000110;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	89
	
l3577:	
;PR22.c: 89: send_config(0b00000001);
	movlw	(01h)
	fcall	_send_config
	line	90
	
l3579:	
;PR22.c: 90: send_config(0b00000010);
	movlw	(02h)
	fcall	_send_config
	line	91
	
l3581:	
;PR22.c: 91: send_config(0b00000110);
	movlw	(06h)
	fcall	_send_config
	line	92
	
l3583:	
;PR22.c: 92: send_config(0b00001100);
	movlw	(0Ch)
	fcall	_send_config
	line	93
	
l3585:	
;PR22.c: 93: send_config(0b00111000);
	movlw	(038h)
	fcall	_send_config
	line	96
	
l3587:	
;PR22.c: 96: CCP1CON = 0b00001100;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	97
	
l3589:	
;PR22.c: 97: CCP2CON = 0b00001100;
	movlw	(0Ch)
	movwf	(29)	;volatile
	line	98
	
l3591:	
;PR22.c: 98: PR2 = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	99
	
l3593:	
;PR22.c: 99: T2CON = 0b00000101;
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	100
	
l3595:	
;PR22.c: 100: CCPR2L = 50;
	movlw	(032h)
	movwf	(27)	;volatile
	line	101
	
l3597:	
;PR22.c: 101: CCPR1L = 0;
	clrf	(21)	;volatile
	line	104
	
l3599:	
;PR22.c: 104: lcd_clr();
	fcall	_lcd_clr
	line	105
	
l3601:	
;PR22.c: 105: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	106
	
l3603:	
;PR22.c: 106: send_string("Cytron Tech.");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_send_string
	line	107
	
l3605:	
;PR22.c: 107: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	108
	
l3607:	
;PR22.c: 108: send_string("PR22");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_send_string
	line	110
	
l3609:	
;PR22.c: 110: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	112
	
l3611:	
;PR22.c: 112: mode = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_mode)
	bsf	status,0
	rlf	(_mode),f
	goto	l3613
	line	114
;PR22.c: 114: while(1)
	
l527:	
	line	116
	
l3613:	
;PR22.c: 115: {
;PR22.c: 116: lcd_clr();
	fcall	_lcd_clr
	line	117
	
l3615:	
;PR22.c: 117: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	118
	
l3617:	
;PR22.c: 118: send_string("Sensor:");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_send_string
	line	119
	
l3619:	
;PR22.c: 119: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	120
	
l3621:	
;PR22.c: 120: send_string("OK");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_send_string
	line	122
;PR22.c: 122: while(RA2)
	goto	l3645
	
l529:	
	line	124
;PR22.c: 123: {
;PR22.c: 124: if(!RA0)
	btfsc	(40/8),(40)&7
	goto	u3991
	goto	u3990
u3991:
	goto	l530
u3990:
	line	127
	
l3623:	
;PR22.c: 125: {
;PR22.c: 127: if(mode > 1)
	movlw	(02h)
	subwf	(_mode),w
	skipc
	goto	u4001
	goto	u4000
u4001:
	goto	l3631
u4000:
	line	128
	
l3625:	
;PR22.c: 128: mode--;
	movlw	low(01h)
	subwf	(_mode),f
	goto	l3631
	
l531:	
	line	129
;PR22.c: 129: }
	goto	l3631
	line	130
	
l530:	
;PR22.c: 130: else if(!RA1)
	btfsc	(41/8),(41)&7
	goto	u4011
	goto	u4010
u4011:
	goto	l3631
u4010:
	line	133
	
l3627:	
;PR22.c: 131: {
;PR22.c: 133: if(mode < 3)
	movlw	(03h)
	subwf	(_mode),w
	skipnc
	goto	u4021
	goto	u4020
u4021:
	goto	l3631
u4020:
	line	134
	
l3629:	
;PR22.c: 134: mode++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_mode),f
	goto	l3631
	
l534:	
	goto	l3631
	line	135
	
l533:	
	goto	l3631
	line	138
	
l532:	
	
l3631:	
;PR22.c: 135: }
;PR22.c: 138: lcd_goto(8);
	movlw	(08h)
	fcall	_lcd_goto
	line	139
;PR22.c: 139: switch(mode)
	goto	l3641
	line	141
;PR22.c: 140: {
;PR22.c: 141: case 1 : send_string("HMC6352");
	
l536:	
	
l3633:	
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_send_string
	line	142
;PR22.c: 142: break;
	goto	l3643
	line	144
;PR22.c: 144: case 2 : send_string("AD7746 ");
	
l538:	
	
l3635:	
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_send_string
	line	145
;PR22.c: 145: break;
	goto	l3643
	line	147
;PR22.c: 147: case 3 : send_string("SCP1000");
	
l539:	
	
l3637:	
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_send_string
	line	148
;PR22.c: 148: break;
	goto	l3643
	line	149
	
l3639:	
;PR22.c: 149: }
	goto	l3643
	line	139
	
l535:	
	
l3641:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_mode),w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Bytes Cycles
; simple_byte    10     6 (average)
; direct_byte    31    22 (fixed)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l3633
	xorlw	2^1	; case 2
	skipnz
	goto	l3635
	xorlw	3^2	; case 3
	skipnz
	goto	l3637
	goto	l3643

	line	149
	
l537:	
	line	151
	
l3643:	
;PR22.c: 151: delay(30000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	075h
	movwf	(?_delay+1)
	movlw	030h
	movwf	(?_delay)

	fcall	_delay
	goto	l3645
	line	153
	
l528:	
	line	122
	
l3645:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u4031
	goto	u4030
u4031:
	goto	l529
u4030:
	goto	l3647
	
l540:	
	line	155
	
l3647:	
;PR22.c: 153: }
;PR22.c: 155: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	156
;PR22.c: 156: while(!RA2);
	goto	l541
	
l542:	
	
l541:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7
	goto	u4041
	goto	u4040
u4041:
	goto	l541
u4040:
	goto	l3649
	
l543:	
	line	157
	
l3649:	
;PR22.c: 157: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	159
;PR22.c: 159: switch(mode)
	goto	l3659
	line	161
;PR22.c: 160: {
;PR22.c: 161: case 1 : mode1();
	
l545:	
	
l3651:	
	fcall	_mode1
	line	162
;PR22.c: 162: break;
	goto	l3613
	line	164
;PR22.c: 164: case 2 : mode2();
	
l547:	
	
l3653:	
	fcall	_mode2
	line	165
;PR22.c: 165: break;
	goto	l3613
	line	167
;PR22.c: 167: case 3 : mode3();
	
l548:	
	
l3655:	
	fcall	_mode3
	line	168
;PR22.c: 168: break;
	goto	l3613
	line	169
	
l3657:	
;PR22.c: 169: }
	goto	l3613
	line	159
	
l544:	
	
l3659:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_mode),w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Bytes Cycles
; simple_byte    10     6 (average)
; direct_byte    31    22 (fixed)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l3651
	xorlw	2^1	; case 2
	skipnz
	goto	l3653
	xorlw	3^2	; case 3
	skipnz
	goto	l3655
	goto	l3613

	line	169
	
l546:	
	goto	l3613
	line	170
	
l549:	
	line	114
	goto	l3613
	
l550:	
	line	171
	
l551:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_mode3
psect	text379,local,class=CODE,delta=2
global __ptext379
__ptext379:

;; *************** function _mode3 *****************
;; Defined at:
;;		line 474 in file "C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  pressure        4   14[BANK0 ] unsigned long 
;;  pressure_raw    4   10[BANK0 ] unsigned long 
;;  temperature     2   20[BANK0 ] unsigned int 
;;  temp            2   18[BANK0 ] unsigned int 
;;  temperature_    2    8[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      14       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      18       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_spi_baro
;;		_lcd_clr
;;		_lcd_goto
;;		_send_string
;;		___lldiv
;;		___lwmod
;;		___lwdiv
;;		_send_char
;;		___llmod
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text379
	file	"C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
	line	474
	global	__size_of_mode3
	__size_of_mode3	equ	__end_of_mode3-_mode3
	
_mode3:	
	opt	stack 4
; Regs used in _mode3: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	481
	
l3489:	
;PR22.c: 475: unsigned int temp;
;PR22.c: 476: unsigned int temperature;
;PR22.c: 477: unsigned int temperature_raw;
;PR22.c: 478: unsigned long pressure;
;PR22.c: 479: unsigned long pressure_raw;
;PR22.c: 481: spi_baro(0x03, 0x09, 0);
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_mode3+0)+0
	movf	(??_mode3+0)+0,w
	movwf	(?_spi_baro)
	movlw	low(0)
	movwf	0+(?_spi_baro)+01h
	movlw	high(0)
	movwf	(0+(?_spi_baro)+01h)+1
	movlw	(03h)
	fcall	_spi_baro
	line	482
;PR22.c: 482: lcd_clr();
	fcall	_lcd_clr
	line	483
;PR22.c: 483: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	484
	
l3491:	
;PR22.c: 484: send_string("Pre.:");
	movlw	((STR_25-__stringbase))&0ffh
	fcall	_send_string
	line	485
	
l3493:	
;PR22.c: 485: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	486
;PR22.c: 486: send_string("Tem.:");
	movlw	((STR_26-__stringbase))&0ffh
	fcall	_send_string
	line	488
;PR22.c: 488: while(RA2)
	goto	l3549
	
l617:	
	goto	l3495
	line	490
;PR22.c: 489: {
;PR22.c: 490: do
	
l618:	
	line	491
	
l3495:	
;PR22.c: 491: spi_baro(0x07, 0, 1);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_spi_baro)
	movlw	low(01h)
	movwf	0+(?_spi_baro)+01h
	movlw	high(01h)
	movwf	(0+(?_spi_baro)+01h)+1
	movlw	(07h)
	fcall	_spi_baro
	line	492
	
l3497:	
;PR22.c: 492: while(!(0b00100000 & spi_baro_rcvb[0]));
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(_spi_baro_rcvb),(5)&7
	goto	u3901
	goto	u3900
u3901:
	goto	l3495
u3900:
	goto	l3499
	
l619:	
	line	495
	
l3499:	
;PR22.c: 495: spi_baro(0x1F, 0, 1);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_spi_baro)
	movlw	low(01h)
	movwf	0+(?_spi_baro)+01h
	movlw	high(01h)
	movwf	(0+(?_spi_baro)+01h)+1
	movlw	(01Fh)
	fcall	_spi_baro
	line	496
	
l3501:	
;PR22.c: 496: pressure_raw = (0b00000111 & spi_baro_rcvb[0]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_spi_baro_rcvb),w
	andlw	07h
	movwf	(??_mode3+0)+0
	clrf	((??_mode3+0)+0+1)
	clrf	((??_mode3+0)+0+2)
	clrf	((??_mode3+0)+0+3)
	movf	3+(??_mode3+0)+0,w
	movwf	(mode3@pressure_raw+3)
	movf	2+(??_mode3+0)+0,w
	movwf	(mode3@pressure_raw+2)
	movf	1+(??_mode3+0)+0,w
	movwf	(mode3@pressure_raw+1)
	movf	0+(??_mode3+0)+0,w
	movwf	(mode3@pressure_raw)

	line	497
	
l3503:	
;PR22.c: 497: pressure_raw <<= 16;
	movlw	010h
	movwf	(??_mode3+0)+0
u3915:
	clrc
	rlf	(mode3@pressure_raw),f
	rlf	(mode3@pressure_raw+1),f
	rlf	(mode3@pressure_raw+2),f
	rlf	(mode3@pressure_raw+3),f
	decfsz	(??_mode3+0)+0
	goto	u3915
	line	498
	
l3505:	
;PR22.c: 498: spi_baro(0x20, 0, 1);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_spi_baro)
	movlw	low(01h)
	movwf	0+(?_spi_baro)+01h
	movlw	high(01h)
	movwf	(0+(?_spi_baro)+01h)+1
	movlw	(020h)
	fcall	_spi_baro
	line	499
	
l3507:	
;PR22.c: 499: pressure_raw += ((spi_baro_rcvb[0] << 8) + spi_baro_rcvb[1]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_spi_baro_rcvb)+01h,w
	movwf	((??_mode3+0)+0)
	movf	(_spi_baro_rcvb),w
	movwf	((??_mode3+0)+0+1)
	movlw	0
	btfsc	((??_mode3+0)+0+1),7
	movlw	255
	movwf	((??_mode3+0)+0+2)
	movwf	((??_mode3+0)+0+3)
	movf	0+(??_mode3+0)+0,w
	addwf	(mode3@pressure_raw),f
	movf	1+(??_mode3+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3921
	addwf	(mode3@pressure_raw+1),f
u3921:
	movf	2+(??_mode3+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3922
	addwf	(mode3@pressure_raw+2),f
u3922:
	movf	3+(??_mode3+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3923
	addwf	(mode3@pressure_raw+3),f
u3923:

	line	502
	
l3509:	
;PR22.c: 502: spi_baro(0x21, 0, 1);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_spi_baro)
	movlw	low(01h)
	movwf	0+(?_spi_baro)+01h
	movlw	high(01h)
	movwf	(0+(?_spi_baro)+01h)+1
	movlw	(021h)
	fcall	_spi_baro
	line	503
	
l3511:	
;PR22.c: 503: temperature_raw = (spi_baro_rcvb[0] << 8) + spi_baro_rcvb[1];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_spi_baro_rcvb),w
	movwf	(??_mode3+0)+0
	clrf	(??_mode3+0)+0+1
	movlw	08h
	movwf	btemp+1
u3935:
	clrc
	rlf	(??_mode3+0)+0,f
	rlf	(??_mode3+0)+1,f
	decfsz	btemp+1,f
	goto	u3935
	movf	0+(_spi_baro_rcvb)+01h,w
	addwf	0+(??_mode3+0)+0,w
	movwf	(mode3@temperature_raw)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_mode3+0)+0,w
	movwf	1+(mode3@temperature_raw)
	line	506
	
l3513:	
;PR22.c: 506: lcd_goto(6);
	movlw	(06h)
	fcall	_lcd_goto
	line	507
	
l3515:	
;PR22.c: 507: pressure = pressure_raw >> 2;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode3@pressure_raw),w
	movwf	(??_mode3+0)+0
	movf	(mode3@pressure_raw+1),w
	movwf	((??_mode3+0)+0+1)
	movf	(mode3@pressure_raw+2),w
	movwf	((??_mode3+0)+0+2)
	movf	(mode3@pressure_raw+3),w
	movwf	((??_mode3+0)+0+3)
	movlw	02h
u3945:
	clrc
	rrf	(??_mode3+0)+3,f
	rrf	(??_mode3+0)+2,f
	rrf	(??_mode3+0)+1,f
	rrf	(??_mode3+0)+0,f
u3940:
	addlw	-1
	skipz
	goto	u3945
	movf	3+(??_mode3+0)+0,w
	movwf	(mode3@pressure+3)
	movf	2+(??_mode3+0)+0,w
	movwf	(mode3@pressure+2)
	movf	1+(??_mode3+0)+0,w
	movwf	(mode3@pressure+1)
	movf	0+(??_mode3+0)+0,w
	movwf	(mode3@pressure)

	line	508
	
l3517:	
;PR22.c: 508: temp = pressure / 1000;
	movlw	0
	movwf	(?___lldiv+3)
	movlw	0
	movwf	(?___lldiv+2)
	movlw	03h
	movwf	(?___lldiv+1)
	movlw	0E8h
	movwf	(?___lldiv)

	movf	(mode3@pressure+3),w
	movwf	3+(?___lldiv)+04h
	movf	(mode3@pressure+2),w
	movwf	2+(?___lldiv)+04h
	movf	(mode3@pressure+1),w
	movwf	1+(?___lldiv)+04h
	movf	(mode3@pressure),w
	movwf	0+(?___lldiv)+04h

	fcall	___lldiv
	movf	1+(((0+(?___lldiv)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(mode3@temp+1)
	addwf	(mode3@temp+1)
	movf	0+(((0+(?___lldiv)))),w
	clrf	(mode3@temp)
	addwf	(mode3@temp)

	line	509
	
l3519:	
;PR22.c: 509: send_char('0' + (temp % 1000) / 100);
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(mode3@temp+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(mode3@temp),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(0+(?___lwmod)),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_send_char
	line	510
	
l3521:	
;PR22.c: 510: send_char('0' + (temp % 100) / 10);
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode3@temp+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(mode3@temp),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(0+(?___lwmod)),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_send_char
	line	511
	
l3523:	
;PR22.c: 511: send_char('0' + (temp % 10));
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode3@temp+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(mode3@temp),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_send_char
	line	512
	
l3525:	
;PR22.c: 512: send_char('.');
	movlw	(02Eh)
	fcall	_send_char
	line	513
	
l3527:	
;PR22.c: 513: temp = pressure % 1000;
	movlw	0
	movwf	(?___llmod+3)
	movlw	0
	movwf	(?___llmod+2)
	movlw	03h
	movwf	(?___llmod+1)
	movlw	0E8h
	movwf	(?___llmod)

	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode3@pressure+3),w
	movwf	3+(?___llmod)+04h
	movf	(mode3@pressure+2),w
	movwf	2+(?___llmod)+04h
	movf	(mode3@pressure+1),w
	movwf	1+(?___llmod)+04h
	movf	(mode3@pressure),w
	movwf	0+(?___llmod)+04h

	fcall	___llmod
	movf	1+(((0+(?___llmod)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(mode3@temp+1)
	addwf	(mode3@temp+1)
	movf	0+(((0+(?___llmod)))),w
	clrf	(mode3@temp)
	addwf	(mode3@temp)

	line	514
	
l3529:	
;PR22.c: 514: send_char('0' + temp / 100);
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(mode3@temp+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(mode3@temp),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_send_char
	line	515
	
l3531:	
;PR22.c: 515: send_char('0' + (temp % 100) / 10);
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode3@temp+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(mode3@temp),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(0+(?___lwmod)),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_send_char
	line	516
	
l3533:	
;PR22.c: 516: send_char('0' + (temp % 10));
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode3@temp+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(mode3@temp),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_send_char
	line	517
	
l3535:	
;PR22.c: 517: send_string("kPa");
	movlw	((STR_27-__stringbase))&0ffh
	fcall	_send_string
	line	520
	
l3537:	
;PR22.c: 520: lcd_goto(26);
	movlw	(01Ah)
	fcall	_lcd_goto
	line	521
	
l3539:	
;PR22.c: 521: temperature = temperature_raw >> 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode3@temperature_raw+1),w
	movwf	(??_mode3+0)+0+1
	movf	(mode3@temperature_raw),w
	movwf	(??_mode3+0)+0
	movlw	01h
u3955:
	clrc
	rrf	(??_mode3+0)+1,f
	rrf	(??_mode3+0)+0,f
	addlw	-1
	skipz
	goto	u3955
	movf	0+(??_mode3+0)+0,w
	movwf	(mode3@temperature)
	movf	1+(??_mode3+0)+0,w
	movwf	(mode3@temperature+1)
	line	523
	
l3541:	
;PR22.c: 523: if(temperature & 0x1000)
	btfss	(mode3@temperature+1),(12)&7
	goto	u3961
	goto	u3960
u3961:
	goto	l3547
u3960:
	line	525
	
l3543:	
;PR22.c: 524: {
;PR22.c: 525: temperature = (~temperature) + 1;
	comf	(mode3@temperature),f
	comf	(mode3@temperature+1),f
	incf	(mode3@temperature),f
	skipnz
	incf	(mode3@temperature+1),f
	line	526
	
l3545:	
;PR22.c: 526: send_char('-');
	movlw	(02Dh)
	fcall	_send_char
	line	527
;PR22.c: 527: }
	goto	l621
	line	528
	
l620:	
	line	529
	
l3547:	
;PR22.c: 528: else
;PR22.c: 529: send_char('+');
	movlw	(02Bh)
	fcall	_send_char
	
l621:	
	line	532
;PR22.c: 532: send_char('0' + temperature / 1000);
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode3@temperature+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(mode3@temperature),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_send_char
	line	533
;PR22.c: 533: send_char('0' + (temperature % 1000) / 100);
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode3@temperature+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(mode3@temperature),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(0+(?___lwmod)),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_send_char
	line	534
;PR22.c: 534: send_char('0' + (temperature % 100) / 10);
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode3@temperature+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(mode3@temperature),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(0+(?___lwmod)),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_send_char
	line	535
;PR22.c: 535: send_char('.');
	movlw	(02Eh)
	fcall	_send_char
	line	536
;PR22.c: 536: send_char('0' + temperature % 10);
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode3@temperature+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(mode3@temperature),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_send_char
	line	537
;PR22.c: 537: send_char('C');
	movlw	(043h)
	fcall	_send_char
	goto	l3549
	line	538
	
l616:	
	line	488
	
l3549:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u3971
	goto	u3970
u3971:
	goto	l3495
u3970:
	goto	l3551
	
l622:	
	line	540
	
l3551:	
;PR22.c: 538: }
;PR22.c: 540: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	541
;PR22.c: 541: while(!RA2);
	goto	l623
	
l624:	
	
l623:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7
	goto	u3981
	goto	u3980
u3981:
	goto	l623
u3980:
	goto	l3553
	
l625:	
	line	542
	
l3553:	
;PR22.c: 542: spi_baro(0x03, 0, 0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_spi_baro)
	movlw	low(0)
	movwf	0+(?_spi_baro)+01h
	movlw	high(0)
	movwf	(0+(?_spi_baro)+01h)+1
	movlw	(03h)
	fcall	_spi_baro
	line	543
;PR22.c: 543: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	544
	
l626:	
	return
	opt stack 0
GLOBAL	__end_of_mode3
	__end_of_mode3:
;; =============== function _mode3 ends ============

	signat	_mode3,88
	global	_mode2
psect	text380,local,class=CODE,delta=2
global __ptext380
__ptext380:

;; *************** function _mode2 *****************
;; Defined at:
;;		line 334 in file "C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temperature_    4   13[BANK0 ] unsigned long 
;;  capacitance_    4    9[BANK0 ] unsigned long 
;;  capacitance     2   19[BANK0 ] unsigned int 
;;  i               1   18[BANK0 ] unsigned char 
;;  temperature     1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      12       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0      17       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_goto
;;		_send_string
;;		_i2c_start
;;		_lcd_clr
;;		_delay
;;		___lwdiv
;;		_send_char
;;		___lwmod
;;		___awmod
;;		___awdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text380
	file	"C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
	line	334
	global	__size_of_mode2
	__size_of_mode2	equ	__end_of_mode2-_mode2
	
_mode2:	
	opt	stack 4
; Regs used in _mode2: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	340
	
l3385:	
;PR22.c: 335: unsigned char i;
;PR22.c: 336: unsigned char temperature;
;PR22.c: 337: unsigned int capacitance;
;PR22.c: 338: unsigned long capacitance_raw, temperature_raw;
;PR22.c: 340: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	341
	
l3387:	
;PR22.c: 341: send_string("Calibrating...  ");
	movlw	((STR_19-__stringbase))&0ffh
	fcall	_send_string
	line	344
	
l3389:	
;PR22.c: 344: for(i = 0; i < 7; i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(mode2@i)
	
l3391:	
	movlw	(07h)
	subwf	(mode2@i),w
	skipc
	goto	u3701
	goto	u3700
u3701:
	goto	l3395
u3700:
	goto	l3401
	
l3393:	
	goto	l3401
	line	345
	
l594:	
	
l3395:	
;PR22.c: 345: i2c_master_data[i] = i2c_master_rcvb[i] = 0;
	movf	(mode2@i),w
	addlw	_i2c_master_rcvb&0ffh
	movwf	fsr0
	movlw	(0)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	movwf	(??_mode2+0)+0
	movf	(mode2@i),w
	addlw	_i2c_master_data&0ffh
	movwf	fsr0
	movf	(??_mode2+0)+0,w
	movwf	indf
	line	344
	
l3397:	
	movlw	(01h)
	movwf	(??_mode2+0)+0
	movf	(??_mode2+0)+0,w
	addwf	(mode2@i),f
	
l3399:	
	movlw	(07h)
	subwf	(mode2@i),w
	skipc
	goto	u3711
	goto	u3710
u3711:
	goto	l3395
u3710:
	goto	l3401
	
l595:	
	line	347
	
l3401:	
;PR22.c: 347: i2c_master_data[5] = 0b10000000;
	movlw	(080h)
	movwf	(??_mode2+0)+0
	movf	(??_mode2+0)+0,w
	movwf	0+(_i2c_master_data)+05h
	line	357
;PR22.c: 357: i2c_master_data[0] = 0x07;
	movlw	(07h)
	movwf	(??_mode2+0)+0
	movf	(??_mode2+0)+0,w
	movwf	(_i2c_master_data)
	line	358
;PR22.c: 358: i2c_master_data[1] = 0b10000000;
	movlw	(080h)
	movwf	(??_mode2+0)+0
	movf	(??_mode2+0)+0,w
	movwf	0+(_i2c_master_data)+01h
	line	364
;PR22.c: 364: i2c_master_data[2] = 0b10000001;
	movlw	(081h)
	movwf	(??_mode2+0)+0
	movf	(??_mode2+0)+0,w
	movwf	0+(_i2c_master_data)+02h
	line	365
;PR22.c: 365: i2c_master_data[3] = 0b00001011;
	movlw	(0Bh)
	movwf	(??_mode2+0)+0
	movf	(??_mode2+0)+0,w
	movwf	0+(_i2c_master_data)+03h
	line	371
;PR22.c: 371: i2c_master_data[4] = 0b00010001;
	movlw	(011h)
	movwf	(??_mode2+0)+0
	movf	(??_mode2+0)+0,w
	movwf	0+(_i2c_master_data)+04h
	goto	l3403
	line	376
;PR22.c: 376: do
	
l596:	
	line	378
	
l3403:	
;PR22.c: 377: {
;PR22.c: 378: i2c_start(0x90, 6, 0);
	movlw	(06h)
	movwf	(??_mode2+0)+0
	movf	(??_mode2+0)+0,w
	movwf	(?_i2c_start)
	movlw	low(0)
	movwf	0+(?_i2c_start)+01h
	movlw	high(0)
	movwf	(0+(?_i2c_start)+01h)+1
	movlw	(090h)
	fcall	_i2c_start
	goto	l3405
	line	380
;PR22.c: 380: do
	
l597:	
	line	381
	
l3405:	
;PR22.c: 381: i2c_start(0x90, 1, 1);
	clrf	(?_i2c_start)
	bsf	status,0
	rlf	(?_i2c_start),f
	movlw	low(01h)
	movwf	0+(?_i2c_start)+01h
	movlw	high(01h)
	movwf	(0+(?_i2c_start)+01h)+1
	movlw	(090h)
	fcall	_i2c_start
	line	382
	
l3407:	
;PR22.c: 382: while(i2c_master_rcvb[0] != 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_i2c_master_rcvb),f
	skipz
	goto	u3721
	goto	u3720
u3721:
	goto	l3405
u3720:
	goto	l3409
	
l598:	
	line	384
	
l3409:	
;PR22.c: 384: i2c_start(0x90, 4, 1);
	movlw	(04h)
	movwf	(??_mode2+0)+0
	movf	(??_mode2+0)+0,w
	movwf	(?_i2c_start)
	movlw	low(01h)
	movwf	0+(?_i2c_start)+01h
	movlw	high(01h)
	movwf	(0+(?_i2c_start)+01h)+1
	movlw	(090h)
	fcall	_i2c_start
	line	386
	
l3411:	
;PR22.c: 386: if(i2c_master_data[5] < 0xFF)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_i2c_master_data)+05h,w
	xorlw	0FFh
	skipnz
	goto	u3731
	goto	u3730
u3731:
	goto	l3417
u3730:
	line	388
	
l3413:	
;PR22.c: 387: {
;PR22.c: 388: if(i2c_master_rcvb[1] != 0)
	movf	0+(_i2c_master_rcvb)+01h,w
	skipz
	goto	u3740
	goto	l3425
u3740:
	line	389
	
l3415:	
;PR22.c: 389: i2c_master_data[5]++;
	movlw	(01h)
	movwf	(??_mode2+0)+0
	movf	(??_mode2+0)+0,w
	addwf	0+(_i2c_master_data)+05h,f
	goto	l3425
	
l600:	
	line	390
;PR22.c: 390: }
	goto	l3425
	line	391
	
l599:	
	line	393
	
l3417:	
;PR22.c: 391: else
;PR22.c: 392: {
;PR22.c: 393: lcd_clr();
	fcall	_lcd_clr
	line	394
;PR22.c: 394: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	395
	
l3419:	
;PR22.c: 395: send_string("Calibration Fail");
	movlw	((STR_20-__stringbase))&0ffh
	fcall	_send_string
	line	396
	
l3421:	
;PR22.c: 396: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	goto	l602
	line	397
	
l3423:	
;PR22.c: 397: return;
	goto	l602
	line	398
	
l601:	
	line	399
	
l3425:	
;PR22.c: 398: }
;PR22.c: 399: } while(i2c_master_rcvb[1] != 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_i2c_master_rcvb)+01h,f
	skipz
	goto	u3751
	goto	u3750
u3751:
	goto	l3403
u3750:
	goto	l3427
	
l603:	
	line	403
	
l3427:	
;PR22.c: 403: lcd_clr();
	fcall	_lcd_clr
	line	404
;PR22.c: 404: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	405
	
l3429:	
;PR22.c: 405: send_string("Cap.:");
	movlw	((STR_21-__stringbase))&0ffh
	fcall	_send_string
	line	406
	
l3431:	
;PR22.c: 406: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	407
;PR22.c: 407: send_string("Tem.:");
	movlw	((STR_22-__stringbase))&0ffh
	fcall	_send_string
	line	409
;PR22.c: 409: while(RA2)
	goto	l3483
	
l605:	
	goto	l3433
	line	413
;PR22.c: 410: {
;PR22.c: 413: do
	
l606:	
	line	414
	
l3433:	
;PR22.c: 414: i2c_start(0x90, 1, 1);
	clrf	(?_i2c_start)
	bsf	status,0
	rlf	(?_i2c_start),f
	movlw	low(01h)
	movwf	0+(?_i2c_start)+01h
	movlw	high(01h)
	movwf	(0+(?_i2c_start)+01h)+1
	movlw	(090h)
	fcall	_i2c_start
	line	415
	
l3435:	
;PR22.c: 415: while(i2c_master_rcvb[0] != 0);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_i2c_master_rcvb),f
	skipz
	goto	u3761
	goto	u3760
u3761:
	goto	l3433
u3760:
	goto	l3437
	
l607:	
	line	417
	
l3437:	
;PR22.c: 417: i2c_start(0x90, 7, 1);
	movlw	(07h)
	movwf	(??_mode2+0)+0
	movf	(??_mode2+0)+0,w
	movwf	(?_i2c_start)
	movlw	low(01h)
	movwf	0+(?_i2c_start)+01h
	movlw	high(01h)
	movwf	(0+(?_i2c_start)+01h)+1
	movlw	(090h)
	fcall	_i2c_start
	line	430
	
l3439:	
;PR22.c: 430: capacitance_raw = i2c_master_rcvb[1];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(_i2c_master_rcvb)+01h,w
	movwf	(??_mode2+0)+0
	clrf	((??_mode2+0)+0+1)
	clrf	((??_mode2+0)+0+2)
	clrf	((??_mode2+0)+0+3)
	movf	3+(??_mode2+0)+0,w
	movwf	(mode2@capacitance_raw+3)
	movf	2+(??_mode2+0)+0,w
	movwf	(mode2@capacitance_raw+2)
	movf	1+(??_mode2+0)+0,w
	movwf	(mode2@capacitance_raw+1)
	movf	0+(??_mode2+0)+0,w
	movwf	(mode2@capacitance_raw)

	line	431
	
l3441:	
;PR22.c: 431: capacitance_raw <<= 8;
	movlw	08h
	movwf	(??_mode2+0)+0
u3775:
	clrc
	rlf	(mode2@capacitance_raw),f
	rlf	(mode2@capacitance_raw+1),f
	rlf	(mode2@capacitance_raw+2),f
	rlf	(mode2@capacitance_raw+3),f
	decfsz	(??_mode2+0)+0
	goto	u3775
	line	432
	
l3443:	
;PR22.c: 432: capacitance_raw += i2c_master_rcvb[2];
	movf	0+(_i2c_master_rcvb)+02h,w
	movwf	(??_mode2+0)+0
	clrf	((??_mode2+0)+0+1)
	clrf	((??_mode2+0)+0+2)
	clrf	((??_mode2+0)+0+3)
	movf	0+(??_mode2+0)+0,w
	addwf	(mode2@capacitance_raw),f
	movf	1+(??_mode2+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3781
	addwf	(mode2@capacitance_raw+1),f
u3781:
	movf	2+(??_mode2+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3782
	addwf	(mode2@capacitance_raw+2),f
u3782:
	movf	3+(??_mode2+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3783
	addwf	(mode2@capacitance_raw+3),f
u3783:

	line	433
	
l3445:	
;PR22.c: 433: capacitance_raw <<= 8;
	movlw	08h
	movwf	(??_mode2+0)+0
u3795:
	clrc
	rlf	(mode2@capacitance_raw),f
	rlf	(mode2@capacitance_raw+1),f
	rlf	(mode2@capacitance_raw+2),f
	rlf	(mode2@capacitance_raw+3),f
	decfsz	(??_mode2+0)+0
	goto	u3795
	line	434
	
l3447:	
;PR22.c: 434: capacitance_raw += i2c_master_rcvb[3];
	movf	0+(_i2c_master_rcvb)+03h,w
	movwf	(??_mode2+0)+0
	clrf	((??_mode2+0)+0+1)
	clrf	((??_mode2+0)+0+2)
	clrf	((??_mode2+0)+0+3)
	movf	0+(??_mode2+0)+0,w
	addwf	(mode2@capacitance_raw),f
	movf	1+(??_mode2+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3801
	addwf	(mode2@capacitance_raw+1),f
u3801:
	movf	2+(??_mode2+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3802
	addwf	(mode2@capacitance_raw+2),f
u3802:
	movf	3+(??_mode2+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3803
	addwf	(mode2@capacitance_raw+3),f
u3803:

	line	435
	
l3449:	
;PR22.c: 435: capacitance = capacitance_raw / 2048;
	movf	(mode2@capacitance_raw),w
	movwf	(??_mode2+0)+0
	movf	(mode2@capacitance_raw+1),w
	movwf	((??_mode2+0)+0+1)
	movf	(mode2@capacitance_raw+2),w
	movwf	((??_mode2+0)+0+2)
	movf	(mode2@capacitance_raw+3),w
	movwf	((??_mode2+0)+0+3)
	movlw	0Bh
u3815:
	clrc
	rrf	(??_mode2+0)+3,f
	rrf	(??_mode2+0)+2,f
	rrf	(??_mode2+0)+1,f
	rrf	(??_mode2+0)+0,f
u3810:
	addlw	-1
	skipz
	goto	u3815
	movf	1+(??_mode2+0)+0,w
	clrf	(mode2@capacitance+1)
	addwf	(mode2@capacitance+1)
	movf	0+(??_mode2+0)+0,w
	clrf	(mode2@capacitance)
	addwf	(mode2@capacitance)

	line	438
	
l3451:	
;PR22.c: 438: temperature_raw = i2c_master_rcvb[4];
	movf	0+(_i2c_master_rcvb)+04h,w
	movwf	(??_mode2+0)+0
	clrf	((??_mode2+0)+0+1)
	clrf	((??_mode2+0)+0+2)
	clrf	((??_mode2+0)+0+3)
	movf	3+(??_mode2+0)+0,w
	movwf	(mode2@temperature_raw+3)
	movf	2+(??_mode2+0)+0,w
	movwf	(mode2@temperature_raw+2)
	movf	1+(??_mode2+0)+0,w
	movwf	(mode2@temperature_raw+1)
	movf	0+(??_mode2+0)+0,w
	movwf	(mode2@temperature_raw)

	line	439
	
l3453:	
;PR22.c: 439: temperature_raw <<= 8;
	movlw	08h
	movwf	(??_mode2+0)+0
u3825:
	clrc
	rlf	(mode2@temperature_raw),f
	rlf	(mode2@temperature_raw+1),f
	rlf	(mode2@temperature_raw+2),f
	rlf	(mode2@temperature_raw+3),f
	decfsz	(??_mode2+0)+0
	goto	u3825
	line	440
	
l3455:	
;PR22.c: 440: temperature_raw += i2c_master_rcvb[5];
	movf	0+(_i2c_master_rcvb)+05h,w
	movwf	(??_mode2+0)+0
	clrf	((??_mode2+0)+0+1)
	clrf	((??_mode2+0)+0+2)
	clrf	((??_mode2+0)+0+3)
	movf	0+(??_mode2+0)+0,w
	addwf	(mode2@temperature_raw),f
	movf	1+(??_mode2+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3831
	addwf	(mode2@temperature_raw+1),f
u3831:
	movf	2+(??_mode2+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3832
	addwf	(mode2@temperature_raw+2),f
u3832:
	movf	3+(??_mode2+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3833
	addwf	(mode2@temperature_raw+3),f
u3833:

	line	441
	
l3457:	
;PR22.c: 441: temperature_raw <<= 8;
	movlw	08h
	movwf	(??_mode2+0)+0
u3845:
	clrc
	rlf	(mode2@temperature_raw),f
	rlf	(mode2@temperature_raw+1),f
	rlf	(mode2@temperature_raw+2),f
	rlf	(mode2@temperature_raw+3),f
	decfsz	(??_mode2+0)+0
	goto	u3845
	line	442
	
l3459:	
;PR22.c: 442: temperature_raw += i2c_master_rcvb[6];
	movf	0+(_i2c_master_rcvb)+06h,w
	movwf	(??_mode2+0)+0
	clrf	((??_mode2+0)+0+1)
	clrf	((??_mode2+0)+0+2)
	clrf	((??_mode2+0)+0+3)
	movf	0+(??_mode2+0)+0,w
	addwf	(mode2@temperature_raw),f
	movf	1+(??_mode2+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3851
	addwf	(mode2@temperature_raw+1),f
u3851:
	movf	2+(??_mode2+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3852
	addwf	(mode2@temperature_raw+2),f
u3852:
	movf	3+(??_mode2+0)+0,w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u3853
	addwf	(mode2@temperature_raw+3),f
u3853:

	line	443
	
l3461:	
;PR22.c: 443: temperature = (temperature_raw / 2048) - 4096;
	movf	(mode2@temperature_raw),w
	movwf	(??_mode2+0)+0
	movf	(mode2@temperature_raw+1),w
	movwf	((??_mode2+0)+0+1)
	movf	(mode2@temperature_raw+2),w
	movwf	((??_mode2+0)+0+2)
	movf	(mode2@temperature_raw+3),w
	movwf	((??_mode2+0)+0+3)
	movlw	0Bh
u3865:
	clrc
	rrf	(??_mode2+0)+3,f
	rrf	(??_mode2+0)+2,f
	rrf	(??_mode2+0)+1,f
	rrf	(??_mode2+0)+0,f
u3860:
	addlw	-1
	skipz
	goto	u3865
	movf	0+(??_mode2+0)+0,w
	movwf	(??_mode2+4)+0
	movf	(??_mode2+4)+0,w
	movwf	(mode2@temperature)
	line	446
	
l3463:	
;PR22.c: 446: lcd_goto(6);
	movlw	(06h)
	fcall	_lcd_goto
	line	447
	
l3465:	
;PR22.c: 447: if(capacitance >= 8191)
	movlw	high(01FFFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(mode2@capacitance+1),w
	movlw	low(01FFFh)
	skipnz
	subwf	(mode2@capacitance),w
	skipc
	goto	u3871
	goto	u3870
u3871:
	goto	l3469
u3870:
	line	448
	
l3467:	
;PR22.c: 448: send_string("Saturated");
	movlw	((STR_23-__stringbase))&0ffh
	fcall	_send_string
	goto	l3473
	line	449
	
l608:	
	line	451
	
l3469:	
;PR22.c: 449: else
;PR22.c: 450: {
;PR22.c: 451: send_char('0' + capacitance / 1000);
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode2@capacitance+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(mode2@capacitance),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_send_char
	line	452
;PR22.c: 452: send_char('.');
	movlw	(02Eh)
	fcall	_send_char
	line	453
;PR22.c: 453: send_char('0' + (capacitance % 1000) / 100);
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode2@capacitance+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(mode2@capacitance),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(0+(?___lwmod)),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_send_char
	line	454
;PR22.c: 454: send_char('0' + (capacitance % 100) / 10);
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode2@capacitance+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(mode2@capacitance),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(0+(?___lwmod)),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_send_char
	line	455
;PR22.c: 455: send_char('0' + (capacitance % 10));
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode2@capacitance+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(mode2@capacitance),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_send_char
	line	456
	
l3471:	
;PR22.c: 456: send_string("pF  ");
	movlw	((STR_24-__stringbase))&0ffh
	fcall	_send_string
	goto	l3473
	line	457
	
l609:	
	line	460
	
l3473:	
;PR22.c: 457: }
;PR22.c: 460: lcd_goto(26);
	movlw	(01Ah)
	fcall	_lcd_goto
	line	461
	
l3475:	
;PR22.c: 461: send_char('0' + (temperature % 100) / 10);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode2@temperature),w
	movwf	(??_mode2+0)+0
	clrf	(??_mode2+0)+0+1
	movf	0+(??_mode2+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_mode2+0)+0,w
	movwf	1+(?___awmod)+02h
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	030h
	fcall	_send_char
	line	462
	
l3477:	
;PR22.c: 462: send_char('0' + (temperature % 10));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode2@temperature),w
	movwf	(??_mode2+0)+0
	clrf	(??_mode2+0)+0+1
	movf	0+(??_mode2+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_mode2+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_send_char
	line	463
	
l3479:	
;PR22.c: 463: send_char('C');
	movlw	(043h)
	fcall	_send_char
	line	465
	
l3481:	
;PR22.c: 465: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	goto	l3483
	line	466
	
l604:	
	line	409
	
l3483:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u3881
	goto	u3880
u3881:
	goto	l3433
u3880:
	goto	l3485
	
l610:	
	line	468
	
l3485:	
;PR22.c: 466: }
;PR22.c: 468: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	469
;PR22.c: 469: while(!RA2);
	goto	l611
	
l612:	
	
l611:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7
	goto	u3891
	goto	u3890
u3891:
	goto	l611
u3890:
	goto	l3487
	
l613:	
	line	470
	
l3487:	
;PR22.c: 470: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	471
	
l602:	
	return
	opt stack 0
GLOBAL	__end_of_mode2
	__end_of_mode2:
;; =============== function _mode2 ends ============

	signat	_mode2,88
	global	_mode1
psect	text381,local,class=CODE,delta=2
global __ptext381
__ptext381:

;; *************** function _mode1 *****************
;; Defined at:
;;		line 176 in file "C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  result          2    2[BANK0 ] unsigned int 
;;  submode         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_clr
;;		_lcd_goto
;;		_send_string
;;		_delay
;;		_i2c_start
;;		___lwmod
;;		___lwdiv
;;		_send_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text381
	file	"C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
	line	176
	global	__size_of_mode1
	__size_of_mode1	equ	__end_of_mode1-_mode1
	
_mode1:	
	opt	stack 4
; Regs used in _mode1: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	178
	
l3243:	
;PR22.c: 177: unsigned int result;
;PR22.c: 178: unsigned char submode = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(mode1@submode)
	bsf	status,0
	rlf	(mode1@submode),f
	line	180
	
l3245:	
;PR22.c: 180: lcd_clr();
	fcall	_lcd_clr
	goto	l3247
	line	181
;PR22.c: 181: while(1)
	
l554:	
	line	183
	
l3247:	
;PR22.c: 182: {
;PR22.c: 183: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	184
	
l3249:	
;PR22.c: 184: send_string("OK");
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_send_string
	line	186
	
l3251:	
;PR22.c: 186: if(!RA0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(40/8),(40)&7
	goto	u3591
	goto	u3590
u3591:
	goto	l555
u3590:
	line	189
	
l3253:	
;PR22.c: 187: {
;PR22.c: 189: if(submode > 1)
	movlw	(02h)
	subwf	(mode1@submode),w
	skipc
	goto	u3601
	goto	u3600
u3601:
	goto	l3261
u3600:
	line	190
	
l3255:	
;PR22.c: 190: submode--;
	movlw	low(01h)
	subwf	(mode1@submode),f
	goto	l3261
	
l556:	
	line	191
;PR22.c: 191: }
	goto	l3261
	line	192
	
l555:	
;PR22.c: 192: else if(!RA1)
	btfsc	(41/8),(41)&7
	goto	u3611
	goto	u3610
u3611:
	goto	l3261
u3610:
	line	195
	
l3257:	
;PR22.c: 193: {
;PR22.c: 195: if(submode < 4)
	movlw	(04h)
	subwf	(mode1@submode),w
	skipnc
	goto	u3621
	goto	u3620
u3621:
	goto	l3261
u3620:
	line	196
	
l3259:	
;PR22.c: 196: submode++;
	movlw	(01h)
	movwf	(??_mode1+0)+0
	movf	(??_mode1+0)+0,w
	addwf	(mode1@submode),f
	goto	l3261
	
l559:	
	goto	l3261
	line	197
	
l558:	
	goto	l3261
	line	200
	
l557:	
	
l3261:	
;PR22.c: 197: }
;PR22.c: 200: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	201
;PR22.c: 201: switch(submode)
	goto	l3273
	line	203
;PR22.c: 202: {
;PR22.c: 203: case 1 : send_string("Heading Output?");
	
l561:	
	
l3263:	
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_send_string
	line	204
;PR22.c: 204: break;
	goto	l562
	line	206
;PR22.c: 206: case 2 : send_string("Calibration?   ");
	
l563:	
	
l3265:	
	movlw	((STR_10-__stringbase))&0ffh
	fcall	_send_string
	line	207
;PR22.c: 207: break;
	goto	l562
	line	209
;PR22.c: 209: case 3 : send_string("Reset Offset?  ");
	
l564:	
	
l3267:	
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_send_string
	line	210
;PR22.c: 210: break;
	goto	l562
	line	212
;PR22.c: 212: case 4 : send_string("Exit?          ");
	
l565:	
	
l3269:	
	movlw	((STR_12-__stringbase))&0ffh
	fcall	_send_string
	line	213
;PR22.c: 213: break;
	goto	l562
	line	214
	
l3271:	
;PR22.c: 214: }
	goto	l562
	line	201
	
l560:	
	
l3273:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode1@submode),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Bytes Cycles
; simple_byte    13     7 (average)
; direct_byte    34    22 (fixed)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l3263
	xorlw	2^1	; case 2
	skipnz
	goto	l3265
	xorlw	3^2	; case 3
	skipnz
	goto	l3267
	xorlw	4^3	; case 4
	skipnz
	goto	l3269
	goto	l562

	line	214
	
l562:	
	line	216
;PR22.c: 216: if(!RA2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l3383
u3630:
	line	218
	
l3275:	
;PR22.c: 217: {
;PR22.c: 218: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	219
;PR22.c: 219: while(!RA2);
	goto	l567
	
l568:	
	
l567:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7
	goto	u3641
	goto	u3640
u3641:
	goto	l567
u3640:
	goto	l3277
	
l569:	
	line	220
	
l3277:	
;PR22.c: 220: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	222
;PR22.c: 222: lcd_clr();
	fcall	_lcd_clr
	line	223
;PR22.c: 223: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	225
;PR22.c: 225: switch(submode)
	goto	l3381
	line	227
;PR22.c: 226: {
;PR22.c: 227: case 1 :
	
l571:	
	line	229
	
l3279:	
;PR22.c: 229: send_string("Heading:");
	movlw	((STR_13-__stringbase))&0ffh
	fcall	_send_string
	line	230
	
l3281:	
;PR22.c: 230: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	231
	
l3283:	
;PR22.c: 231: send_string("Exit");
	movlw	((STR_14-__stringbase))&0ffh
	fcall	_send_string
	line	234
	
l3285:	
;PR22.c: 234: i2c_master_data[0] = 'O';
	movlw	(04Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_mode1+0)+0
	movf	(??_mode1+0)+0,w
	movwf	(_i2c_master_data)
	line	235
	
l3287:	
;PR22.c: 235: i2c_start(0x42, 1, 0);
	clrf	(?_i2c_start)
	bsf	status,0
	rlf	(?_i2c_start),f
	movlw	low(0)
	movwf	0+(?_i2c_start)+01h
	movlw	high(0)
	movwf	(0+(?_i2c_start)+01h)+1
	movlw	(042h)
	fcall	_i2c_start
	line	236
	
l3289:	
;PR22.c: 236: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	238
;PR22.c: 238: while(RA2)
	goto	l3315
	
l573:	
	line	241
	
l3291:	
;PR22.c: 239: {
;PR22.c: 241: i2c_master_data[0] = 'A';
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_mode1+0)+0
	movf	(??_mode1+0)+0,w
	movwf	(_i2c_master_data)
	line	242
	
l3293:	
;PR22.c: 242: i2c_start(0x42, 1, 0);
	clrf	(?_i2c_start)
	bsf	status,0
	rlf	(?_i2c_start),f
	movlw	low(0)
	movwf	0+(?_i2c_start)+01h
	movlw	high(0)
	movwf	(0+(?_i2c_start)+01h)+1
	movlw	(042h)
	fcall	_i2c_start
	line	243
	
l3295:	
;PR22.c: 243: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	245
	
l3297:	
;PR22.c: 245: i2c_start(0x42, 2, 1);
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_mode1+0)+0
	movf	(??_mode1+0)+0,w
	movwf	(?_i2c_start)
	movlw	low(01h)
	movwf	0+(?_i2c_start)+01h
	movlw	high(01h)
	movwf	(0+(?_i2c_start)+01h)+1
	movlw	(042h)
	fcall	_i2c_start
	line	247
	
l3299:	
;PR22.c: 247: lcd_goto(9);
	movlw	(09h)
	fcall	_lcd_goto
	line	250
	
l3301:	
;PR22.c: 250: result = (i2c_master_rcvb[0] << 8) + i2c_master_rcvb[1];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_i2c_master_rcvb),w
	movwf	(??_mode1+0)+0
	clrf	(??_mode1+0)+0+1
	movlw	08h
	movwf	btemp+1
u3655:
	clrc
	rlf	(??_mode1+0)+0,f
	rlf	(??_mode1+0)+1,f
	decfsz	btemp+1,f
	goto	u3655
	movf	0+(_i2c_master_rcvb)+01h,w
	addwf	0+(??_mode1+0)+0,w
	movwf	(mode1@result)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_mode1+0)+0,w
	movwf	1+(mode1@result)
	line	253
	
l3303:	
;PR22.c: 253: send_char('0' + (result % 10000) / 1000);
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(mode1@result+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(mode1@result),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	movlw	low(02710h)
	movwf	(?___lwmod)
	movlw	high(02710h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(0+(?___lwmod)),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_send_char
	line	254
	
l3305:	
;PR22.c: 254: send_char('0' + (result % 1000) / 100);
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode1@result+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(mode1@result),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(0+(?___lwmod)),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_send_char
	line	255
	
l3307:	
;PR22.c: 255: send_char('0' + (result % 100) / 10);
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode1@result+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(mode1@result),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(0+(?___lwmod)),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_send_char
	line	256
	
l3309:	
;PR22.c: 256: send_char('.');
	movlw	(02Eh)
	fcall	_send_char
	line	257
	
l3311:	
;PR22.c: 257: send_char('0' + (result % 10));
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode1@result+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(mode1@result),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_send_char
	line	258
	
l3313:	
;PR22.c: 258: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	goto	l3315
	line	259
	
l572:	
	line	238
	
l3315:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u3661
	goto	u3660
u3661:
	goto	l3291
u3660:
	goto	l3317
	
l574:	
	line	261
	
l3317:	
;PR22.c: 259: }
;PR22.c: 261: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	262
;PR22.c: 262: while(!RA2);
	goto	l575
	
l576:	
	
l575:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7
	goto	u3671
	goto	u3670
u3671:
	goto	l575
u3670:
	goto	l3319
	
l577:	
	line	263
	
l3319:	
;PR22.c: 263: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	265
;PR22.c: 265: lcd_clr();
	fcall	_lcd_clr
	line	266
;PR22.c: 266: break;
	goto	l3383
	line	268
;PR22.c: 268: case 2 :
	
l579:	
	line	270
	
l3321:	
;PR22.c: 270: lcd_clr();
	fcall	_lcd_clr
	line	271
;PR22.c: 271: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	272
	
l3323:	
;PR22.c: 272: send_string("Calibrating...");
	movlw	((STR_15-__stringbase))&0ffh
	fcall	_send_string
	line	273
	
l3325:	
;PR22.c: 273: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	274
;PR22.c: 274: send_string("Exit");
	movlw	((STR_16-__stringbase))&0ffh
	fcall	_send_string
	line	277
	
l3327:	
;PR22.c: 277: i2c_master_data[0] = 'C';
	movlw	(043h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_mode1+0)+0
	movf	(??_mode1+0)+0,w
	movwf	(_i2c_master_data)
	line	278
	
l3329:	
;PR22.c: 278: i2c_start(0x42, 1, 0);
	clrf	(?_i2c_start)
	bsf	status,0
	rlf	(?_i2c_start),f
	movlw	low(0)
	movwf	0+(?_i2c_start)+01h
	movlw	high(0)
	movwf	(0+(?_i2c_start)+01h)+1
	movlw	(042h)
	fcall	_i2c_start
	line	280
;PR22.c: 280: while(RA2);
	goto	l580
	
l581:	
	
l580:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u3681
	goto	u3680
u3681:
	goto	l580
u3680:
	goto	l3331
	
l582:	
	line	281
	
l3331:	
;PR22.c: 281: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	282
;PR22.c: 282: while(!RA2);
	goto	l583
	
l584:	
	
l583:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7
	goto	u3691
	goto	u3690
u3691:
	goto	l583
u3690:
	goto	l3333
	
l585:	
	line	283
	
l3333:	
;PR22.c: 283: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	286
	
l3335:	
;PR22.c: 286: i2c_master_data[0] = 'E';
	movlw	(045h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_mode1+0)+0
	movf	(??_mode1+0)+0,w
	movwf	(_i2c_master_data)
	line	287
	
l3337:	
;PR22.c: 287: i2c_start(0x42, 1, 0);
	clrf	(?_i2c_start)
	bsf	status,0
	rlf	(?_i2c_start),f
	movlw	low(0)
	movwf	0+(?_i2c_start)+01h
	movlw	high(0)
	movwf	(0+(?_i2c_start)+01h)+1
	movlw	(042h)
	fcall	_i2c_start
	line	289
	
l3339:	
;PR22.c: 289: lcd_clr();
	fcall	_lcd_clr
	line	290
	
l3341:	
;PR22.c: 290: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	291
	
l3343:	
;PR22.c: 291: send_string("Done");
	movlw	((STR_17-__stringbase))&0ffh
	fcall	_send_string
	line	292
	
l3345:	
;PR22.c: 292: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	293
;PR22.c: 293: break;
	goto	l3383
	line	295
;PR22.c: 295: case 3 :
	
l586:	
	line	298
	
l3347:	
;PR22.c: 298: i2c_master_data[0] = 'w';
	movlw	(077h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_mode1+0)+0
	movf	(??_mode1+0)+0,w
	movwf	(_i2c_master_data)
	line	299
	
l3349:	
;PR22.c: 299: i2c_master_data[1] = 0x01;
	clrf	0+(_i2c_master_data)+01h
	bsf	status,0
	rlf	0+(_i2c_master_data)+01h,f
	line	300
;PR22.c: 300: i2c_master_data[2] = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	0+(_i2c_master_data)+02h
	line	301
	
l3351:	
;PR22.c: 301: i2c_start(0x42, 3, 0);
	movlw	(03h)
	movwf	(??_mode1+0)+0
	movf	(??_mode1+0)+0,w
	movwf	(?_i2c_start)
	movlw	low(0)
	movwf	0+(?_i2c_start)+01h
	movlw	high(0)
	movwf	(0+(?_i2c_start)+01h)+1
	movlw	(042h)
	fcall	_i2c_start
	line	302
	
l3353:	
;PR22.c: 302: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	304
	
l3355:	
;PR22.c: 304: i2c_master_data[1] = 0x02;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_mode1+0)+0
	movf	(??_mode1+0)+0,w
	movwf	0+(_i2c_master_data)+01h
	line	305
	
l3357:	
;PR22.c: 305: i2c_start(0x42, 3, 0);
	movlw	(03h)
	movwf	(??_mode1+0)+0
	movf	(??_mode1+0)+0,w
	movwf	(?_i2c_start)
	movlw	low(0)
	movwf	0+(?_i2c_start)+01h
	movlw	high(0)
	movwf	(0+(?_i2c_start)+01h)+1
	movlw	(042h)
	fcall	_i2c_start
	line	306
	
l3359:	
;PR22.c: 306: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	308
	
l3361:	
;PR22.c: 308: i2c_master_data[1] = 0x03;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_mode1+0)+0
	movf	(??_mode1+0)+0,w
	movwf	0+(_i2c_master_data)+01h
	line	309
	
l3363:	
;PR22.c: 309: i2c_start(0x42, 3, 0);
	movlw	(03h)
	movwf	(??_mode1+0)+0
	movf	(??_mode1+0)+0,w
	movwf	(?_i2c_start)
	movlw	low(0)
	movwf	0+(?_i2c_start)+01h
	movlw	high(0)
	movwf	(0+(?_i2c_start)+01h)+1
	movlw	(042h)
	fcall	_i2c_start
	line	310
	
l3365:	
;PR22.c: 310: delay(10000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	027h
	movwf	(?_delay+1)
	movlw	010h
	movwf	(?_delay)

	fcall	_delay
	line	312
	
l3367:	
;PR22.c: 312: i2c_master_data[1] = 0x04;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_mode1+0)+0
	movf	(??_mode1+0)+0,w
	movwf	0+(_i2c_master_data)+01h
	line	313
	
l3369:	
;PR22.c: 313: i2c_start(0x42, 3, 0);
	movlw	(03h)
	movwf	(??_mode1+0)+0
	movf	(??_mode1+0)+0,w
	movwf	(?_i2c_start)
	movlw	low(0)
	movwf	0+(?_i2c_start)+01h
	movlw	high(0)
	movwf	(0+(?_i2c_start)+01h)+1
	movlw	(042h)
	fcall	_i2c_start
	line	315
	
l3371:	
;PR22.c: 315: lcd_clr();
	fcall	_lcd_clr
	line	316
	
l3373:	
;PR22.c: 316: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	317
	
l3375:	
;PR22.c: 317: send_string("Done");
	movlw	((STR_18-__stringbase))&0ffh
	fcall	_send_string
	line	318
	
l3377:	
;PR22.c: 318: delay(200000);
	movlw	0
	movwf	(?_delay+3)
	movlw	03h
	movwf	(?_delay+2)
	movlw	0Dh
	movwf	(?_delay+1)
	movlw	040h
	movwf	(?_delay)

	fcall	_delay
	line	319
;PR22.c: 319: break;
	goto	l3383
	line	321
;PR22.c: 321: case 4 :
	
l587:	
	line	323
;PR22.c: 323: return;
	goto	l588
	line	325
;PR22.c: 325: default : break;
	
l589:	
	goto	l3383
	line	326
	
l3379:	
;PR22.c: 326: }
	goto	l3383
	line	225
	
l570:	
	
l3381:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(mode1@submode),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Bytes Cycles
; simple_byte    13     7 (average)
; direct_byte    34    22 (fixed)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l3279
	xorlw	2^1	; case 2
	skipnz
	goto	l3321
	xorlw	3^2	; case 3
	skipnz
	goto	l3347
	xorlw	4^3	; case 4
	skipnz
	goto	l588
	goto	l3383

	line	326
	
l578:	
	goto	l3383
	line	327
	
l566:	
	line	328
	
l3383:	
;PR22.c: 327: }
;PR22.c: 328: delay(30000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	075h
	movwf	(?_delay+1)
	movlw	030h
	movwf	(?_delay)

	fcall	_delay
	goto	l3247
	line	330
	
l590:	
	line	181
	goto	l3247
	
l591:	
	line	331
	
l588:	
	return
	opt stack 0
GLOBAL	__end_of_mode1
	__end_of_mode1:
;; =============== function _mode1 ends ============

	signat	_mode1,88
	global	_spi_baro
psect	text382,local,class=CODE,delta=2
global __ptext382
__ptext382:

;; *************** function _spi_baro *****************
;; Defined at:
;;		line 640 in file "C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
;; Parameters:    Size  Location     Type
;;  register_add    1    wreg     unsigned char 
;;  data            1    0[BANK0 ] unsigned char 
;;  operation       2    1[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  register_add    1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       4       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_spi_start
;; This function is called by:
;;		_mode3
;; This function uses a non-reentrant model
;;
psect	text382
	file	"C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
	line	640
	global	__size_of_spi_baro
	__size_of_spi_baro	equ	__end_of_spi_baro-_spi_baro
	
_spi_baro:	
	opt	stack 4
; Regs used in _spi_baro: [wreg+status,2+status,0+pclath+cstack]
;spi_baro@register_address stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(spi_baro@register_address)
	line	641
	
l3225:	
;PR22.c: 641: RA3 = 0;
	bcf	(43/8),(43)&7
	line	642
	
l3227:	
;PR22.c: 642: spi_start(((register_address << 1) + !operation) << 1);
	movf	(spi_baro@register_address),w
	movwf	(??_spi_baro+0)+0
	movlw	01h
u3555:
	clrc
	rlf	(??_spi_baro+0)+0,f
	addlw	-1
	skipz
	goto	u3555
	movf	(spi_baro@operation+1),w
	iorwf	(spi_baro@operation),w
	movlw	0
	skipnz
	movlw	1
	addwf	0+(??_spi_baro+0)+0,w
	movwf	(??_spi_baro+1)+0
	addwf	(??_spi_baro+1)+0,w
	fcall	_spi_start
	line	644
	
l3229:	
;PR22.c: 644: if(operation == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((spi_baro@operation+1)),w
	iorwf	((spi_baro@operation)),w
	skipz
	goto	u3561
	goto	u3560
u3561:
	goto	l3233
u3560:
	line	645
	
l3231:	
;PR22.c: 645: spi_start(data);
	movf	(spi_baro@data),w
	fcall	_spi_start
	goto	l3241
	line	646
	
l691:	
	line	649
	
l3233:	
;PR22.c: 646: else
;PR22.c: 647: {
;PR22.c: 649: spi_baro_rcvb[0] = spi_start(0);
	movlw	(0)
	fcall	_spi_start
	movwf	(??_spi_baro+0)+0
	movf	(??_spi_baro+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_spi_baro_rcvb)
	line	651
	
l3235:	
;PR22.c: 651: if((register_address == 0x20) || (register_address == 0x21))
	movf	(spi_baro@register_address),w
	xorlw	020h
	skipnz
	goto	u3571
	goto	u3570
u3571:
	goto	l3239
u3570:
	
l3237:	
	movf	(spi_baro@register_address),w
	xorlw	021h
	skipz
	goto	u3581
	goto	u3580
u3581:
	goto	l3241
u3580:
	goto	l3239
	
l695:	
	line	653
	
l3239:	
;PR22.c: 653: spi_baro_rcvb[1] = spi_start(0);
	movlw	(0)
	fcall	_spi_start
	movwf	(??_spi_baro+0)+0
	movf	(??_spi_baro+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(_spi_baro_rcvb)+01h
	goto	l3241
	
l693:	
	goto	l3241
	line	654
	
l692:	
	line	655
	
l3241:	
;PR22.c: 654: }
;PR22.c: 655: RA3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	656
	
l696:	
	return
	opt stack 0
GLOBAL	__end_of_spi_baro
	__end_of_spi_baro:
;; =============== function _spi_baro ends ============

	signat	_spi_baro,12408
	global	_send_string
psect	text383,local,class=CODE,delta=2
global __ptext383
__ptext383:

;; *************** function _send_string *****************
;; Defined at:
;;		line 591 in file "C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_27(4), STR_26(6), STR_25(6), STR_24(5), 
;;		 -> STR_23(10), STR_22(6), STR_21(6), STR_20(17), 
;;		 -> STR_19(17), STR_18(5), STR_17(5), STR_16(5), 
;;		 -> STR_15(15), STR_14(5), STR_13(9), STR_12(16), 
;;		 -> STR_11(16), STR_10(16), STR_9(16), STR_8(3), 
;;		 -> STR_7(8), STR_6(8), STR_5(8), STR_4(3), 
;;		 -> STR_3(8), STR_2(5), STR_1(13), 
;; Auto vars:     Size  Location     Type
;;  s               1   10[COMMON] PTR const unsigned char 
;;		 -> STR_27(4), STR_26(6), STR_25(6), STR_24(5), 
;;		 -> STR_23(10), STR_22(6), STR_21(6), STR_20(17), 
;;		 -> STR_19(17), STR_18(5), STR_17(5), STR_16(5), 
;;		 -> STR_15(15), STR_14(5), STR_13(9), STR_12(16), 
;;		 -> STR_11(16), STR_10(16), STR_9(16), STR_8(3), 
;;		 -> STR_7(8), STR_6(8), STR_5(8), STR_4(3), 
;;		 -> STR_3(8), STR_2(5), STR_1(13), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_char
;; This function is called by:
;;		_main
;;		_mode1
;;		_mode2
;;		_mode3
;; This function uses a non-reentrant model
;;
psect	text383
	file	"C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
	line	591
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 4
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	592
	
l3215:	
;PR22.c: 592: while (s && *s)send_char (*s++);
	goto	l3221
	
l649:	
	
l3217:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_send_char
	
l3219:	
	movlw	(01h)
	movwf	(??_send_string+0)+0
	movf	(??_send_string+0)+0,w
	addwf	(send_string@s),f
	goto	l3221
	
l648:	
	
l3221:	
	movf	(send_string@s),w
	skipz
	goto	u3530
	goto	l653
u3530:
	
l3223:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3541
	goto	u3540
u3541:
	goto	l3217
u3540:
	goto	l653
	
l651:	
	goto	l653
	
l652:	
	line	593
	
l653:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_lcd_goto
psect	text384,local,class=CODE,delta=2
global __ptext384
__ptext384:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 572 in file "C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_config
;; This function is called by:
;;		_main
;;		_mode1
;;		_mode2
;;		_mode3
;; This function uses a non-reentrant model
;;
psect	text384
	file	"C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
	line	572
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 4
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@data stored from wreg
	movwf	(lcd_goto@data)
	line	573
	
l3207:	
;PR22.c: 573: if(data<16)
	movlw	(010h)
	subwf	(lcd_goto@data),w
	skipnc
	goto	u3521
	goto	u3520
u3521:
	goto	l3211
u3520:
	line	575
	
l3209:	
;PR22.c: 574: {
;PR22.c: 575: send_config(0x80+data);
	movf	(lcd_goto@data),w
	addlw	080h
	fcall	_send_config
	line	576
;PR22.c: 576: }
	goto	l642
	line	577
	
l640:	
	line	579
	
l3211:	
;PR22.c: 577: else
;PR22.c: 578: {
;PR22.c: 579: data=data-20;
	movf	(lcd_goto@data),w
	addlw	0ECh
	movwf	(??_lcd_goto+0)+0
	movf	(??_lcd_goto+0)+0,w
	movwf	(lcd_goto@data)
	line	580
	
l3213:	
;PR22.c: 580: send_config(0xc0+data);
	movf	(lcd_goto@data),w
	addlw	0C0h
	fcall	_send_config
	goto	l642
	line	581
	
l641:	
	line	582
	
l642:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_clr
psect	text385,local,class=CODE,delta=2
global __ptext385
__ptext385:

;; *************** function _lcd_clr *****************
;; Defined at:
;;		line 585 in file "C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_config
;;		_delay
;; This function is called by:
;;		_main
;;		_mode1
;;		_mode2
;;		_mode3
;; This function uses a non-reentrant model
;;
psect	text385
	file	"C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
	line	585
	global	__size_of_lcd_clr
	__size_of_lcd_clr	equ	__end_of_lcd_clr-_lcd_clr
	
_lcd_clr:	
	opt	stack 4
; Regs used in _lcd_clr: [wreg+status,2+status,0+pclath+cstack]
	line	586
	
l3205:	
;PR22.c: 586: send_config(0x01);
	movlw	(01h)
	fcall	_send_config
	line	587
;PR22.c: 587: delay(600);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	02h
	movwf	(?_delay+1)
	movlw	058h
	movwf	(?_delay)

	fcall	_delay
	line	588
	
l645:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clr
	__end_of_lcd_clr:
;; =============== function _lcd_clr ends ============

	signat	_lcd_clr,88
	global	_spi_start
psect	text386,local,class=CODE,delta=2
global __ptext386
__ptext386:

;; *************** function _spi_start *****************
;; Defined at:
;;		line 659 in file "C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    9[COMMON] unsigned char 
;;  i               1   11[COMMON] unsigned char 
;;  rcvb            1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_spi_baro
;; This function uses a non-reentrant model
;;
psect	text386
	file	"C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
	line	659
	global	__size_of_spi_start
	__size_of_spi_start	equ	__end_of_spi_start-_spi_start
	
_spi_start:	
	opt	stack 4
; Regs used in _spi_start: [wreg+status,2+status,0+pclath+cstack]
;spi_start@data stored from wreg
	movwf	(spi_start@data)
	line	660
	
l3175:	
;PR22.c: 660: unsigned char rcvb = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(spi_start@rcvb)
	line	663
;PR22.c: 661: unsigned char i;
;PR22.c: 663: for(i = 0; i < 8; i ++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(spi_start@i)
	
l3177:	
	movlw	(08h)
	subwf	(spi_start@i),w
	skipc
	goto	u3471
	goto	u3470
u3471:
	goto	l699
u3470:
	goto	l3201
	
l3179:	
	goto	l3201
	line	664
	
l699:	
	line	665
;PR22.c: 664: {
;PR22.c: 665: RC6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	line	666
	
l3181:	
;PR22.c: 666: delay(100);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	064h
	movwf	(?_delay)

	fcall	_delay
	line	667
	
l3183:	
;PR22.c: 667: RC7 = (data & 0x80)? 1: 0;
	btfsc	(spi_start@data),(7)&7
	goto	u3481
	goto	u3480
	
u3481:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(63/8),(63)&7
	goto	u3494
u3480:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(63/8),(63)&7
u3494:
	line	668
	
l3185:	
;PR22.c: 668: rcvb += RC5;
	movlw	0
	btfsc	(61/8),(61)&7
	movlw	1
	movwf	(??_spi_start+0)+0
	movf	(??_spi_start+0)+0,w
	addwf	(spi_start@rcvb),f
	line	669
	
l3187:	
;PR22.c: 669: data <<= 1;
	clrc
	rlf	(spi_start@data),f

	line	670
	
l3189:	
;PR22.c: 670: if(i < 7)
	movlw	(07h)
	subwf	(spi_start@i),w
	skipnc
	goto	u3501
	goto	u3500
u3501:
	goto	l3193
u3500:
	line	671
	
l3191:	
;PR22.c: 671: rcvb <<= 1;
	clrc
	rlf	(spi_start@rcvb),f

	goto	l3193
	
l701:	
	line	672
	
l3193:	
;PR22.c: 672: RC6 = 1;
	bsf	(62/8),(62)&7
	line	673
	
l3195:	
;PR22.c: 673: delay(100);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	064h
	movwf	(?_delay)

	fcall	_delay
	line	663
	
l3197:	
	movlw	(01h)
	movwf	(??_spi_start+0)+0
	movf	(??_spi_start+0)+0,w
	addwf	(spi_start@i),f
	
l3199:	
	movlw	(08h)
	subwf	(spi_start@i),w
	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l699
u3510:
	goto	l3201
	
l700:	
	line	675
	
l3201:	
;PR22.c: 674: }
;PR22.c: 675: return rcvb;
	movf	(spi_start@rcvb),w
	goto	l702
	
l3203:	
	line	676
	
l702:	
	return
	opt stack 0
GLOBAL	__end_of_spi_start
	__end_of_spi_start:
;; =============== function _spi_start ends ============

	signat	_spi_start,4217
	global	_send_char
psect	text387,local,class=CODE,delta=2
global __ptext387
__ptext387:

;; *************** function _send_char *****************
;; Defined at:
;;		line 562 in file "C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_mode1
;;		_mode2
;;		_mode3
;;		_send_string
;; This function uses a non-reentrant model
;;
psect	text387
	file	"C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
	line	562
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 5
; Regs used in _send_char: [wreg+status,2+status,0+pclath+cstack]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	563
	
l3163:	
;PR22.c: 563: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	564
	
l3165:	
;PR22.c: 564: PORTB=data;
	movf	(send_char@data),w
	movwf	(6)	;volatile
	line	565
	
l3167:	
;PR22.c: 565: RA5=1;
	bsf	(45/8),(45)&7
	line	566
	
l3169:	
;PR22.c: 566: delay(10);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	0Ah
	movwf	(?_delay)

	fcall	_delay
	line	567
	
l3171:	
;PR22.c: 567: RA5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7
	line	568
	
l3173:	
;PR22.c: 568: delay(10);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	0Ah
	movwf	(?_delay)

	fcall	_delay
	line	569
	
l637:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_send_config
psect	text388,local,class=CODE,delta=2
global __ptext388
__ptext388:

;; *************** function _send_config *****************
;; Defined at:
;;		line 552 in file "C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;;		_lcd_goto
;;		_lcd_clr
;; This function uses a non-reentrant model
;;
psect	text388
	file	"C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
	line	552
	global	__size_of_send_config
	__size_of_send_config	equ	__end_of_send_config-_send_config
	
_send_config:	
	opt	stack 4
; Regs used in _send_config: [wreg+status,2+status,0+pclath+cstack]
;send_config@data stored from wreg
	movwf	(send_config@data)
	line	553
	
l3151:	
;PR22.c: 553: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	554
	
l3153:	
;PR22.c: 554: PORTB=data;
	movf	(send_config@data),w
	movwf	(6)	;volatile
	line	555
	
l3155:	
;PR22.c: 555: RA5=1;
	bsf	(45/8),(45)&7
	line	556
	
l3157:	
;PR22.c: 556: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	557
	
l3159:	
;PR22.c: 557: RA5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7
	line	558
	
l3161:	
;PR22.c: 558: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	559
	
l634:	
	return
	opt stack 0
GLOBAL	__end_of_send_config
	__end_of_send_config:
;; =============== function _send_config ends ============

	signat	_send_config,4216
	global	___awmod
psect	text389,local,class=CODE,delta=2
global __ptext389
__ptext389:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_mode2
;; This function uses a non-reentrant model
;;
psect	text389
	file	"C:\Program Files\HI-TECH Software\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3115:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l3117:	
	btfss	(___awmod@dividend+1),7
	goto	u3381
	goto	u3380
u3381:
	goto	l3121
u3380:
	line	10
	
l3119:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3121
	line	12
	
l919:	
	line	13
	
l3121:	
	btfss	(___awmod@divisor+1),7
	goto	u3391
	goto	u3390
u3391:
	goto	l3125
u3390:
	line	14
	
l3123:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3125
	
l920:	
	line	15
	
l3125:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3401
	goto	u3400
u3401:
	goto	l3143
u3400:
	line	16
	
l3127:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3133
	
l923:	
	line	18
	
l3129:	
	movlw	01h
	
u3415:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3415
	line	19
	
l3131:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3133
	line	20
	
l922:	
	line	17
	
l3133:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3421
	goto	u3420
u3421:
	goto	l3129
u3420:
	goto	l3135
	
l924:	
	goto	l3135
	line	21
	
l925:	
	line	22
	
l3135:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3435
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3435:
	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l3139
u3430:
	line	23
	
l3137:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3139
	
l926:	
	line	24
	
l3139:	
	movlw	01h
	
u3445:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3445
	line	25
	
l3141:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3451
	goto	u3450
u3451:
	goto	l3135
u3450:
	goto	l3143
	
l927:	
	goto	l3143
	line	26
	
l921:	
	line	27
	
l3143:	
	movf	(___awmod@sign),w
	skipz
	goto	u3460
	goto	l3147
u3460:
	line	28
	
l3145:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3147
	
l928:	
	line	29
	
l3147:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l929
	
l3149:	
	line	30
	
l929:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___lldiv
psect	text390,local,class=CODE,delta=2
global __ptext390
__ptext390:

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\sources\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    9[COMMON] unsigned long 
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_mode3
;; This function uses a non-reentrant model
;;
psect	text390
	file	"C:\Program Files\HI-TECH Software\sources\lldiv.c"
	line	5
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
	opt	stack 6
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	9
	
l3091:	
	movlw	0
	movwf	(___lldiv@quotient+3)
	movlw	0
	movwf	(___lldiv@quotient+2)
	movlw	0
	movwf	(___lldiv@quotient+1)
	movlw	0
	movwf	(___lldiv@quotient)

	line	10
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u3311
	goto	u3310
u3311:
	goto	l3111
u3310:
	line	11
	
l3093:	
	clrf	(___lldiv@counter)
	bsf	status,0
	rlf	(___lldiv@counter),f
	line	12
	goto	l3097
	
l885:	
	line	13
	
l3095:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u3325:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u3325
	line	14
	movlw	(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	goto	l3097
	line	15
	
l884:	
	line	12
	
l3097:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u3331
	goto	u3330
u3331:
	goto	l3095
u3330:
	goto	l3099
	
l886:	
	goto	l3099
	line	16
	
l887:	
	line	17
	
l3099:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u3345:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u3345
	line	18
	
l3101:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u3355
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u3355
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u3355
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u3355:
	skipc
	goto	u3351
	goto	u3350
u3351:
	goto	l3107
u3350:
	line	19
	
l3103:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	20
	
l3105:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	goto	l3107
	line	21
	
l888:	
	line	22
	
l3107:	
	movlw	01h
u3365:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u3365

	line	23
	
l3109:	
	movlw	low(01h)
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u3371
	goto	u3370
u3371:
	goto	l3099
u3370:
	goto	l3111
	
l889:	
	goto	l3111
	line	24
	
l883:	
	line	25
	
l3111:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	goto	l890
	
l3113:	
	line	26
	
l890:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
;; =============== function ___lldiv ends ============

	signat	___lldiv,8316
	global	___llmod
psect	text391,local,class=CODE,delta=2
global __ptext391
__ptext391:

;; *************** function ___llmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\sources\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_mode3
;; This function uses a non-reentrant model
;;
psect	text391
	file	"C:\Program Files\HI-TECH Software\sources\llmod.c"
	line	5
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
	opt	stack 6
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	8
	
l3071:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u3251
	goto	u3250
u3251:
	goto	l3087
u3250:
	line	9
	
l3073:	
	clrf	(___llmod@counter)
	bsf	status,0
	rlf	(___llmod@counter),f
	line	10
	goto	l3077
	
l866:	
	line	11
	
l3075:	
	movlw	01h
	movwf	(??___llmod+0)+0
u3265:
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	decfsz	(??___llmod+0)+0
	goto	u3265
	line	12
	movlw	(01h)
	movwf	(??___llmod+0)+0
	movf	(??___llmod+0)+0,w
	addwf	(___llmod@counter),f
	goto	l3077
	line	13
	
l865:	
	line	10
	
l3077:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u3271
	goto	u3270
u3271:
	goto	l3075
u3270:
	goto	l3079
	
l867:	
	goto	l3079
	line	14
	
l868:	
	line	15
	
l3079:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u3285
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u3285
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u3285
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u3285:
	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l3083
u3280:
	line	16
	
l3081:	
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	skipc
	incfsz	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	skipc
	incfsz	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	skipc
	incfsz	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),f
	goto	l3083
	
l869:	
	line	17
	
l3083:	
	movlw	01h
u3295:
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	addlw	-1
	skipz
	goto	u3295

	line	18
	
l3085:	
	movlw	low(01h)
	subwf	(___llmod@counter),f
	btfss	status,2
	goto	u3301
	goto	u3300
u3301:
	goto	l3079
u3300:
	goto	l3087
	
l870:	
	goto	l3087
	line	19
	
l864:	
	line	20
	
l3087:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	goto	l871
	
l3089:	
	line	21
	
l871:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
;; =============== function ___llmod ends ============

	signat	___llmod,8316
	global	___awdiv
psect	text392,local,class=CODE,delta=2
global __ptext392
__ptext392:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[COMMON] int 
;;  dividend        2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] int 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       4       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_mode2
;; This function uses a non-reentrant model
;;
psect	text392
	file	"C:\Program Files\HI-TECH Software\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3033:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@sign)
	line	10
	
l3035:	
	btfss	(___awdiv@divisor+1),7
	goto	u3151
	goto	u3150
u3151:
	goto	l3039
u3150:
	line	11
	
l3037:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3039
	line	13
	
l851:	
	line	14
	
l3039:	
	btfss	(___awdiv@dividend+1),7
	goto	u3161
	goto	u3160
u3161:
	goto	l852
u3160:
	line	15
	
l3041:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3043:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l852:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3171
	goto	u3170
u3171:
	goto	l3063
u3170:
	line	20
	
l3045:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3051
	
l855:	
	line	22
	
l3047:	
	movlw	01h
	
u3185:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3185
	line	23
	
l3049:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3051
	line	24
	
l854:	
	line	21
	
l3051:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l3047
u3190:
	goto	l3053
	
l856:	
	goto	l3053
	line	25
	
l857:	
	line	26
	
l3053:	
	movlw	01h
	
u3205:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3205
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3215
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3215:
	skipc
	goto	u3211
	goto	u3210
u3211:
	goto	l3059
u3210:
	line	28
	
l3055:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3057:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3059
	line	30
	
l858:	
	line	31
	
l3059:	
	movlw	01h
	
u3225:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3225
	line	32
	
l3061:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3231
	goto	u3230
u3231:
	goto	l3053
u3230:
	goto	l3063
	
l859:	
	goto	l3063
	line	33
	
l853:	
	line	34
	
l3063:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3240
	goto	l3067
u3240:
	line	35
	
l3065:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3067
	
l860:	
	line	36
	
l3067:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l861
	
l3069:	
	line	37
	
l861:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___lwmod
psect	text393,local,class=CODE,delta=2
global __ptext393
__ptext393:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_mode1
;;		_mode2
;;		_mode3
;; This function uses a non-reentrant model
;;
psect	text393
	file	"C:\Program Files\HI-TECH Software\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l3011:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u3091
	goto	u3090
u3091:
	goto	l3029
u3090:
	line	9
	
l3013:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l3019
	
l729:	
	line	11
	
l3015:	
	movlw	01h
	
u3105:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3105
	line	12
	
l3017:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l3019
	line	13
	
l728:	
	line	10
	
l3019:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l3015
u3110:
	goto	l3021
	
l730:	
	goto	l3021
	line	14
	
l731:	
	line	15
	
l3021:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u3125
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u3125:
	skipc
	goto	u3121
	goto	u3120
u3121:
	goto	l3025
u3120:
	line	16
	
l3023:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l3025
	
l732:	
	line	17
	
l3025:	
	movlw	01h
	
u3135:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u3135
	line	18
	
l3027:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l3021
u3140:
	goto	l3029
	
l733:	
	goto	l3029
	line	19
	
l727:	
	line	20
	
l3029:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l734
	
l3031:	
	line	21
	
l734:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text394,local,class=CODE,delta=2
global __ptext394
__ptext394:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[COMMON] unsigned int 
;;  dividend        2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   11[COMMON] unsigned int 
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_mode1
;;		_mode2
;;		_mode3
;; This function uses a non-reentrant model
;;
psect	text394
	file	"C:\Program Files\HI-TECH Software\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l2987:	
	movlw	low(0)
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u3021
	goto	u3020
u3021:
	goto	l3007
u3020:
	line	11
	
l2989:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l2995
	
l719:	
	line	13
	
l2991:	
	movlw	01h
	
u3035:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3035
	line	14
	
l2993:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l2995
	line	15
	
l718:	
	line	12
	
l2995:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l2991
u3040:
	goto	l2997
	
l720:	
	goto	l2997
	line	16
	
l721:	
	line	17
	
l2997:	
	movlw	01h
	
u3055:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3055
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u3065
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u3065:
	skipc
	goto	u3061
	goto	u3060
u3061:
	goto	l3003
u3060:
	line	19
	
l2999:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l3001:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l3003
	line	21
	
l722:	
	line	22
	
l3003:	
	movlw	01h
	
u3075:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u3075
	line	23
	
l3005:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u3081
	goto	u3080
u3081:
	goto	l2997
u3080:
	goto	l3007
	
l723:	
	goto	l3007
	line	24
	
l717:	
	line	25
	
l3007:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l724
	
l3009:	
	line	26
	
l724:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_i2c_start
psect	text395,local,class=CODE,delta=2
global __ptext395
__ptext395:

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 596 in file "C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  size            1    0[COMMON] unsigned char 
;;  operation       2    1[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  address         1    5[COMMON] unsigned char 
;;  i               1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_mode1
;;		_mode2
;; This function uses a non-reentrant model
;;
psect	text395
	file	"C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
	line	596
	global	__size_of_i2c_start
	__size_of_i2c_start	equ	__end_of_i2c_start-_i2c_start
	
_i2c_start:	
	opt	stack 6
; Regs used in _i2c_start: [wreg-fsr0h+status,2+status,0]
;i2c_start@address stored from wreg
	line	599
	movwf	(i2c_start@address)
	
l2959:	
;PR22.c: 597: unsigned char i;
;PR22.c: 599: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	600
;PR22.c: 600: while(!SSPIF);
	goto	l656
	
l657:	
	
l656:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l656
u2900:
	
l658:	
	line	601
;PR22.c: 601: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	602
	
l2961:	
;PR22.c: 602: SSPBUF = address + operation;
	movf	(i2c_start@operation),w
	addwf	(i2c_start@address),w
	movwf	(19)	;volatile
	line	603
;PR22.c: 603: while(!SSPIF);
	goto	l659
	
l660:	
	
l659:	
	btfss	(99/8),(99)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l659
u2910:
	
l661:	
	line	604
;PR22.c: 604: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	605
	
l2963:	
;PR22.c: 605: if(operation == 0)
	movf	((i2c_start@operation+1)),w
	iorwf	((i2c_start@operation)),w
	skipz
	goto	u2921
	goto	u2920
u2921:
	goto	l2973
u2920:
	line	607
	
l2965:	
;PR22.c: 606: {
;PR22.c: 607: for(i = 0; i < size; i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(i2c_start@i)
	goto	l2971
	line	608
	
l664:	
	line	609
	
l2967:	
;PR22.c: 608: {
;PR22.c: 609: SSPBUF = i2c_master_data[i];
	movf	(i2c_start@i),w
	addlw	_i2c_master_data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(19)	;volatile
	line	610
;PR22.c: 610: while(!SSPIF);
	goto	l665
	
l666:	
	
l665:	
	btfss	(99/8),(99)&7
	goto	u2931
	goto	u2930
u2931:
	goto	l665
u2930:
	
l667:	
	line	611
;PR22.c: 611: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	607
	
l2969:	
	movlw	(01h)
	movwf	(??_i2c_start+0)+0
	movf	(??_i2c_start+0)+0,w
	addwf	(i2c_start@i),f
	goto	l2971
	
l663:	
	
l2971:	
	movf	(i2c_start@size),w
	subwf	(i2c_start@i),w
	skipc
	goto	u2941
	goto	u2940
u2941:
	goto	l2967
u2940:
	
l668:	
	line	613
;PR22.c: 612: }
;PR22.c: 613: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	614
;PR22.c: 614: while(!SSPIF);
	goto	l669
	
l670:	
	
l669:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l669
u2950:
	
l671:	
	line	615
;PR22.c: 615: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	616
;PR22.c: 616: }
	goto	l688
	line	617
	
l662:	
	
l2973:	
;PR22.c: 617: else if(operation == 1)
	movlw	01h
	xorwf	(i2c_start@operation),w
	iorwf	(i2c_start@operation+1),w
	skipz
	goto	u2961
	goto	u2960
u2961:
	goto	l688
u2960:
	line	619
	
l2975:	
;PR22.c: 618: {
;PR22.c: 619: for(i = 0; i < size; i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(i2c_start@i)
	goto	l2985
	line	620
	
l675:	
	line	621
;PR22.c: 620: {
;PR22.c: 621: RCEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7
	line	622
;PR22.c: 622: while(!SSPIF);
	goto	l676
	
l677:	
	
l676:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l676
u2970:
	
l678:	
	line	623
;PR22.c: 623: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	624
	
l2977:	
;PR22.c: 624: i2c_master_rcvb[i] = SSPBUF;
	movf	(19),w	;volatile
	movwf	(??_i2c_start+0)+0
	movf	(i2c_start@i),w
	addlw	_i2c_master_rcvb&0ffh
	movwf	fsr0
	movf	(??_i2c_start+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	625
	
l2979:	
;PR22.c: 625: if(i == (size - 1))
	movf	(i2c_start@size),w
	addlw	low(-1)
	movwf	(??_i2c_start+0)+0
	movlw	high(-1)
	skipnc
	movlw	(high(-1)+1)&0ffh
	movwf	((??_i2c_start+0)+0)+1
	movf	(i2c_start@i),w
	xorwf	0+(??_i2c_start+0)+0,w
	iorwf	1+(??_i2c_start+0)+0,w
	skipz
	goto	u2981
	goto	u2980
u2981:
	goto	l679
u2980:
	line	626
	
l2981:	
;PR22.c: 626: ACKDT = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7
	goto	l680
	line	627
	
l679:	
	line	628
;PR22.c: 627: else
;PR22.c: 628: ACKDT = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
	
l680:	
	line	629
;PR22.c: 629: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7
	line	630
;PR22.c: 630: while(!SSPIF);
	goto	l681
	
l682:	
	
l681:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l681
u2990:
	
l683:	
	line	631
;PR22.c: 631: SSPIF = 0;
	bcf	(99/8),(99)&7
	line	619
	
l2983:	
	movlw	(01h)
	movwf	(??_i2c_start+0)+0
	movf	(??_i2c_start+0)+0,w
	addwf	(i2c_start@i),f
	goto	l2985
	
l674:	
	
l2985:	
	movf	(i2c_start@size),w
	subwf	(i2c_start@i),w
	skipc
	goto	u3001
	goto	u3000
u3001:
	goto	l675
u3000:
	
l684:	
	line	633
;PR22.c: 632: }
;PR22.c: 633: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	634
;PR22.c: 634: while(!SSPIF);
	goto	l685
	
l686:	
	
l685:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(99/8),(99)&7
	goto	u3011
	goto	u3010
u3011:
	goto	l685
u3010:
	
l687:	
	line	635
;PR22.c: 635: SSPIF = 0;
	bcf	(99/8),(99)&7
	goto	l688
	line	636
	
l673:	
	goto	l688
	line	637
	
l672:	
	
l688:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
;; =============== function _i2c_start ends ============

	signat	_i2c_start,12408
	global	_delay
psect	text396,local,class=CODE,delta=2
global __ptext396
__ptext396:

;; *************** function _delay *****************
;; Defined at:
;;		line 547 in file "C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
;; Parameters:    Size  Location     Type
;;  data            4    0[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_mode1
;;		_mode2
;;		_mode3
;;		_send_config
;;		_send_char
;;		_lcd_clr
;;		_spi_start
;; This function uses a non-reentrant model
;;
psect	text396
	file	"C:\Users\Phang\Desktop\9.80\PR 22\PR22.c"
	line	547
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	548
	
l2953:	
;PR22.c: 548: for( ;data>0;data--);
	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u2871
	goto	u2870
u2871:
	goto	l2957
u2870:
	goto	l631
	
l2955:	
	goto	l631
	
l629:	
	
l2957:	
	movlw	01h
	movwf	((??_delay+0)+0)
	movlw	0
	movwf	((??_delay+0)+0+1)
	movlw	0
	movwf	((??_delay+0)+0+2)
	movlw	0
	movwf	((??_delay+0)+0+3)
	movf	0+(??_delay+0)+0,w
	subwf	(delay@data),f
	movf	1+(??_delay+0)+0,w
	skipc
	incfsz	1+(??_delay+0)+0,w
	goto	u2885
	goto	u2886
u2885:
	subwf	(delay@data+1),f
u2886:
	movf	2+(??_delay+0)+0,w
	skipc
	incfsz	2+(??_delay+0)+0,w
	goto	u2887
	goto	u2888
u2887:
	subwf	(delay@data+2),f
u2888:
	movf	3+(??_delay+0)+0,w
	skipc
	incfsz	3+(??_delay+0)+0,w
	goto	u2889
	goto	u2880
u2889:
	subwf	(delay@data+3),f
u2880:

	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u2891
	goto	u2890
u2891:
	goto	l2957
u2890:
	goto	l631
	
l630:	
	line	549
	
l631:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text397,local,class=CODE,delta=2
global __ptext397
__ptext397:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
