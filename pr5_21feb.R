#1
set.seed(123)
site <- c(sample(1:10, 200, replace = T))

numero_artefactos <- c(sample(1:1000,200, replace = T))

tipo_artefactos <- sample(c("pottery", "tools", "jelwerly", "weapons"), 200, replace = T)

contexto <- sample(c("habitacional", "funerario", "otros"), 200, replace = T)

latitud <- c(sample(0:90, 200, replace = T))

longitud <- c(sample(-180:180, 200, replace = T))

datos_arqueologicos <- data.frame(site, numero_artefactos, tipo_artefactos,
                                  contexto, latitud, longitud)

#2
media.artefactos <- mean(numero_artefactos)
cuartiles.artefactos <- quantile(numero_artefactos)

#3
par(mar = c(1, 1, 1, 1))

historiograma.artefactos <- hist(numero_artefactos)

#4
boxplot(numero_artefactos)
  #simetría positiva  

#5
yacimientos <- unique(site)
Grafico.artefactos <- barplot(numero_artefactos, main = "Artefactos por yacimiento",
        xlab = site,
        ylab = "Numero artefactos",
        )

#6
ggplot(datos_arqueologicos, aes(x = longitud, y = latitud)) + geom_bin2d() + labs()

#7
suma.artefactos <- sum(datos_arqueologicos$numero_artefactos)
suma.artefactos

#8
mediana.artefactos <- median(datos_arqueologicos$numero_artefactos)

#9
desviacion_est.artefectos <- sd(datos_arqueologicos$numero_artefactos)

#10


#11
tabla.resumen <- table(mediana.artefactos,suma.artefactos, mediana.artefactos, desviacion_est.artefectos)
tabla.resumen <- aggregate(numero_artefactos - site, data = datos_arqueologicos, FUN, '..falta este campo..' , simplify = TRUE, drop = TRUE)

help(aggregate)

#12

