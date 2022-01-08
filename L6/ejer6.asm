#-- Programa principal
#--Escribe un programa en el que se defina la cadena "Hola\n" en tiempo de compilación.
#--  El programa la imprimirá en la consola. A continuación accederá a memoria y cambiará 
#-- el carácter 'a' por una 'i', e imprimirá la nueva cadena.

	.include "servicios.asm"

	.data

msg:	.string "Hola\n"


	.text
	
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- MODIFICAR A POR I
	li t1, 'i'
	sb t1, 3(a0)
	
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall
