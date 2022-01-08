#-- Programa principal
#-- pide al usuario que introduzca el carácter, la anchura y la altura. 
#-- Luego llama a box() co nestos parámetros para imprimir el rectángulo en la consola. Por último termina

	.include "servicios.s"

	.data
msg:	.string "\nCaracter: "
msg1:	.string "\nAnchura: "
msg2:	.string "Altura: "
	
	.text
	
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- Leer el caracter
	li a7, READ_CHAR
	ecall
	mv s0, a0
	
	#-- Imprimir el mensaje
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Leer el anchura
	li a7, READ_INT
	ecall
	#-- guardar anchura en s1
	mv s1, a0
	
	#-- Imprimir el mensaje altura
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	#-- Leer el enterp altura
	li a7, READ_INT
	ecall
	#--altura
	mv a2, a0
	#-- anchura
	mv a1, s1
	#-- caracter
	mv a0, s0
	
	#-- Llamar a la funcion box
	jal box8
		
	#-- Terminar
	li a7, EXIT
	ecall
