#-- Programa principal

		
	    .data
msg1:   .string "\nIntroduce el caracter: "
msg2:   .string "\nIntroduce la cantidad: "
	
	
        .include "servicios.s"

	.text
	
	#----- PROGRAMA PRINCIPAL ----------------
	#-- Imprimir mensaje desde programa principal
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	#-- LEER NUMERO
	li a7, READ_CHAR
	ecall
	#-- muevo a t0 el valor de a0
	#-- En t0. tengo el char
	mv t0,a0
	#-- Imprimir mensaje desde programa principal
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	#-- LEER NUMERO
	li a7, READ_INT
	ecall
	#-- En t1. tengo el int
	mv t1,a0
	
	#-- LLamar a la subrutina
	#-- llAMAR A la funcion linea pasandole como parametro a0
	#-- a0: car
	#-- a1: x
	mv a0, t0
	mv a1, t1
	jal linea3

	
	
	#-- Terminar (Punto de salida)
	li a7, EXIT
	ecall
	#-----------------------------------------
