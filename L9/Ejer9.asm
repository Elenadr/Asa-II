#-- Programa principal
#-- Hacer un programa principal que pida al usuario una cadena, llame a la función upper, 
#-- imprima la cadena en mayúsculas y finalice. Deberá estar en un fichero separado

#--void upper(*cad)


	#-- Longitud maxima de la cadena
	.eqv MAX 1024

	 .data
msg1:   .string "\n\nIntroduce una cadena: "
msg2:   .string "Cadena en mayúsculas:  "

cad:	.space MAX
	
	
        .include "servicios.s"

	.text
	
	#----- PROGRAMA PRINCIPAL ----------------
bucle:
	#-- Imprimir mensaje desde programa principal
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	#-- LEER CADENA DE CARACTERES
	la a0, cad
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Almacenar el puntero a la cadena en s0
	#-- Solo lo podemos almacenar en registros estáticos
	#-- que son los únicos que está garantizado que mantiene
	#-- su valor al realizar una llamda a subrutina
	mv s0, a0
	
	#-- llmaar a cifrar
	jal upper
	
fin:	#-- Imprimir mensaje
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	# Imprimie la cadena en mayusculas
	mv a0, s0
	li a7, PRINT_STRING
	ecall
	
	#-- Terminar (Punto de salida)
	li a7, EXIT
	ecall
	#-----------------------------------------
