#-- Programa principal
#-- pide al usuario que introduzca una cadena inicial y la clave. 
#-- Imprime primero la cadena sin cifrar. Luego llama a cifrar() y la imprime cifrada. 
#-- Después llama a descifrar() y la imprime descifrada. Finalmente termina

	.include "servicios.s"
	.eqv MAX 1024
	.data
cadena:  .space MAX
clave:   .space MAX

msg:	.string "\nCadena: "
msg1:	.string "Clave (0-255): "
msg2:	.string "Cadena sin cifrar: "
msg3:	.string "Cadena cifrada: "
msg4:	.string "Cadena descifrada: "	

	.text
	
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- Leemos la cadena por el teclado
	la a0, cadena
	li a1, MAX
	li a7, READ_STRING
	ecall
		
	#-- Imprimir el mensaje
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Leemos prejifo
	li a7, READ_INT
	ecall
	#-- Guardar a0 en s0 // LA CLAVE
	mv s0, a0
	
	#-- Imprimir el mensaje ORIGINAL
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimir la cadena sin cifrar
	la a0, cadena
	li a7, PRINT_STRING
	ecall 		
	
	#-- llama a cifrar
	# movemos puntero a la cadena a a0
	# -- movemos clave a a1
	la a0, cadena
	mv a1, s0 
	jal cifrar

	#-- Imprimir el mensaje de cad cifrada
	la a0, msg3
	li a7, PRINT_STRING
	ecall
	#-- Imprimir la cadena cifrada
	la a0, cadena
	li a7, PRINT_STRING
	ecall 
	
	# llama a descifrar
	jal descifrar
	
	#-- Imprimir el mensaje de cad descifrada
	la a0, msg4
	li a7, PRINT_STRING
	ecall
	#-- Imprimir la cadena descifrada
	la a0, cadena
	li a7, PRINT_STRING
	ecall 
	#-- Imprimir salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	

	#-- Terminar
	li a7, EXIT
	ecall
