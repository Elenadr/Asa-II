
        .text
ini:
a:	
	addi x5, x5, 3  
	addi x6, x6, 5  
	addi x7, x7, 7 
b:
	addi x8, x8, 9  #--sE VA A EJECUTAR ESTA INSTRUCCION
		
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
last:
