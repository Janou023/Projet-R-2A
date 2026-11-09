
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
  # Eigenvalue Proportion Cumulative
  # dim 1        2.12      15.16      15.16
  # dim 2        1.59      11.37      26.53
  # dim 3        1.24       8.89      35.42
  # dim 4        1.23       8.78      44.20
  # dim 5        1.14       8.13      52.34
  # dim 6        1.02       7.30      59.64
  # dim 7        0.97       6.95      66.59
  # dim 8        0.95       6.78      73.37
  # dim 9        0.90       6.42      79.79
  # dim 10       0.79       5.67      85.46
  # dim 11       0.75       5.37      90.83
  # dim 12       0.59       4.24      95.08
  # dim 13       0.43       3.07      98.14
  # dim 14       0.26       1.86     100.00
#Pour déterminer le nombre de composantes à retenir, nous avons appliqué le critère de Kaiser. Ce dernier suggère de ne conserver que les axes dont la valeur propre (Eigenvalue) est supérieure à 1
#on pourrait donc enlever dim 14,13,12,11,10 ET peut être 9,8,7 
round(resPCA$quanti$cos2, digits=2)


#enlever id

plot(resPCA,choice="cor")
plot(resPCA,choice="ind")