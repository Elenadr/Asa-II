	.include "servicios.s"
	.globl saludar
	.data
msg_saludo: .string "Hola!\n"
	.text
#---- SUBRUTINA: saludar()
saludar:

        #-- Saludar
	la a0, msg_saludo
	li a7, PRINT_STRING
	ecall

	#-- Punto salida
	ret
	