#-- Escribe un programa para leer un caracter usando el servicio ReadChar. El programa se ejecuta en un bucle infinito.
#-- Lee el carácter, lo incrementa en una unidad , lo imprime en la consola (es un cifrado muy simple) e imprime un salto de línea

	#-- Códigos de servicio
	.eqv EXIT 10
	.eqv READ_CHAR 12
	.eqv PRINT_CHAR 11

	#-- Segmento de datos


	.text

	
bucle:	
	li a7, READ_CHAR 
	ecall
	#-- Imprimir el numero en la consola

	
	#-- Incrementar el caracter recibido en una unidad
	addi a0, a0, 1
	li a7, PRINT_CHAR
	ecall
	#-- Imprimir el salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Incrementar el puntero
	addi t0, t0, 4
	 
	
	b bucle