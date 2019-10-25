################################################################################
#                                                                              #
# Modelo de Regressão Basico                                                   #
# Data 25/10/2019                                                              #                                                             
#                                                                              #
#______________________________________________________________________________#
# 00 Organizando path's ########################################################

input = "./inputs"
output = "./outputs"
plots = "./plot"
#https://feliperego.github.io/blog/2015/10/23/Interpreting-Model-Output-In-R 

# 01 Carregando Base de dados ##################################################

library("datasets")  #Utilizando a base de dados 'cars'

# 02 Analise inicial dos dados #################################################

df = cars #organizando dados em um data.frame
summary(df) #analise das observações 

# Analise Grafica dos dados
# jpeg(paste0(plots,"cars_plot.jpg"))
plot(cars,
     col="Black",
     pch=20,
     cex=2,
     main="Relação entre Velocidade e distancia de parada",
     xlab="mph",
     ylab="Pés")
# Pode-se visualizar uma relação linear entre as váriaveis.
# dev.off()

set.seed(122) # - > ?
vel.c = scale(df$speed, center=TRUE, scale=FALSE) #centralizando valores - isto é, fazendo cada observação menos a média.
modelo01 = lm(dist ~ vel.c, data = df) #Regressão
modelo02 = lm(dist ~ speed, data = df) #Regressão
summary(modelo01)
summary(modelo02)


