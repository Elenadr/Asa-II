#-----------------------------
#-- Programa principal de pruebas: test_pesomax
#-----------------------------------------------


#-- Importa las constanstes para acceso a los servicios
#-- del sistema operativo del fichero so.s
	.include "so.s"
	.eqv MAX 1024
	.data
cad1:	.space MAX
cad2:	.space MAX
msg1:	.string "\nIntroduzca cadena 1: "
msg2:	.string "Introduzca cadena 2: "
resul:	.string "Peso maximo: "

	.text

bucle:
	#-- Imprimimos la cadena 1
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	#-- pedir cad 1
	la a0, cad1
	li a1, MAX
	li a7, READ_STRING
	ecall
	lb t0, 0(a0)
	li t1, '\n'
	beq t0, t1, fin

	#-- Imprimimos la cadena 2
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	#-- pedir cad 2
	la a0, cad2
	li a1, MAX
	li a7, READ_STRING
	ecall
	la a0, cad1
	la a1, cad2

	jal pesomax
	mv s0, a0
	#-- Imprimimos resultado
	la a0, resul
	li a7, PRINT_STRING
	ecall
	mv a0, s0
	li a7, PRINT_INT
	ecall
	b bucle
fin:
	li a7, EXIT
	ecall
#  ¡Aqui ya juegas para nota! Ya no te queda nada! 
#  Un ultimo esfuerzo!!
