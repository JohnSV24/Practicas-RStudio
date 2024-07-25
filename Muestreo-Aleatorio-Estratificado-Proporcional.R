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

#Muestreo
muestra_est_p <- strata(data = base, stratanames = c("nivel_estudios"), size = c(round(12*n_superior), round(12*n_basico), round(12*n_medio_superior)), method = "srswor")
muestra_est_p

#Muestra de los estratos proporcional
data.frame(table(muestra_est_p$nivel_estudios))
#         Var1      Freq
#1         Básico    4
#2 Medio Superior    4
#3       Superior    4