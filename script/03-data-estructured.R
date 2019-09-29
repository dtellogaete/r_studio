#Vectores
#secuencia ordenada de datos del mismo tipo

c(1,2,3)

rep("hola mundo",5)
#rep(a,n): el dato a es repetido n veces

c(1, TRUE, 3)

c(21,"Juan", TRUE)

help("scan")

nombres <-c("Juan", "Maria", "Gabriel")
nombres

#Progresiones aritmeticas y secuencias

#seq(a,b, by = d), secuencia comienza en a, termina en b y va de 5 en 5.

seq(5,60, by = 5)
# [1]  5 10 15 20 25 30 35 40 45 50 55 60

seq(100, 3, by=-9)
#[1] 100  91  82  73  64  55  46  37  28  19  10

seq(4,35, length.out= 7 )
#[1]  4.000000  9.166667 14.333333 19.500000 24.666667 29.833333 35.000000

seq(4, length.out = 7, by= 3)
#[1]  4  7 10 13 16 19 22

1:10
# [1]  1  2  3  4  5  6  7  8  9 10

-2:5
#[1] -2 -1  0  1  2  3  4  5

#Ejercicios
#1.Imprimir numeros del 1 al 20.
1:20
#[1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

#2.Imprimir los primeros 20 numeros pares
seq(0,20, by= 2)
# [1]  0  2  4  6  8 10 12 14 16 18 20

#3. Imprimir 30 numeros equidistantes entre el 17 y 98, mostrando solo 4 cifras significativas
seq(17,98, length.out = 30)
signif(seq(17,98, length.out = 30), digits=4)

#------
#Concatenar vectores
c(rep(pi,3), 3:9, -4)
# [1]  3.141593  3.141593  3.141593  3.000000  4.000000  5.000000  6.000000  7.000000
#[9]  8.000000  9.000000 -4.000000

c(rep(pi,3), 3:9, -4)->x

c(1,x,0,x)
#[1]  1.000000  3.141593  3.141593  3.141593  3.000000  4.000000  5.000000  6.000000
#[9]  7.000000  8.000000  9.000000 -4.000000  0.000000  3.141593  3.141593  3.141593
#[17]  3.000000  4.000000  5.000000  6.000000  7.000000  8.000000  9.000000 -4.000000

#fix(x) permite agregar más datos al vector es necesario guardar
fix(x)

##Funciones y orden de vectores

x= 1:10

x+pi
#[1]  4.141593  5.141593  6.141593  7.141593  8.141593  9.141593 10.141593 11.141593
#[9] 12.141593 13.141593

pi*x
#[1]  3.141593  6.283185  9.424778 12.566371 15.707963 18.849556 21.991149 25.132741
#[9] 28.274334 31.415927


#sapply aplica una funcióna todos los elementos del vector
sapply(x, FUN = function(elemento){sqrt(elemento)})

cd = function(x){ summary(lm((1:4)~c(1:3,x)))$r.squared}
cd(6)

sapply(x, FUN= cd)

#suma de vectores
(1:10)+(1:10)

#multiplicacion de vectores
(1:10)*(1:10)

#vector elevado a otro vector
(1:10)^(1:10)

#sucesion
n= (1:100)

x= 2*3^(n/2)
x

2*3^((1:100)/2)

cuadrado = function(x){x^2}

v= c(1:6)

mean(v)
cumsum(v)

v= c(3,6,2,5,1,9)
sort(v)
rev(v)

#Ejercicio
#Combinar las funciones sort y rev para crear un vector que sea ordenado en orden decreciente
x= c(1,3,4,5,6,79,9,9,10,25)
rev(sort(x))

x=1:10
length(x)
max(x)
min(x)
sum(x)
prod(x)
cumsum(x)
cummin(x)
cumprod(x)
diff(x)

sort(x, decreasing = TRUE)

