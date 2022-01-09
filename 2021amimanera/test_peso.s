#-----------------------------------
#-- Programa principal: Test_peso
#-----------------------------------

#-- Importa las constanstes para acceso a los servicios
#-- del sistema operativo del fichero so.s
	.include "so.s"
	.data
cad:	.string "ab"
msg:	.string "Peso de la cadena ab: "

	.text
	la a0, cad
	jal peso
	
	mv s0, a0
	
	#-- Imprimimos la cadena
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	mv a0, s0
	li a7, PRINT_INT
	ecall
	
	li a7, EXIT
	ecall
# ¡Un esfuerzo! Con estos dos puntos ya consigues superar
# el aprobado ¡Vamoooos!
