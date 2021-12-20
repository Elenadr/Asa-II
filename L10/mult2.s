## FUncion mult2
##-- UN parametro de entrada
## ENTRADA -> NUmeor a mult por 2
# -- SALIDA -> El numero numero * 2
#----------------------------------


	.globl mult2
	.include "servicios.s"
	
	.text
	
	
mult2:
	 #-- FUncion hija
	 
	 li t0,2
	 mul a0,a0,t0
	
	# PUnto de salitda
	ret