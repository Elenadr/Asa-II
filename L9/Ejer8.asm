#-- Programa principal
#--Escribir la función cifrar, cuyo primer parámetro es el puntero a una cadena y 
#-- el segundo el número K a incrementar cada carácter para realizar el cifrado. 
#-- Deberá estar en su propio fichero. El prototipo de la función es:

#--void cifrar(*cad, k)


	#-- Longitud maxima de la cadena
	.eqv MAX 1024
	#-- Constante a sumar, para cifrar
	.eqv K   5
	 .data
msg1:   .string "\n\nIntroduce una cadena: "
msg2:   .string "Cadena cifrada:  "

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
	
	#-- Llamar a la funcion cifrar(a0, K)
	li a1, K
	#-- llmaar a cifrar
	jal cifrar
	
fin:	#-- Imprimir mensaje
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	# Imprimie la cadena cifrada
	mv a0, s0
	li a7, PRINT_STRING
	ecall
	
	#-- Terminar (Punto de salida)
	li a7, EXIT
	ecall
	#-----------------------------------------