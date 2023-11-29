# Alejandro Flores Jacobo 2193037519
# Fundamentos de Programación en R
# Tarea 2, 28-nov-2023


# Ejercicio 1 --------------------------------------------------------------------------------------------------------
# En estos ejercicios practicarás algunas habilidades básicas con matrices.

# 1. Construye una matriz con 10 columnas y 10 filas, llenala con números aleatorios entre 0 y 1
m <- matrix(runif(100), ncol=10)

# 2. Calcule las medias de las filas de esta matriz. Calcule también la desviación estándar a lo largo de la
# media de la fila (ahora también use sd).
rowMeans(m)
sd(rowMeans(m))

# 3. Ahora haga de nuevo la matriz anterior con columnas y filas. Luego calcule la media de las columnas
# (usando, por supuesto, colMeans), y trace un diagrama de frecuencia (un ‘histograma’) usando hist.
m <- matrix(runif(20), ncol=10)
colMeans(m)
hist(colMeans(m))

# La matriz aún se llenará con los valores proporcionados, repitiendo los valores si es necesario para ajustarse 
# al número de columnas especificado.
m <- matrix(runif(3), ncol=10)
colMeans(m)
hist(colMeans(m))

# Ejercicio 2 --------------------------------------------------------------------------------------------------------
# Este ejercicio le permitirá saber cómo instalar paquetes y cargarlos.
# 1. Instale el paquete car (solo debe hacerlo una vez para cada computadora).
install.packages("car")

# 2. Cargue el paquete car (debe hacer esto cada vez que abra Rstudio).
library(car)

# 3. Mire el archivo de ayuda para densityPlot.
?densityPlot

# 4. Ejecute el ejemplo de densityPlot (en la parte inferior del archivo de ayuda), copie y pegue el ejemplo
# en un script y luego ejecútelo.
densityPlot(~ income, show.bw=TRUE, method="kernel", data=Prestige)
densityPlot(~ income, show.bw=TRUE, data=Prestige)
densityPlot(~ income, from=0, normalize=TRUE, show.bw=TRUE, data=Prestige)

densityPlot(income ~ type, data=Prestige)
densityPlot(~ income, show.bw=TRUE, method="kernel", data=Prestige)
densityPlot(~ income, show.bw=TRUE, data=Prestige)
densityPlot(~ income, from=0, normalize=TRUE, show.bw=TRUE, data=Prestige)

densityPlot(income ~ type, kernel=depan, data=Prestige)
densityPlot(income ~ type, kernel=depan, legend=list(location="top"), data=Prestige)

plot(adaptiveKernel(UN$infantMortality, from=0, adjust=0.75), col="magenta")
lines(density(na.omit(UN$infantMortality), from=0, adjust=0.75), col="blue")
rug(UN$infantMortality, col="cyan")
legend("topright", col=c("magenta", "blue"), lty=1,legend=c("adaptive kernel", "kernel"), inset=0.02)


plot(adaptiveKernel(UN$infantMortality, from=0, adjust=0.75), col="magenta")
lines(density(na.omit(UN$infantMortality), from=0, adjust=0.75), col="blue")
rug(UN$infantMortality, col="cyan")
legend("topright", col=c("magenta", "blue"), lty=1,legend=c("adaptive kernel", "kernel"), inset=0.02)


# 5. Ejecute el ejemplo de densityPlot nuevamente, pero esta vez use la función de ejemplo:
example(densityPlot)


# Ejercicio 3 --------------------------------------------------------------------------------------------------------
# Es recomendable el uso de archivos o scripts R Markdown que contengan todo su flujo de trabajo. En la
# mayoría de los casos, simplemente puede volver a ejecutar el script para reproducir todos los resultados del
# análisis. A veces, sin embargo, es útil para guardar todos los objetos resultantes en un archivo, para su uso
# posterior. Antes de comenzar este ejercicio, primero asegúrese de tener un script reproducible.
# 1. Ejecute el script, guarde el espacio de trabajo, asigne al archivo un nombre apropiado.

# 2. Ahora cierre y vuelva a abrir Rstudio. Si está en el directorio de trabajo correcto 
# (debería convertirse en un hábito el comprobarlo con la función getwd
getwd()



# Ejercicio 4 --------------------------------------------------------------------------------------------------------
# Instale el paquete CCP y averigüe cuántas veces se ha instalado.
install.packages("CCP")
library(CCP)
installed.packages()

# Hint: El objetivo de este ejercicio es ayudarle desarrollar las habilidades de encontrar un paquete que realice
# una nueva función que necesita ejecutar, instalarlo y usarlo.

# Ejercicio 5
# ¿Cómo puede importar/exportar desde MS Excel (XLSX archivos)? Encuentre un paquete apropiado, instalelo
# y úselo para dicho propósito.
install.packages("xlsx")
library(xlsx)
?xlsx

# example of reading xlsx sheets
file <- system.file("tests", "test_import.xlsx", package = "xlsx")
res <- read.xlsx(file, 2)  # read the second sheet

# example of writing xlsx sheets
file <- paste(tempfile(), "xlsx", sep=".")
write.xlsx(USArrests, file=file

