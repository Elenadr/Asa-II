#--Probando asignación.
#--X5=30
	.text
	li x5, 30
#--addi x5, x0, 30

#-- x10= x5

	#-- add x10,x0,x5
	mv x10, x5
#-- Terminar
	li a7, 10
	ecall