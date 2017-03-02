# Fuente de los datos: http://www.politicsresources.net/
library(dplyr)
library(tidyr)

rm(list = ls())
setwd("/home/eric/Dropbox/data/elecs/uk/1974/data/")

# lee datos brutos
febRaw <- read.csv("uk1974febRaw.csv", stringsAsFactors = FALSE)
octRaw <- read.csv("uk1974octRaw.csv", stringsAsFactors = FALSE)

# lee datos por distrito
feb <- read.csv("uk1974feb.csv", stringsAsFactors = FALSE)
oct <- read.csv("uk1974oct.csv", stringsAsFactors = FALSE)

# las variables
colnames(feb)

# los distritos por región
table(feb$region)
table(oct$region)

# elimina Norirlanda
feb <- feb[feb$norirl==0, ]
oct <- oct[oct$norirl==0, ]

# cuántos incumbents compitieron
tmp <- feb$i1 + feb$i2 + feb$i3 + feb$ioth
tot.inc.feb <- sum(tmp)
print(paste("en febrero: ", tot.inc.feb))

tmp <- oct$i1 + oct$i2 + oct$i3 + oct$ioth
tot.inc.oct <- sum(tmp)
print(paste("en octubre: ", tot.inc.oct))

# distritos con X incumbents
tmp <- feb$i1 + feb$i2 + feb$i3 + feb$ioth
tmp2 <- table(tmp)
print("en febrero:")
tmp2
round(tmp2*100/nrow(feb),1)

tmp <- oct$i1 + oct$i2 + oct$i3 + oct$ioth
tmp2 <- table(tmp)
print("en octubre:")
tmp2
round(tmp2*100/nrow(oct),1)

# incumbents que ganaron
print("en febrero:")
sum(feb$i1)
sum(feb$i1)*100/tot.inc.feb

print("en octubre:")
sum(oct$i1)
sum(oct$i1)*100/tot.inc.oct

sel <- which(feb$ioth==1)
feb[sel,]



table(oct$byEl)
