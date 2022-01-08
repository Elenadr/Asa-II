#-- En este ejemplo vamos a manejar los dos displays de 7 segmentos: el derecho y el izquierdo. 
#--Escribir un programa que defina dos contadores, uno inicializado a 0 y otro inicializado a 1. 
#--Los valores de estos contadores se escribirán en los puertos de salida del display derecho 
## y el izquierdo, respectivamente (recordar que son bytes). Luego se incrementan los contadores 
#--y se repite en un bucle infinito. Para probarlo, bien bajar la velocidad de ejecución 
#-- o bien colocar un breakpoint y ejecutar con el play. En los dos displays veremos ciertos segmentos encendidos y ciertos apagados.

	#-- Direccion base de acceso a los displays
	.eqv BASE 0xFFFF0010
	
	#-- Desplazamientos de acceso a los displays
	.eqv DISP_R 0
	.eqv DISP_L 1
	
	.text
	
	#-- Registro t0 para acceder a los displays de 7 segmentos
	li t0, BASE
	
	#-- Contador 1 en registro t1. Inicializado a 0
	li t1, 0
	
	#-- Contador 2 en registro t2. Inicializado a 1
	li t2, 1
bucle:	#-- Escribir contadores en los puertos de salida de los displays
	sb t1, DISP_R(t0)
	sb t2, DISP_L(t0)
	
	#-- Incrementar los contadores
	addi t1, t1, 1
	addi t2, t2, 1
	
	#-- Repetir
	b bucle