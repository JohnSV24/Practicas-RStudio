#Muestreo Aleatorio Estratificado No Proporcional

#strata pertenece a la library sampling
#Funcion a utilizar: strata(data,stranames,size,method)
#data: El DataFrame del que se extraera la muestra
#stratanames: El vector con las variables de estratificacion
#size: vector con los tamaños de los estratos en la muestra(en el orden 
#que aparecen en el dataframe)
#method: Metodo para seleccionar los elementos. Pueden ser:
#srswor (simple random sampling without replace), srswr (with replace), 
#poisson y systematic

#Librerias
library(sampling)
library(dplyr)

#Muestreo aleatorio
base
set.seed(10)
muestra_aleatoria <- slice_sample(.data = base, n = 8, replace = F)
muestra_aleatoria

#Como saber cuantos estratos tiene mi dataFrame
data.frame(table(base$nivel_estudios))
#data.frame(table(Dataset$col-name)): nos ayudara a saber el num son los estratos
#Ejemplo de: data.frame(table(base$nivel_estudios))
#   Var1      Freq
#1  Basico    22
#2M.Superior  24
#3Superior    24
#Muestreo Aleatorio estratificado no proporcional
set.seed(10)
muestra_est_np <- strata(data = base, stratanames = c("nivel_estudios"), size = c(3,5,4), method = "srswor")
muestra_est_np

