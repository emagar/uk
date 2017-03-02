# Fuente de los datos: http://www.politicsresources.net/
library(dplyr)
library(tidyr)

rm(list = ls())
#setwd("/home/eric/Dropbox/data/elecs/uk/1974/data/")
setwd("/home/lobo/Github/uk/1974/data/")

# lee datos brutos
feb <- read.csv("uk1974febRaw.csv", stringsAsFactors = FALSE)
oct <- read.csv("uk1974octRaw.csv", stringsAsFactors = FALSE)
incumb<-read.csv("Ganadores.csv", stringsAsFactors = FALSE)
by_election<-read.csv("by_election.csv", stringsAsFactors = FALSE)
#Une los que ganaron por by-election y los que ganaron desde antes
incumb<-data.frame(c(incumb$X1970, by_election$bef_1974_02), c(incumb$X1974_02,by_election$bef_1974_10),  c(incumb$X1974_10,rep("",30) ))



#Funcion para ver si un cierto vector tiene incumbents
is.incumbent<-function(Z=NULL,incu=NULL,colaño=NULL)(
  return(as.numeric(pmatch(Z,incu[,colaño], nomatch=0)>0))
)

# funcion para procesar los datos

procesa <- function(X = NULL, incu=NULL,colaño=NULL){#Incu es para pasar el data frame con los ganadores de cada año. Colaño es para indicar en que columna estan los ganadores con los que se comparar
  Y<-X #Guarda una copia
  X$constituency <- gsub("&amp;", "and", X$constituency) # limpia nombre del distrito
  X$turnout <- X$turnout/100
  # distritos norirlandeses
  sel <- grep("Antrim North|Antrim South|Armagh|Belfast East|Belfast North|Belfast South|Down North|Down South|Fermanagh and South Tyrone|Londonderry|Ulster Mid", X$constituency)
  X$norirl <- 0; X$norirl[sel] <- 1
  # así se hace en R un by yr mo: egen tmp=sum(invested) de stata
  X$vtot <- ave(X$v, as.factor(X$constituency), FUN=sum, na.rm=TRUE)
  X$ncand <- ave(X$n, as.factor(X$constituency), FUN=function(x) length(x), na.rm=TRUE)
  X$v3 <- X$v2 <- X$v1 <- 0
  X$p3 <- X$p2 <- X$p1 <- NA
  X$c3 <- X$c2 <- X$c1 <- NA
  # extrae votos del 2do, 3ero
  for (i in 1:max(X$n)){
    #i <- 1 #debug
    sel <- which(X$n==i)
    tmp <- nrow(X[sel,])
    X$v1[sel] <- sort(X$v[sel], partial = tmp)[tmp]    # partial saves computing time
    X$c1[sel] <- X$name[sel][which(X$v[sel]==X$v1[sel][1])]
    X$p1[sel] <- X$party[sel][which(X$v[sel]==X$v1[sel][1])]
    if (X$ncand[sel][1]==1) next
    X$v2[sel] <- sort(X$v[sel], partial = tmp-1)[tmp-1]
    X$c2[sel] <- X$name[sel][which(X$v[sel]==X$v2[sel][1])]
    X$p2[sel] <- X$party[sel][which(X$v[sel]==X$v2[sel][1])]
    if (X$ncand[sel][1]==2) next
    X$v3[sel] <- sort(X$v[sel], partial = tmp-2)[tmp-2]
    X$c3[sel] <- X$name[sel][which(X$v[sel]==X$v3[sel][1])]
    X$p3[sel] <- X$party[sel][which(X$v[sel]==X$v3[sel][1])]
  }
  X$voth <- X$vtot - X$v1 - X$v2 - X$v3
  X$sh1 <- X$v1/X$vtot
  X$sh2 <- X$v2/X$vtot
  X$sh3 <- X$v3/X$vtot
  X$shoth <- X$voth/X$vtot
  
  X <- X[duplicated(X$n)==FALSE,]
  X <- X[,c("n","constituency","region","norirl","status","electorate","turnout","ncand","vtot","v1","v2","v3","voth","sh1","sh2","sh3","shoth","c1","c2","c3","p1","p2","p3")]
  
  X$i1<-is.incumbent(X$c1,incu,colaño)
  X$i2<-is.incumbent(X$c2,incu,colaño)
  X$i3<-is.incumbent(X$c3,incu,colaño)
  
  Y<-select(Y,n,name) #Hace un data frame con solo las variables n y name
  Y$pl<-sequence(rle(Y$n)$lengths) #Le agrega al anterior data frame una variable que indica el lugar en que quedo cada candidato en su distrito
  places<-spread(Y,pl,name)#Primer, segunto, tercer.... estan acomodado por columnas de cada distrito
  X$ioth<-as.numeric(apply( apply(places[,4:length(places[1,])], 2 , is.incumbent, incu=incu,colaño=colaño),1,sum)>0)
  X$byEl<-as.numeric(pmatch(X$constituency, by_election[,2*colaño-1], nomatch=0)>0)
  return(X)
}

# prepara datos de la eleccion de febrero
feb <- procesa(feb,incumb,1)
# prepara datos de la eleccion de octubre
oct <- procesa(oct,incumb,2)

sel <- which(feb$ioth==1)
feb[sel,]

head(feb)
table(oct$ioth)

write.csv(feb, file = "uk1974feb.csv", row.names = FALSE)
write.csv(oct, file = "uk1974oct.csv", row.names = FALSE)

