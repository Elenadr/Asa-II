#-- Escribe un programa que pida al usuario que introduzca un número entero (n), 
#-- se impriman en pantalla los números de 1 hasta n, separados por una el carácter ','y termine. 
#-- En esta animación se muestra un ejemplo de funcionamiento del programa. 
#-- Se ejecuta dos veces. En la primera se introduce n=5, y e la segunda n=10:

	.include "servicios.asm"
	.data
msg:	.string "Introduce un numero (n): "
long:   .string "Longitud: "
	
	.text

	#-- Imprimir mensaje 
	la a0, msg
	li a7, PRINT_STRING
	ecall
	#-- Pedir al user un int
	li a7, READ_INT
	ecall
	#-- Moverlo del registro a0, al t0
	# -- t0 = n
	mv t0, a0
	
	#-- implemento el contador t1: contador
	li t1,0
bucle:
	# imPRIMIR DEsde 1 hasta n
	# es t1 = n? si sí, termino
	beq t1,t0, end
	# Si t1 != n
	addi t1,t1,1
	#-- Imprimir el contador
	mv a0, t1
	li a7, PRINT_INT
	ecall
	
	#--Imrpimir caracter de separacion
	li a0, ','
	li a7, PRINT_CHAR
	ecall
	#--Repetimos 
	b bucle
	
	#-- Punto de salida
end: 	
	li, a7, EXIT
	ecall