#Muestreo aleatorio Estratificado Proporcional
library(sampling)
library(dplyr)

#Obtener los estratos del DataSet y nos indica cuantos tiene cada uno
data.frame(table(base$nivel_estudios))

#Nivel superior
n_superior <- sum(with(base, nivel_estudios == "Superior"))/nrow(base)
#n_superior <- 24/70
#nrow(base) = 70
#sum(with(base, nivel_estudios == "Superior")) = 24
#La funcion: sum(with(base, nivel_estudios == "Superior")) indica cuantos TRUE
#de nuestro Dataset hay del nivel_estuidos con "Superior"

n_basico <- sum(with(base, nivel_estudios == "Básico"))/nrow(base)
n_medio_superior <- sum(with(base, nivel_estudios == "Medio Superior"))/nrow(base)

