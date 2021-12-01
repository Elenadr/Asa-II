#-- Programa principal

		
	    .data
msg_main:   .string "\nIntroduce el número de asteriscos: "
	
	
        .include "servicios.s"

	.text
	
	#----- PROGRAMA PRINCIPAL ----------------
	
	#-- Imprimir mensaje desde programa principal
	la a0, msg_main
	li a7, PRINT_STRING
	ecall
	#-- LEER NUMERO
	li a7, READ_INT
	ecall
	
	#-- LLamar a la subrutina
	#-- llAMAR A la funcion linea pasandole como parametro a0
	jal linea

	
	
	#-- Terminar (Punto de salida)
	li a7, EXIT
	ecall
	#-----------------------------------------
