#-- Escribe un programa que pida al usuario dos números enteros e imprima el mensaje "IGUALES" 
#-- si son iguales y "DIFERENTES" si son distintos. Utiliza la instrucción beq para hacer la comparación. 

	.include "servicios.asm"
	.data
msg:	.string "Introduce un número: "
equal:	.string "IGUALES"
difer:	.string "DIFERENTES"


	.text
	# --Imprimir un mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	#-- Pedir el primer número
	
	li a7, READ_INT
	ecall
	#--- se guarda en a0 el numeor que el user ha introducido
	#-- Mover el numero al registro gtemporal t0
	mv t0, a0
	
	# --Imprimir un mensaje
	la a0, msg
	li a7, PRINT_STRING
	#-- Pedir el segundo número
	li a7, READ_INT
	ecall
	#-- Mover el numero al registro gtemporal t0
	mv t1, a0
	
	#-- Comparamos los números
	beq t0,t1, iguales
	#-- si no son iguakes
	la a0, difer
	li a7, PRINT_STRING
	ecall
	b fin
iguales: 
	la a0, equal
	li a7, PRINT_STRING
	ecall
	b fin

#-- punto de salida	
fin: 	
	li a7, EXIT
	ecall
