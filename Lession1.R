# https://github.com/Jacobo-A


# Carga del paquete "LearnBayes"
library(LearnBayes)

# Carga de los datos llamados "studentdata" y visualización en una tabla
data("studentdata")
View(studentdata)

# Muestra la primera fila de los datos
studentdata[1,]

# Muestra la segunda fila de los datos
studentdata[2,]

# Tabla de frecuencia para la variable "Drink" y creación de un gráfico de barras
table(studentdata$Drink)
barplot(table(studentdata$Drink), xlab = "Drink", ylab = "Count")

# Creación de una nueva variable "hours.of.sleep" que representa las horas de sueño
studentdata$hours.of.sleep <- with(studentdata, WakeUp - ToSleep)

# Resumen estadístico de la variable "hours.of.sleep"
summary(studentdata$hours.of.sleep)

# Histograma de la variable "hours.of.sleep"
hist(studentdata$hours.of.sleep, main = "")

# Gráfico de dispersión con jitter para visualizar la relación entre "ToSleep" y "hours.of.sleep"
with(studentdata, plot(jitter(ToSleep), jitter(hours.of.sleep)))

# Ajuste de un modelo de regresión lineal ("fit") relacionando "hours.of.sleep" con "ToSleep"
fit <- lm(hours.of.sleep ~ ToSleep, data = studentdata)
fit

# Línea de regresión en el gráfico de dispersión
abline(fit)

