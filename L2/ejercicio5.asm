	.text
	
	addi x5, x0, 3  #-- x5--> a = 3
	addi x6, x0, 5  #-- x6--> b = 5
	addi x7, x0, 7  #-- x7--> c = 7
	addi x8, x0, 9  #-- x8--> d = 9
			#-- x10--> f = 43
	
	
	sub x9, x7, x8   #--  (x7-x8)
	add x6, x6, x6   #--  (2*x6)
	add x6, x6, x6   #--  (4*x6)
	sub x9, x6, x9   #--  (4*x6)-(x7-x8)
	add x5, x5, x5   #--  (2*x5)
	add x5, x5, x9   #--  2*x5+ (4*x6)-(x7-x8)
	addi x10, x5, 15 #-- 15 + 2*x5+ (4*x6)-(x7-x8)
			#-- f = 15+ 2b + (4c -(c-d)) = 43 con calc
	
	#-- Terminar
	li a7, 10
	ecall 
 
 #-- Expresion x10 = 2x5 + 4x6 - (x7 - x8) + 15