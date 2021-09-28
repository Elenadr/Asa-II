
#----- Fragmento de codigo (No es el principio)
b:
	addi x8, x8, 9  
		
	sub x9, x7, x8   
	add x6, x6, x6  
	add x6, x6, x6
c:   
	sub x9, x6, x9  
	add x5, x5, x5  
	add x5, x5, x9
d:   
	addi x10, x5, 15 
	
	li a7, 10
fin:	ecall
#-- 0x00502020

#-- Etiqueta 	Dirección
#-- b 		0x00502020
#--c 		0x00502030
#--d 		0x0050203c
#--fin 		0x00502044


#-- no se si entiendo el por que de esto
