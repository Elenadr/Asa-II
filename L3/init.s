#-- Programa para inizializar los registros x5= 5, x6 = 6, x7= 7, x8= 8 c
# -- Transferir a x15 = x5, x16 = x6, x17 = x7 y x18 = x8

	.text
	
	#-- Cargar valores
	li x5, 5
	li x6, 6
	li x7, 7
	li x8, 8
	
	#-- Mover valores
	mv x15, x5
	mv x16, x6
	mv x17, x7
	mv x18, x8
	
	#-- Terminar
	li a7, 10
	ecall
#-- tiene 10 instucciones
#-- ocupa 10x4 = 40 nbytes
