#-- Amplía la tabla para contener 10 valores, que hagan aparecer los dígitos del 0 al 9 en el display. 
#-- El programa deberá leer los valores, uno a uno y mandarlos al display, para ver los dígitos del 0 al 9 en el display. Luego termina

#-- Escribe un programa, similar al del ejercicio 2, donde se defina una tabla con 4 palabras, accesible mediante los identificadores E1, E2, E3 y E4. 
#-- Esta tabla deberá estar inicializada con los valores que hacen aparecer los dígitos 1,2,3 y 4 en el display de 7 segmentos 
#-- (calculados en el ejericico anterior). El valor de estos dígitos estará definido también con identificadores: DIG1, DIG2, DIG3 y DIG4


#-- El programa leerá cada uno de estos valores de la tabla y los enviará al display, uno detrás de otro, 
# -- de forma que al simularlo paso a paso veremos los dígitos 1,2,3 y 4

	.eqv E1 0
	.eqv E2 4
	.eqv E3 8
	.eqv E4 0xC
	.eqv E5 0x10
	.eqv E6 0x14
	.eqv E7 0x18
	.eqv E8 0x1C
	.eqv E9 0x20
	.eqv E10 0x24
	
	.eqv DIG0 0x3F  #-- Digito 0
	.eqv DIG1 0x06  #-- Digito 1
	.eqv DIG2 0x5B  #-- Digito 2
	.eqv DIG3 0x4F  #-- Digito 3
	.eqv DIG4 0x66  #-- Digito 4
	.eqv DIG5 0x6D  #-- Digito 5
	.eqv DIG6 0x7D  #-- Digito 6
	.eqv DIG7 0x07  #-- Digito 7
	.eqv DIG8 0x7F  #-- Digito 8
	.eqv DIG9 0x6F  #-- Digito 9
	
	.eqv DISPLAY 0xFFFF0010
	
	.data
tabla:  .word DIG0  #-- E1
	.word DIG1  #-- E2
	.word DIG2  #-- E3
	.word DIG3  #-- E4
	.word DIG4  #-- E5
	.word DIG5  #-- E6
	.word DIG6  #-- E7
	.word DIG7  #-- E8 
	.word DIG8  #-- E9
	.word DIG9  #-- E10
	
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
	
	lw x10, E5(x5)
	sw x10, 0(x6)
	
	lw x10, E6(x5)
	sw x10, 0(x6)
	
	lw x10, E7(x5)
	sw x10, 0(x6)
	
	lw x10, E8(x5)
	sw x10, 0(x6)
	
	lw x10, E9(x5)
	sw x10, 0(x6)
	
	lw x10, E10(x5)
	sw x10, 0(x6)
	
	#-- Terminar
	li a7, 10
	ecall
