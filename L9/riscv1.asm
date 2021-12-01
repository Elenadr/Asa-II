	
	    .data
msg_main:   .string "Comienza el programa principal\n"
msg_saludo: .string "Hola!\n"	
	
        .include "servicios.asm"

	.text
	
	#----- PROGRAMA PRINCIPAL ----------------
	
	#-- Imprimir mensaje desde programa principal
	la a0, msg_main
	li a7, PRINT_STRING
	ecall
	
	#-- LLamar a la subrutina
	jal saludar
	
	#-- Terminar (Punto de salida)
	li a7, EXIT
	ecall
	#-----------------------------------------
#-- Subrutina: saludar()
saludar:
	#-- Saludar
	la a0, msg_saludo
	li a7, PRINT_STRING
	ecall
	#-- Punto de salida
	ret 