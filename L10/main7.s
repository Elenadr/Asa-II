#-- Programa principal
#-- El programa principal llamará a la función operar(x,y,10,100), usando los valores constantes 
#-- 10 y 100 para el incremento de la x y la y respectivamente

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
	li a2, 10
	li a3, 100
	jal operar7
		
	#-- Terminar
	li a7, EXIT
	ecall
