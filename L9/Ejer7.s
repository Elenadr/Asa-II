#-- Programa principal
#-- Escribir la función palindromo que tiene un parámetro de entrada con el puntero a la cadena a analizar y 
#-- devuelve un 1 si es un palíndromo y un 0 si NO lo es. Prototipo:
#-- int palindromo(*cad)
#-- Escribe un programa principal para probar la función palindromo, que pida al usuario una cadena 
#-- e imprima un mensaje indicando si es o no un palíndromo. 
#-- Esto se repite en un bucle hasta que el usuario introduzca una cadena vacía (pulsando Enter). En ese momento terminará. 
#-- La cadena vacía se caracteriza porque su primer elemento es el carácter '\n'


	#-- Longitud maxima de la cadena
	.eqv MAX 1024
	    .data
msg1:   .string "\n\nIntroduzca cadena: "
msg2:   .string "NO es palíndromo "
msg3:   .string "ES UN PALINDROMO "
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
	#-- Si el primer caracter de la cadena es '\n' --> Hemos terminado
	lb t0, 0(a0)
	li t1, '\n'
	beq t0, t1, fin
	
	#-- llmaar a palindromo
	jal palindromo
	
	#-- ES un palindromo
	#-- Imprimir mensaje
	la a0, msg3
	li a7, PRINT_STRING
	ecall
	
	b bucle

noes:	la a0, msg2
	li a7, PRINT_STRING
	ecall
	b bucle

	
fin:	#-- Terminar (Punto de salida)
	li a7, EXIT
	ecall
	#-----------------------------------------