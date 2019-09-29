#Subvectores

v= c(14,5,6,19,32,0,8)
v[2]

v[-c(3,5)]

v[v!=19 & v>15]

#Condicionales 
#which

x = seq(3,50, by=3.5 )
x

x[8]
x[length(x)]
x[length(x)-1]
x[-3] #desaparece la tercera entrada
x[4:8] #elementos del 4 al 8
x[8:4] #elemento del 8 al 4

#los que estan en posición par
x[seq(2, length(x), by=2)]
#[1]  6.5 13.5 20.5 27.5 34.5 41.5 48.5

#los que están en posición impar
x[seq(1, length(x), by=2)]
#[1]  3 10 17 24 31 38 45

#los ultimos 3 elementos del vector
x[(length(x)-3):length(x)]
#[1] 38.0 41.5 45.0 48.5

x[c(1,5,6)]
#[1]  3.0 17.0 20.5

x[x>17]
#[1] 20.5 24.0 27.5 31.0 34.5 38.0 41.5
#[8] 45.0 48.5

x[x%%2==0]
#[1] 10 24 38

# R busca verdaderos y falsos
x>30
# [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
#[14]  TRUE

x = c(1,7,4,2,4,8,9,2,0)
y = c(5,2,-3,-7,-1,4,-2,7,1)

#obtener valores que en y son positivos
x[y>0]        

#condicionales indican la posicion del vector que cumple depterminada condición
which(x>4)
#[1] 2 6 7

x[which(x>4)]
#[1] 7 8 9

#numeric(0) vector vacío

which(x>4 & x<7)

x=c()
y = NULL
y

z = c(x, 2, y, 7)
z
#[1] 2 7

