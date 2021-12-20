	.globl max
	.text

#---------------------------
# Funcion max(a,b) : funcion max
# max(128.500) = 500
# ENTRADAS:
# A0: pRIMER numero entero
# a1: Segundo numero entero

# SALIDAS:
# a0: Valor max
#---------------------------------
max:
	# funcion hoja: no hay que llamar a otra función
	#-- a,b Si a > b devuelvo a
	
	#-- si no devuelvo b
	bgt a0, a1, mayor_a0
	#-- cASO en el que a0<=a1
	#-- EL maximo es a1
	mv a0, a1
	
mayor_a0: #-- Valor max en a0

	#-- Punto de salida
	ret