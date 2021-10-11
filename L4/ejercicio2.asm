	.eqv E1 0
	.eqv E2 4
	.eqv E3 8
	.eqv E4 0xC
	
	.data
tabla:	.word 0xBEBECAFE, 0xFACEB00C, 0x00FABADA, 0xCACABACA
	
	.text
	
	la x5, tabla
	
	lw x10, E1(x5)	 #-- Se almacena bebecafe
	lw x11, E2(x5)	#-- Se almacena faceb00c
	lw x12, E3(x5)	#-- Se almacena 00fabada
	lw x13, E4(x5) #-- Se almacena cacabaca
	
	#-- Terminar
	li a7, 10
	ecall
