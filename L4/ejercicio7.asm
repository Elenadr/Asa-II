#-- Escribe un programa, similar al del ejercicio 2, donde se defina una tabla con 4 palabras, accesible mediante los identificadores E1, E2, E3 y E4. 
#-- Esta tabla deberá estar inicializada con los valores que hacen aparecer los dígitos 1,2,3 y 4 en el display de 7 segmentos 
#-- (calculados en el ejericico anterior). El valor de estos dígitos estará definido también con identificadores: DIG1, DIG2, DIG3 y DIG4


#-- El programa leerá cada uno de estos valores de la tabla y los enviará al display, uno detrás de otro, 
# -- de forma que al simularlo paso a paso veremos los dígitos 1,2,3 y 4

	.eqv E1 0
	.eqv E2 4
	.eqv E3 8
	.eqv E4 0xC
	
	.eqv DIGIT1 0x06
	.eqv DIGIT2 0x5B
	.eqv DIGIT3 0x4F
	.eqv DIGIT4 0x66
	
	.eqv DISPLAY 0xFFFF0010
	
	.data
tabla:	
	.word DIGIT1
	.word DIGIT2
	.word DIGIT3
	.word DIGIT4
	
	.text
	
	la x5, tabla
	li x6, DISPLAY
	
	lw x10, E1(x5)	 #-- Se almacena bebecafe
	sw x10, 0(x6)
	lw x10, E2(x5)	#-- Se almacena faceb00c
	sw x10, 0(x6)
	lw x10, E3(x5)	#-- Se almacena 00fabada
	sw x10, 0(x6)
	lw x10, E4(x5) #-- Se almacena cacabaca
	sw x10, 0(x6)
	
	#-- Terminar
	li a7, 10
	ecall
