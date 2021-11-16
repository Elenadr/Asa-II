#-- Ejercicio 5
#-- Pedir un numero entero al usuario
#-- y enviarlo tal cual al display de 7 segmentos derecho
#-- Test: el 255 (0xFF) debe encender todos los segmentos

	#--- Direccion donde está mapeado el display derecho
	.eqv DISP_R 0xFFFF0010
	.eqv EXIT 10
	.eqv READ_INT 5
	
	
	.text
	
	#-- Petición de los registroa al usuario

	#-- leer por teclado  A
	li, a7, READ_INT
	ecall
	#-- mover a var temporal t0
	mv t0, a0
	#-- t0 = puntero para acceder al display
	li t0, DISP_R
	
	
	#-- Sacar el valor por el puerto, para que se iluminen
	#-- los segmentos del display
	sw a0, 0(t0)
	
	#-- Terminar
	li a7, EXIT
	ecall
