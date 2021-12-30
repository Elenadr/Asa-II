#-- Escribe un programa para calcular todos los términos de la serie de fibonacci hasta el N, 
#-- donde N es una constante con el valor 10. Los dos primeros términos 0 y 1, 
#-- se imprimen directamente (como la cadena "0,1,") y el resto los calcula el programa

	.include "servicios.asm"
	.data
msg:	.string "0,1,"	

	.text
	#-- Maximo termino
	.eqv N 10
	#-- Los registros t0 y t1 contienen los terminos anteriores
	#-- de fibonacci. Inicialmente: t0=0, t1 = 1
	li t0, 0
	li t1, 1
	
	#-- El registro t2 contiene el numero del termino actual
	li t2, 2
	
	#-- Imprimir los terminos iniciales
	la a0, msg
	li a7, PRINT_STRING
	ecall
	bucle:	
	#-- Cacular el termino actual: t3 = t0 + t1
	add t3, t0, t1
	 
	#-- Imprimir el termino actual
	mv a0, t3
	li a7, PRINT_INT
	ecall
	
	#-- Si se ha llegado al término N, terminar
	li t4, N
	beq t2, t4, fin
	
	#-- No es el ultimo
	#-- Incrementar el numero de termino
	addi t2, t2, 1
	
	#-- Imprimir la ',' de separacion
	li a0, ','
	li a7, PRINT_CHAR
	ecall
	
	#-- Preparase para calcular los siguientes términos
	mv t0, t1
	mv t1, t3
	
	#-- Repetir
	b bucle

fin:
	#-- Punto de salida
	li, a7, EXIT
	ecall