# Alejandro Flores Jacobo 2193037519
# Fundamentos de Programación en R
# Tarea 1, 17-nov-2023





# Ejercicio 1
# Calcula la suma de 100.1, 234.9 y 12.01
100.1 + 234.9 + 12.1

# Ejercicio 2
# Calcula el logaritmo base 10 de 100 
# y multiplica el resultado con el coseno de pi.cos
log10(100)*cos(pi)

# Ejercicio 3
# Teclea el siguiente código, el cual asigna números a los objetos x y y.
# x <- 10
# y <- 20
# 1. Calcula el producto de x y y
# 2. Guarda el resultado en un nuevo objeto llamado z
# 3. Crea un vector con los objetos x, y y z. Usa este comando: myvec &lt;- c(x,y,z)
# 4. Encuentra el mínimo, el máximo, la longitud y la varianza de myvec

x <- 10
y <- 20
z <- x*y
myvec <- c(x,y,z)
min(myvec)
max(myvec)
length(myvec)
var(myvec)

# Ejercicio 4
# Las siguientes líneas de código contienen algunos errores comunes que impiden que se evalúe correctamente o generan
# mensajes de error. Mira el código sin ejecutarlo y ve si puedes identificar los errores y corregirlos todos. También
# ejecuta el código defectuoso copiando y pegando el texto en la consola (sin escribirlo, RStudio intentará evitar estos                                                                       errores de forma predeterminada ). para que conozcas algunos mensajes de errores comunes (pero no todos resultan
# en errores).

vector1 <- c('uno', 'dos', 'tres', 'cuatro', 'cinco', 'seis', 'siete')
vec.var <- var(c(1,3,5,3,5,1))
vec.mean <- mean(c(1,3,5,3,5,1))
vec.Min <- min(c(1,3,5,3,5,1))
Vector2 <- c('a','b','f','g')
Vector2

# Ejercicio 5
# Tienes las medidas de cinco cilíndros, sus longitudes son: 2.1, 3.4, 2.5, 2.7, 2.9 y sus diámetros son: 0.3, 0.5, 0.6, 0.9 y 1.1.
# 1. Lee estos datos en dos vectores (da a los vectores un nombre apropiado)
# 2. Calcula el volumen de cada cilíndro ()

longitudes <- c(2.1, 3.4, 2.5, 2.7, 2.9)
diametros <- c(0.3, 0.5, 0.6, 0.9, 1.1)
areaBase <- pi*(diametros/2)^2
volumenes <- areaBase*longitudes

# Ejercicio 6
# 1. Lee un vector que contiene ‘A’, ‘B’, ‘C’ y ‘D’. (Usa la función c() )
# 2. Usa la función rep para producir esto: ‘A’ ‘A’ ‘A’ ‘B’ ‘B’ ‘B’ ‘C’ ‘C’ ‘C’ ‘D’ ‘D’ ‘D’
# 3. Ahora reproduce esto: ‘A’ ‘B’ ‘C’ ‘D’ ‘A’ ‘B’ ‘C’ ‘D’ ‘A’ ‘B’ ‘C’ ‘D’

letras <- c('A','B','C','D')
rep(letras, each=3)
rep(letras, 3)




