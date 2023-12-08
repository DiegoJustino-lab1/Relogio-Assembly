ram 600 0
ram 601 0
ram 602 1
ram 603 60
ram 604 0

cseg
org Inicio 0 
lda ac, 600
str 4092, ac 
str 600, ac 
sub ac, 603 
je ifInicio
jmp Inicio 
org ifInicio 
lda ac, 601
add ac, 602 
str 601, ac
str 4093, ac 
lda ac, 604
str 600, ac
jmp Inicio 