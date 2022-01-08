#-- Programa principal
#-- El programa principal pide al usuario que introduzca las coordenadas x,y y luego llama a la función operar()

	.include "servicios.s"
	
	.data
msg:	.string "Coordenada x: "
msg1:	.string "Coordenada y: "
	
	.text
	
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- Leer el enterp
	li a7, READ_INT
	ecall
	mv s0, a0
	
	#-- Imprimir el mensaje
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Leer el enterp
	li a7, READ_INT
	ecall
	
	mv a1, a0
	mv a0, s0
	#-- Llamar a la funcion tarea1
	jal operar6
		
	#-- Terminar
	li a7, EXIT
	ecall
