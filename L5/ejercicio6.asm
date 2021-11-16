# -- Escribe un programa que pida al usuario cuatro valores enteros y los deposite consecutivamente en el segmento de datos. 
#-- Luego los debe leer de memoria e imprimirlos en la consola. Tras cada número se debe sacar una coma "," por la consola. 
#-- Todavía no sabemos hacer bucles, así que las escrituras y las lecturas se hacen para las 4 posiciones de memoria, una detrás de otra 
#-- Para probarlo, bajar la velocidad a 29 instrucciones por segundo. De esta forma podrás ver de manera interactiva cómo se van situando 
#-- los valores en sus posiciones de memoria correspondientes
#-- Ejercicio 6: escribir en memoria las 4 palabras introducidas por
#-- el usuario. Luego leerlas e imprimirlas en la consola


	#-- Códigos de servicio
	.eqv EXIT      10
	.eqv READ_INT  5
	.eqv PRINT_INT 1
	.eqv PRINT_CHAR 11

	#-- Segmento de datos
	.data
datos:


	.text
	
	#-- t0 es un puntero al comienzo del segmento de datos
	la t0, datos
	
	#-- Pedir valor al usuario
	li a7, READ_INT
	ecall
	
	#-- Almacenar el numero en la direccion indicada por t0
	sw a0, 0(t0)
	
	#-- Incrementar t0 para apuntar a la siguiente palabra
	addi t0, t0, 4
	
	#-- Pedir valor al usuario
	li a7, READ_INT
	ecall
	
	#-- Almacenar el numero en la direccion indicada por t0
	sw a0, 0(t0)
	
	#-- Incrementar t0 para apuntar a la siguiente palabra
	addi t0, t0, 4
	
	#-- Pedir valor al usuario
	li a7, READ_INT
	ecall
	
	#-- Almacenar el numero en la direccion indicada por t0
	sw a0, 0(t0)
	
	#-- Incrementar t0 para apuntar a la siguiente palabra
	addi t0, t0, 4
	
	#-- Pedir valor al usuario
	li a7, READ_INT
	ecall
	
	#-- Almacenar el numero en la direccion indicada por t0
	sw a0, 0(t0)
	
	#-- Incrementar t0 para apuntar a la siguiente palabra
	addi t0, t0, 4
	
	#------------- Ya estan todos los valores en la memoria
	#-- Ahora los leemos y los imprimimos
	
	#-- t0 apunta al comienzo de los datos
	la t0, datos
	
	#-- Leer palabra
	lw a0, 0(t0)
	
	#-- Imprimir palabra en la consola
	li a7, PRINT_INT
	ecall
	
	#-- Imprimir una coma
	li a0, ','
	li a7, PRINT_CHAR
	ecall
	
	#-- Incrementar puntero t0
	addi t0, t0, 4
	
	#-- Leer palabra
	lw a0, 0(t0)
	
	#-- Imprimir palabra en la consola
	li a7, PRINT_INT
	ecall
	
	#-- Imprimir una coma
	li a0, ','
	li a7, PRINT_CHAR
	ecall
	
	#-- Incrementar puntero t0
	addi t0, t0, 4
	
	#-- Leer palabra
	lw a0, 0(t0)
	
	#-- Imprimir palabra en la consola
	li a7, PRINT_INT
	ecall
	
	#-- Imprimir una coma
	li a0, ','
	li a7, PRINT_CHAR
	ecall
	
	#-- Incrementar puntero t0
	addi t0, t0, 4
	
	#-- Leer palabra
	lw a0, 0(t0)
	
	#-- Imprimir palabra en la consola
	li a7, PRINT_INT
	ecall
	
	#-- Incrementar puntero t0
	addi t0, t0, 4
	
	#-- Terminar
	li a7, EXIT
	ecall
