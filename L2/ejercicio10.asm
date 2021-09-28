#-- programa que calcule esta expresion 
#-- f = (d - c) + 15 - (a + b)
	.text
	
	addi x5, x0, 1  #-- x5--> a = 3
	addi x6, x0, 2  #-- x6--> b = 5
	addi x7, x0, 3  #-- x7--> c = 7
	addi x8, x0, 4  #-- x8--> d = 9
	addi x10, x0, 0	#-- x10--> f = 0
	
bucle:	
	sub x9, x8, x7   #--  (d-c)
	addi x9, x9, 15   #--  (d-c + 15)
	add x11, x5, x6   #--  (a+b)
	sub x10, x9, x11   #--  (4*x6)-(x7-x8)
	addi x5, x0, 1   #--  (2*x5)
	addi x6, x0, 1  #-- x6--> b = 5
	addi x7, x0, 1  #-- x7--> c = 7
	addi x8, x0, 1  #-- x8--> d = 9

b bucle