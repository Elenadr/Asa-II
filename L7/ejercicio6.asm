#-- Escribe un programa que pida al usuario dos números enteros (n1 y n2) y 
#-- te indique en la pantalla cuál es la relación entre ellos, 
#-- imprimiendo alguna de estas cadenas: "n1 < n2", "n1 == n2" o "n1 > n2"

	.include "servicios.asm"
	.data
msg1:	.string "Introduce n1: "
msg2:	.string "Introduce n2: "
msg_menor: .string "n1 < n2"
msg_igual: .string "n1 == n2"
msg_mayor: .string "n1 > n2"

	.text

	## Imprimir mensaje para pedir n1
	la a0, msg1
	li a7, PRINT_STRING
	ecall	
	# Leemos el entero n1 por teclado
	li a7, READ_INT
	ecall
	#-- movemos n1 a t1 para no perderlo
	mv t1, a0	
	

	## Imprimir mensaje para pedir n2
	la a0, msg2
	li a7, PRINT_STRING
	ecall	
	# Leemos el entero n1 por teclado
	li a7, READ_INT
	ecall
	#-- movemos n2 a t2 para no perderlo
	mv t2, a0	
	
	#--- Realizar las comparaciones entre t1 y t2
	
	#-- ¿n1 < n2?
	blt t1, t2, menor
	
	#-- ¿n1 > n2?
	bgt t1, t2, mayor
	
	#-- Si llega aqui es que son iguales n1 == n2
	la a0, msg_igual
	li a7, PRINT_STRING
	ecall 
	
	#-- Terminar
	b end	
menor:  #-- n1 es menor que n2
	la a0, msg_menor
	li a7, PRINT_STRING
	ecall
	
	#-- Terminar
	b end
	
mayor: #-- n1 es mayor que n2
	la a0, msg_mayor
	li a7, PRINT_STRING
	ecall
#-- Punto de salida

end:	
	li, a7, EXIT
	ecall