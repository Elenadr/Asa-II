#-- Escribe un programa (variables4.s) que tenga un segmento de datos con 4 variables: v1, v2, v3 y v4, 
#-- inicializadas con los valores 0x12345678, 0x11223344, 0xCACABACA, 0x00FABADA respectivamente. 
#--En el segmento de código sólo deben estar las instrucciones para terminar

.data 

v1: .word 0x12345678

v2: .word 0x11223344

v3: .word 0xCACABACA

v4: .word 0x00FABADA


	.text
	
	li a7, 10
	ecall 