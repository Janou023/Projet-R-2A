
install.packages("readxl")
library(readxl)
donnees <- read_excel("donnees-projet-modelisation-stat-2026-2027.xlsx")
donnees <- as.data.frame(donnees)

head(donnees)
summary(donnees)