#-- Escribe un programa que pida una cadena al usuario y los caracteres que estén en minúsculas los pase a Mayúsculas. 
#-- Sólo los caracteres 'a' - 'z' se pasan a mayúsculas, el resto se dejan igual

	.include "servicios.asm"
	.eqv MAX 32
	.data
msg:	.string "Introduce cadena: "
msg2:	.string "Cadena en mayúsculas: "
cad:	.space MAX
	.text
	#-- Imprimir mensaje 1
	la a0, msg
	li a7, PRINT_STRING
	ecall

	#-- Pedir cadena al usuario
	la a0, cad
	li a1, MAX
	li a7, READ_STRING
	ecall

bucle:		
	#----------- Pasar a mayúsculas
	#-- Leer caracter
	lb t0, 0(a0)
	
	#-- Condicion de terminacion
	beq t0, zero, fin
	
	#-- Si el caracter es menor que 'a' o mayor que 'z'
	#-- hay que pasar al siguiente
	li t1, 'a'
	blt t0,t1,next
	
	li t1, 'z'
	bgt t0, t1, next
	
	#-- Hay que pasarlo a mayusculas
	addi t0,t0,-32
	
	#-- Guardarlo
	sb t0, 0(a0)
	
next:
	#-- Pasar al siguiente caracter
	addi a0, a0, 1
	
	#-- Repetir
	b bucle

fin:	
	#-- Imprimir mensaje 1
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	#-- Imprimir la cadena
	la a0, cad
	li a7, PRINT_STRING
	ecall
	# Punto de salida
	li a7, EXIT
	ecall