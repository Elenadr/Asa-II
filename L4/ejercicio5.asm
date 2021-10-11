#-- Modifica el programa del contador del ejercicio 1 para que en vez de almacenar la cuenta en la variale contador, 
#-- se envíe por el puerto de salida de la dirección 0xFFFF0010.donde se encuentra el Display de 7 segmentos 
#-- Símulalo, coloca un Breakpoint en el bucle principal, y comprueba que en esa dirección se van almacenando los valores de contador

#-- ¿Qué valores del contador hace que aparezcan dígitos o letras reconocibles en el display? 
#-- (hay 128 combinaciones posibles, 2 elevado a 7, sin tener en cuenta el punto)

#-- Definir el valor inicial para el contador
	.eqv INICIO 0
	.eqv INC 1
	.eqv DISPLAY 0xFFFF0010
	

	.text
	li x5, INICIO
	li x6, DISPLAY

bucle:
	sw x5, 0(x6)
	addi x5,x5, INC
	
	b bucle
	