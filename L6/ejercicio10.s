#-- Escribe un programa para leer el código de cualquiera de las teclas de la primera fila del teclado hexadecimal. 
#-- Este código se debe escribir en el puerto de salida del display de 7 segmentos izquierdo. 
#-- Meterlo en un bucle infinito para que esta operación se realiza todo el tiempo.
#-- No olvidar probarlo a baja velocidad, para que se refresque el teclado y el display

	#-- Direccion base de acceso a los displays
	.eqv BASE 0xFFFF0010
	
	#-- Desplazamientos de acceso a los displays
	.eqv DISP_L 01
	#-- Seleccion de la fila
	.eqv KEY_ENA 02  #-- BASE + 2
	
	#-- Lectura del codigo de tecla
	.eqv KEY_RD  04  #-- BASE + 4
	
	.text
	
	#-- Puntero base de acceso a perifericos
	li t0, BASE

	#-- Bucle infinito que está constntemente leyendo la 
	#-- primera fila
bucle:		
	#-- Seleccionar la fila 1
	li t1, 01
	sb t1, KEY_ENA(t0)
	
	#-- Leer la tecla
	lb t2, KEY_RD(t0)
	
	#-- Escribir el código en el display izquierdo
	sb t2, DISP_L(t0)
	
	b bucle
	#-- Repetir
	b bucle