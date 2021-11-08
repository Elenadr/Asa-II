#-- Escribe un programa que realice la suma de dos números enteros que se piden al usuario. 
#-- El programa imprimirá el mensaje correspondiente en cada momento, informando al usuario de lo que debe hacer: 
#-- "Introduce primer numero", "Introduce el segundo numero", y "La suma es: "


	#-- Codigo de los servicios del Sistema Operativo
	.include "servicios.asm"

	.data
	
	#-- Reserva de espacio para una cadena
cad1:	.string "Introduce primer numero"
cad2: 	.string "Introduce el segundo numero"
cad3:	.string "La suma es: "

	
	.text
	
	#------ Imprimir mensaje para pedir el primer numero
	
	#-- Situar en a0 la direccion de la cadena
	la a0, cad1
	
	#-- Imprimir la cadena
	li a7, PRINT_STRING
	ecall 
	#-- Leer numero
	li a7, READ_INT
	ecall
	# -- Mover el numeor a regstro t1 para guardarlo
	mv t1, a0
	
	#------ Imprimir mensaje para pedir el segundo numero
	#-- Imprimir la cadena
	la a0, cad2
	li a7, PRINT_STRING
	ecall 
	li a7, READ_INT
	ecall
	# -- Mover el numeor a regstro t2 para guardarlo
	mv t2, a0
	
	#-- Hacer la suma en un nuevo registro t3
	#-- Calcular la suma en t3
	add t3, t1, t2
	
	#--- Imprimir resultado
	la a0, cad3
	li a7, PRINT_STRING
	ecall
	#-- Sacar por pantalla el esultado
	li a7, PRINT_INT
	mv a0, t3
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall 