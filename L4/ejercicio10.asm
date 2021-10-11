#-- ¿Sabrías hacer un programa que muestre una animación en el display de 7 segmentos en la que sólo hay un único segmento encendido 
#-- cada vez, que va recorriendo el perímetro en sentido horario? 
#-- Primero se enciende el segmento a, luego el b, luego el c... y finalmente el f (el g no se enciende nunca). 
#-- Se repite en un bucle infinito. Usa sólo las instrucciones que conocemos hasta el momento

	.eqv E1 0
	.eqv E2 4
	.eqv E3 8
	.eqv E4 0xC
	.eqv E5 0x10
	.eqv E6 0x14
	
	.eqv SEGA 0x01  #-- sEGMENTO A
	.eqv SEGB 0x02  #-- sEGMENTO B
	.eqv SEGC 0x04  #-- sEGMENTO C
	.eqv SEGD 0x08  #--sEGMENTO D
	.eqv SEGE 0x10  #-- sEGMENTO E
	.eqv SEGF 0x20  #-- sEGMENTO F

	
	.eqv DISPLAY 0xFFFF0010
	
	.data
tabla:  .word SEGA  #-- E1
	.word SEGB  #-- E2
	.word SEGC  #-- E3
	.word SEGD  #-- E4
	.word SEGE  #-- E5
	.word SEGF  #-- E6
	
	.text
	
	la x5, tabla
	li x6, DISPLAY

bucle:
	lw x10, E1(x5)	 #-- Se almacena bebecafe
	sw x10, 0(x6)
	
	lw x10, E2(x5)	#-- Se almacena faceb00c
	sw x10, 0(x6)
	
	lw x10, E3(x5)	#-- Se almacena 00fabada
	sw x10, 0(x6)
	
	lw x10, E4(x5) #-- Se almacena cacabaca
	sw x10, 0(x6)
	
	lw x10, E5(x5)
	sw x10, 0(x6)
	
	lw x10, E6(x5)
	sw x10, 0(x6)
	
	b bucle
