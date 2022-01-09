#------------------------------
#- Funcion max(a,b)
#------------------------------------------------------------------
#-- Calcular el maximo de a yb
#-- ENTRADAS:
#--    a0: a
#--    a1: b
#-- SALIDAS:
#--    a0 : resultado
#------------------------------------------------------------------
#-------------------------------------


#-- Implementa aqui la funcion max
	.globl max
	.text
max:	
	#-- calcular el máximo  entre a y b
	#-- a0 < a1
	blt a1, a0, max_a0
	mv a0, a1
max_a0:
	ret
# ¡Suerte!
