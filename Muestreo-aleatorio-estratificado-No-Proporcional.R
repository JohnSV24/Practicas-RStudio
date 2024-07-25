#Muestreo Aleatorio Estratificado No Proporcional
#Funcion a utilizar: strata(data,stranames,size,method)
#strata pertenece a la library sampling

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


