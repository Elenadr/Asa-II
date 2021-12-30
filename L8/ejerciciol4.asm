#-- Escribir un programa para realizar la conversión de una cadena de 2 caracteres en un número. 
#-- Esta cadena se pide al usuario. NO se realizará comprobación de errores. 
#-- Daremos por supuesto que los caracteres introducidos por el usuario son correctos. 
#-- El resultado de la conversión se imprime en la consola. 
#-- Usar la fórmula num = (d1 - 48) * 10 + (d0 - 48), donde d1 es el primer carácter de la cadena y d0 el segundo

	.include "servicios.asm"
	#-- Los dos dígitos + el cero, es el numeor máximoq ue s epuede introducir
	.eqv MAX 3
	.data
msg:	.string "Introduzca cadena de dos dígitos: "
msg2:	.string "\nNúmero: "
cad:	.space MAX
	
	.text
	
	# Imprmir mensahe
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	# Leer por tecladp
	la a0, cad
	li a1,MAX
	li a7, READ_STRING
	ecall
	
	#-- Usar la fórmula num = (d1 - 48) * 10 + (d0 - 48), 
	lb t1, 0(a0)
	addi t1, t1, -48 #--primer digito -48
	li t0, 10
	mul t1, t1, t0
	lb t2, 1(a0)
	addi t2, t2, -48
	add t3, t1, t2
	
	#-- Imprimimos la cadena
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	#-- Imprimir el numero en consola
	mv a0,t3
	li a7, PRINT_INT
	ecall
	#-- Punto de salida
	li, a7, EXIT