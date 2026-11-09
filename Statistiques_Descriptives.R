
install.packages("readxl")
library(readxl)
donnees <- read_excel("donnees-projet-modelisation-stat-2026-2027.xlsx")
donnees <- as.data.frame(donnees)

head(donnees)
summary(donnees)

plot(donnees)
library(PCAmixdata)
resPCA<-PCAmix(donnees,graph=FALSE)
round(resPCA$eig,digits=2)

plot(resPCA,choice="cor")
plot(resPCA,choice="ind")