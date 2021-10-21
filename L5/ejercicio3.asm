#-- Modifica el programa anterior para que los valores leidos se almacenen primero en las variables a y b. 
#-- Después se debe realizar la suma leyendo estas variables, depositar el resultado en la variable f y 
#-- finalmente imprimirlo por la cosola. Usa como único puntero para acceder a las tres variables el registro s0. 
#-- Ejecutar el programa y comprobar que las variables contienen los valores correctos, y que la suma es la que aparece en la consola

.eqv READ_INT 5
.eqv EXIT 10
.eqv PRINT_INT 1

.text
#-- leer por teclado
li, a7, READ_INT
ecall
#-- mover a var temporal t0
mv t0, a0

#ller el otro entero
li, a7, READ_INT
ecall

# mover a var temporal t1
mv t1, a0

# sumar en t3, t0 y t1
add t3, t0, t1

# mover t3, a a0
mv a0, t3

# imprimir
li a7, PRINT_INT
ecall
li, a7, EXIT
ecall