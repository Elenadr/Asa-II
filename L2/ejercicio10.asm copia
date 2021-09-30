#-- programa que calcule esta expresion 
#-- f = (d - c) + 15 - (a + b)
	.text
	
	addi x5, x0, 1  #-- x5--> a = 3
	addi x6, x0, 2  #-- x6--> b = 5
	addi x7, x0, 3  #-- x7--> c = 7
	addi x8, x0, 4  #-- x8--> d = 9
	addi x10, x0, 0	#-- x10--> f = 0
	addi x11, x0, 15
	
bucle:	
	sub x9, x8, x7   #--  (d-c)
	add x12, x9, x11  #--  (d-c) + 15
	
	add x11, x5, x6   #--  (a+b)
	
	sub x10, x12, x11   #-- (d - c) + 15 - (a + b)
	
	#-- Incrementar todos los valores en una unidad
	addi x5, x5, 1   #--  (2*x5)
	addi x6, x6, 1  #-- x6--> b = 5
	addi x7, x7, 1  #-- x7--> c = 7
	addi x8, x8, 1  #-- x8--> d = 9

b bucle
