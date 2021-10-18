##-- Primera llamaada al sistema
# Si tu me llamas,

# -- Servicios del so
.eqv EXIT 10 # -- Servivio exit
.eqv PRINT_CHAR 11 #-- Servivio impresión d eun númeor entero
.eqv READ_CHAR 5 #-- sERVICIO PARA LEER UN ENTERO

.text

#-- Imprimir un caracter

li a0, 'A'
li, a7, PRINT_CHAR
ecall


#-- Es lo mismo que el eejer 2 pero es más legible para un humano, no crea confusión.
li a7, EXIT
ecall
