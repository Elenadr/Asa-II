# -- Modifica el programa del ejercicio 7 para que se impriman los valores del segmento de datos en hexadecimal usando el servicio PrintHex. 
#-- Incializa el segmento de datos con las palabras: 10,11,12,13,14,15,127,255,0x00FABADA, 0xCAFEBACA

	#-- Códigos de servicio
	.eqv EXIT 10
	.eqv PRINT_INT 1
	.eqv PRINT_CHAR 11
	.eqv PRINT_INT_HEX  34

	#-- Segmento de datos
	.data
datos:	.word 1,2,3,4,5,6,7,8,9,10,0x00FABADA, 0xCAFEBACA

	.text

	#-- t0 es un puntero al comienzo del segmento de datos
	la t0, datos
	
bucle:	
	#-- Leer palabra
	lw a0, 0(t0)
	#-- Imprimir el numero en la consola
	li a7, PRINT_INT_HEX
	ecall
	
	#-- Imprimir el salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Incrementar el puntero
	addi t0, t0, 4
	 
	
	b bucle