#-- Programa principal
#-- Escribe un programa para pedir al usuario una cadena y calcular su longitud. 
#--El programa principal pide la cadena al usuario, llama a la función len, que es la encargada de calcular la longitud, 
#--y se imprime su valor en la consola

	#-- Longitud maxima de la cadena
	.eqv MAX 1024
	    .data
msg1:   .string "\nIntroduce una cadena: "
msg2:   .string "\nLa longitud es: "
cad:	.space MAX
	
	
        .include "servicios.s"

	.text
	
	#----- PROGRAMA PRINCIPAL ----------------
	#-- Imprimir mensaje desde programa principal
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	#-- LEER CADENA DE CARACTERES
	la a0, cad
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- llamar a la subrutina
	jal len
	
	#-- Imprimir mensaje desde programa principal
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	# imprimir la longitud
	mv a0, t0
	li a7, PRINT_INT
	ecall
	
	#-- Terminar (Punto de salida)
	li a7, EXIT
	ecall
	#-----------------------------------------