#-- Modifica el programa del contador del ejercicio 1 para que en vez de almacenar la cuenta en la variale contador, 
#-- se envíe por el puerto de salida de la dirección 0xFFFF0000. 
#-- Símulalo, coloca un Breakpoint en el bucle principal, y comprueba que en esa dirección se van almacenando los valores de contador

#-- Si este programa se ejecutase en el RISC-V real se vería la cuenta en binario en los LEDs 
#-- (Bueno, en realidad habría que añadir una pausa para ralentizar el micro, pero ya veremos cómo se hace)

#-- Definir el valor inicial para el contador
	.eqv INICIO 100
	.eqv INC 10
	.eqv LEDS 0xFFFF0000
	

	.text
	li x5, INICIO
	li x6, LEDS

bucle:
	sw x5, 0(x6)
	addi x5,x5, INC
	
	b bucle
	