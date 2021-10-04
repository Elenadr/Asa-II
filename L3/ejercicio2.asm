	.data
	
a:
b:
	.word 1,2,3,4
c:
	.word 10
	.word 20
d:	.word 30
e:

	.text
	
	li a7, 10
	ecall 

#--1. -- ¿Cuántas palabras hay almacenadas en el segmento de datos?
#-- cinco palabras almacenadas en el segmento datos

#--2. --¿Cuántos bytes ocupa el segmento de datos?
#-- 7 bytes

#-- 3. --¿Cuántos bytes ocupa el programa?
#-- 2 instrucciones, 2x4 = 8 bytes

#-- 4. -- Escribe en una tabla las direcciones de las etiquetas:
#-- Etiqueta 	Dirección
#-- a		0x10010000
#-- b		0x10010000
#-- c		0x10010010
#-- d		0x10010018
#-- e		0x1001001c
