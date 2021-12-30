#-- Escribe un programa que pida números enteros al usuario, los sume, imprima el total y termine. 
#-- El número 0 se utiliza como terminador: al introducirse, el programa deja de pedir números y muestra el resultado de la suma

	.include "servicios.asm"
	
	.data
msg:	.string "Introduzca número: "
msg2:	.string "La suma total es: "

	.text
	#-- El regitro t0 se contiene a suma de los numeros
	li t0, 0
bucle:
	## Imprimir mensaje para números
	la a0, msg
	li a7, PRINT_STRING
	ecall	
	## Pedir número
	li a7, READ_INT
	ecall
	## si se introduce cero
	beq a0, zero, imprimir
	#--sumar
	add t0,t0, a0
	b bucle
	
imprimir:	
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	mv a0, t0
	li a7, PRINT_INT
	ecall
	#Punto de lalida
	li, a7, EXIT
	ecall