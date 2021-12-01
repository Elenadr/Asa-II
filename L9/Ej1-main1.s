	
	    .data
msg_main:   .string "Comienza el programa principal\n"
	
	
        .include "servicios.s"

	.text
	
	#----- PROGRAMA PRINCIPAL ----------------
	
	#-- Imprimir mensaje desde programa principal
	la a0, msg_main
	li a7, PRINT_STRING
	ecall
	
	#-- LLamar a la subrutina
	jal saludar
	jal saludar
	#-- Terminar (Punto de salida)
	li a7, EXIT
	ecall
	#-----------------------------------------
