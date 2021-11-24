#--Escribir un programa para pedir al usuario una cadena de como máximo 10 caracteres y convertirla a un número entero. 
#-- NO se realizará una comprobación de errores. Debes implementar el algoritmo descrito en este apartado. 
# --    Inicializar el resultado parcial a cero: num = 0
#--    Repetir las siguientes acciones (bucle)
#--        Leer el carácter actual de la cadena (car)
#--           Si car es un salto de línea '\n', entonces hemos terminado. El resultado está en num
 #--          Multiplicar num por 10: num = num * 10
 #--          Convertir el dígito car a su número: n = car - '0'
 #--          Calcular: num = num + n
 #--          Apuntar al siguiente carácter
#--           Repetir el bucle

#-- En esta animación se muestra su funcionamiento

	.include "servicios.asm"
	#--  tAMAÑo máximo, 10 + el 0 
	.eqv MAX 11
	#-- Segmento de datos
	.data
cad1:	.string "\nIntroduzca cadena: "
cad2:   .string "\nNúmero: "
numcad: .space MAX
	
	#-- Segmento de código
	.text
	#-- Imprimimos la cadena
	la a0, cad1
	li a7, PRINT_STRING
	ecall
	#-- Leemos la cadena por el teclado
	la a0, numcad
	li a1, MAX
	li a7, READ_STRING
	ecall
# --    Inicializar el resultado parcial a cero: num = 0
	li t0, 0
#--    Repetir las siguientes acciones (bucle)
bucle:	
#--  Leer el carácter actual de la cadena (car)
# -- t1 = car
	lb t1, 0(a0) # -- en t1, tnemos caracter actual
	
#-- Si car es un salto de línea '\n', entonces hemos terminado. El resultado está en num
#-- si t1, barra n
	li t2, '\n'
	beq t1, t2, fin
	
	#-- Si no
 #-- Multiplicar num por 10: num = num * 10
 	li t2, 10
 	mul t0, t0, t2
 	
 #-- Convertir el dígito car a su número: n = car - '0'
 # n= t1 - '0'// t3 = n
 	addi, t3, t1, -48

 #-- Calcular: num = num + n
 	add t0, t0, t3
 	
 #-- Apuntar al siguiente carácter
 	addi a0, a0, 1
#-- Repetir el bucle
	b bucle
	
	#-- Punto de salida
fin:	
	#-- Imprimimos la cadena
	la a0, cad2
	li a7, PRINT_STRING
	ecall
		#-- Imprimir el numero en consola
	mv a0,t3
	li a7, PRINT_INT
	ecall
	li a7, EXIT
	ecall