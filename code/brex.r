rm(list = ls())

setwd("/home/eric/Dropbox/data/elecs/uk/data/")

# lee los datos
brex <- read.csv("2016brexit/Estimates-of-constituency-level-EU-referendum-result.csv", stringsAsFactors = FALSE)
ge15 <- read.csv("2015/BES-2015-General-Election-results-file-v1.1.csv", stringsAsFactors = FALSE)
ge17 <- read.csv("2017/uk2017matrix.csv", stringsAsFactors = FALSE)
ge10 <- read.csv("2010/British_Parliamentary_Constituency_General_Election_2010_Version_5.csv", stringsAsFactors = FALSE)

# incumbents 2017
inc17 <- read.csv("2017/HoC-GE2017-results-by-candidate.csv", stringsAsFactors = FALSE)
sel <- which(inc17$sitting_mp=="Yes")
inc17 <- inc17[sel,]
#
ge17$inc <- "none"
sel <- which(inc17$party_name=="Conservative")
sel <- which(ge17$ons_id %in% inc17$ons_id[sel])
ge17$inc[sel] <- "Conservative"
sel <- which(inc17$party_name=="Labour")
sel <- which(ge17$ons_id %in% inc17$ons_id[sel])
ge17$inc[sel] <- "Labour"
sel <- which(inc17$party_name=="Democratic Unionist Party")
sel <- which(ge17$ons_id %in% inc17$ons_id[sel])
ge17$inc[sel] <- "Democratic Unionist Party"
sel <- which(inc17$party_name=="Green")
sel <- which(ge17$ons_id %in% inc17$ons_id[sel])
ge17$inc[sel] <- "Green"
sel <- which(inc17$party_name=="Independent")
sel <- which(ge17$ons_id %in% inc17$ons_id[sel])
ge17$inc[sel] <- "Independent"
sel <- which(inc17$party_name=="Labour and Co-operative")
sel <- which(ge17$ons_id %in% inc17$ons_id[sel])
ge17$inc[sel] <- "Labour and Co-operative"
sel <- which(inc17$party_name=="Liberal Democrat")
sel <- which(ge17$ons_id %in% inc17$ons_id[sel])
ge17$inc[sel] <- "Liberal Democrat"
sel <- which(inc17$party_name=="Plaid Cymru")
sel <- which(ge17$ons_id %in% inc17$ons_id[sel])
ge17$inc[sel] <- "Plaid Cymru"
sel <- which(inc17$party_name=="Scottish National Party")
sel <- which(ge17$ons_id %in% inc17$ons_id[sel])
ge17$inc[sel] <- "Scottish National Party"
sel <- which(inc17$party_name=="Sinn Fein")
sel <- which(ge17$ons_id %in% inc17$ons_id[sel])
ge17$inc[sel] <- "Sinn Fein"
sel <- which(inc17$party_name=="Social Democratic and Labour Party")
sel <- which(ge17$ons_id %in% inc17$ons_id[sel])
ge17$inc[sel] <- "Social Democratic and Labour Party"
sel <- which(inc17$party_name=="Speaker ")
sel <- which(ge17$ons_id %in% inc17$ons_id[sel])
ge17$inc[sel] <- "Speaker "
sel <- which(inc17$party_name=="Ulster Unionist Party")
sel <- which(ge17$ons_id %in% inc17$ons_id[sel])
ge17$inc[sel] <- "Ulster Unionist Party"
#
table(ge17$inc)
#
ge17$dopen <- as.numeric(ge17$inc=="none")
ge17$dincLab <- as.numeric(ge17$inc=="Labour" | ge17$inc=="Labour and Co-operative" | ge17$inc=="Social Democratic and Labour Party")
#
table(ge17$dincLab)

# incumbent 2015
ge15$dincLab <- as.numeric(ge15$Winner10=="Labour") # approximation by party win in 2010
#
ge15$LabPCC

colnames(ge15)
table(ge15$SeatChange1015)
head(ge15$ConPPC) # candidate name

colnames(ge17)

brex$leaveVote[is.na(brex$leaveVote)==FALSE]
ge15$Lab15
ge15$Lab10
ge17$sLab

# homologa votos
ge15$Lab15 <- ge15$Lab15/100
ge15$Lab10 <- ge15$Lab10/100

