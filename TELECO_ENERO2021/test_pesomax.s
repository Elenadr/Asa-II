	.include "so.s"
	.eqv MAX 20
	
	.data

cad1:	.space MAX
cad2:	.space MAX
msg1:	.string "\nIntroduzca cadena 1: "
msg2:	.string "Introduzca cadena 2: "
msg3:	.string "Peso maximo: "
	.text

bucle:

		#-- Pedir al usuario las dos cadenas
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir al usuario cad1
	la a0, cad1
	li a1, MAX
	li a7, READ_STRING
	ecall
	lb t0,0(a0)
	li t1,'\n'
	
	#-- Pedir al usuario las dos cadenas
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	#-- Pedir al usuario cad2
	la a0, cad2
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Programa principal
	la a0,cad1
	la a1,cad2
	jal pesomax
	
	
	mv t0,a0
	la a0, msg3
	li a7, PRINT_STRING
	ecall
	#-- En a0 está el peso máximo calculado
	
	li a7, PRINT_INT
	ecall
	#IMprimir valor peso máximo
	
	
	#-- Punto de salida
	li a7,EXIT
	ecall