#Muestreo Aleatorio Simple
# install.packages("DescTools") <- para instalar paquetes
#library(DescTools) <- para poner libreria, ejemplo estadistica descriptiva
#sampling especializado en muestreo 
library(sampling)
#dplyr especializado en data frames y analisis de datos
library(dplyr)

#Consejo: Puedes hacer ctrl + enter en una linea para correr la linea
#base es el import DataSet
base
#set.seed(numero-para-aleatorizar)
set.seed(109)
#set.seed() Al establecer una semilla, te aseguras de que las operaciones que impliquen aleatoriedad produzcan los mismos resultados cada vez que se ejecuten con la misma semilla.


#Muestra aleatoria
#slice_sample(.data = de-donde-obtiene-los-datos, n = num-muestra, replace = si hay reemplazo o no)
muestra_aleatoria <- slice_sample(.data = base, n = 8, replace = FALSE)
#llamado a muestra aleatoria
muestra_aleatoria
