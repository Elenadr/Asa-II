#-- Escribe el programa del cálculo de la secuencia de Fibonacci , que ya has hecho en otros ejericicios, 
#-- pero usando los registros con nombres ABI e imprimiendo cada término por la consola, separados por el carácter ','. 
#-- No hay que imprimir los dos términos iniciales de fibonacci

	#-- Códigos de servicio
	.eqv PRINT_INT 1
	.eqv PRINT_CHAR 11

	#-- Valores de fibonacci iniciales
	.eqv INI0  0
	.eqv INI1  1
	#-- Segemtno de códigp
	.text
	# INicializamos los registros temporales a 0 y a 1
	li t0, INI0
	li t1, INI1
	
	#-- Bucle principal
bucle:
	#-- Incrementar contador principal
	
	add t2, t0, t1   #-- Guardo en t2, la suma de t0 + t1
	# IMrpimo els igueitne termino
	mv a0, t2
	li a7, PRINT_INT
	ecall
	#-- Imprimir el salto de linea
	li a0, ','
	li a7, PRINT_CHAR
	ecall
	
	#-- Actualizar los terminos
	mv t0, t1
	mv t1, t2

	
	#-- Repetir el bucle
	b bucle