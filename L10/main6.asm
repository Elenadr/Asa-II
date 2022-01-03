#-- Programa principal
#-- pide al usuario que introduzca las coordenadas x,y y luego llama a la función operar()

	 .data
	 
msg1:   .string "\nCoordenada x: "
msg2:   .string "\nCoordenada x: "

        .include "servicios.s"

	.text
	
	#----- PROGRAMA PRINCIPAL ----------------
	#-- Imprimir mensaje desde programa principal
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir coordenada x
	li a7, READ_INT
	ecall
	
	#-- Guardar cordenada x en s0
	mv s0, a0

	#-- Imprimir mensaje desde coordenada y
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir coordenada y
	li a7, READ_INT
	ecall
	
	#-- Guardar cordenada y en a1
	mv a1, a0
	mv a0, s0

	jal operar
	
	#-- Terminar (Punto de salida)
	li a7, EXIT
	ecall
	#-----------------------------------------