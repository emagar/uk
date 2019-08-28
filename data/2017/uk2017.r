setwd("/home/eric/Desktop/data/elecs/uk/2017")

dat <- read.csv("HoC-GE2017-results-by-candidate.csv", stringsAsFactors = FALSE)

sel <- which(dat$party_name=="Alliance")
dat$vAlliance <- 0
dat$sAlliance <- 0
dat$vAlliance[sel] <- dat$votes[sel]
dat$sAlliance[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Alliance for Green Socialism")
dat$vGreenSoc <- 0
dat$sGreenSoc <- 0
dat$vGreenSoc[sel] <- dat$votes[sel]
dat$sGreenSoc[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Animal Welfare Party")
dat$vAnimalWelfare <- 0
dat$sAnimalWelfare <- 0
dat$vAnimalWelfare[sel] <- dat$votes[sel]
dat$sAnimalWelfare[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Apolitical Democrat")
dat$vApoliticalDem <- 0
dat$sApoliticalDem <- 0
dat$vApoliticalDem[sel] <- dat$votes[sel]
dat$sApoliticalDem[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Ashfield Independents" | dat$party_name=="Independent" | dat$party_name=="Independent Save Withybush Save Lives" | dat$party_name=="Independent Sovereign Democratic Britain" | dat$party_name=="Southampton Independents" | dat$party_name=="Southend Independent Association")
dat$vIndep <- 0
dat$sIndep <- 0
dat$vIndep[sel] <- dat$votes[sel]
dat$sIndep[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Better for Bradford")
dat$vBetter4Bradford <- 0
dat$sBetter4Bradford <- 0
dat$vBetter4Bradford[sel] <- dat$votes[sel]
dat$sBetter4Bradford[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Blue Revolution")
dat$vBlueRev <- 0
dat$sBlueRev <- 0
dat$vBlueRev[sel] <- dat$votes[sel]
dat$sBlueRev[sel] <- dat$share[sel]
sel <- which(dat$party_name=="British National Party")
dat$vBNP <- 0
dat$sBNP <- 0
dat$vBNP[sel] <- dat$votes[sel]
dat$sBNP[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Christian Party, Proclaiming Christ's Lordship" | dat$party_name=="Christian Peoples Alliance Party")
dat$vChristian <- 0
dat$sChristian <- 0
dat$vChristian[sel] <- dat$votes[sel]
dat$sChristian[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Church of the Militant Elvis Party")
dat$vMilitantElvis <- 0
dat$sMilitantElvis <- 0
dat$vMilitantElvis[sel] <- dat$votes[sel]
dat$sMilitantElvis[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Citizens Independent Social Thought Alliance")
dat$vSocialThought <- 0
dat$sSocialThought <- 0
dat$vSocialThought[sel] <- dat$votes[sel]
dat$sSocialThought[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Common Good Party")
dat$vCommonGood <- 0
dat$sCommonGood <- 0
dat$vCommonGood[sel] <- dat$votes[sel]
dat$sCommonGood[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Communist League Election Campaign")
dat$vCommunist <- 0
dat$sCommunist <- 0
dat$vCommunist[sel] <- dat$votes[sel]
dat$sCommunist[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Compass Party")
dat$vCompass <- 0
dat$sCompass <- 0
dat$vCompass[sel] <- dat$votes[sel]
dat$sCompass[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Concordia")
dat$vConcordia <- 0
dat$sConcordia <- 0
dat$vConcordia[sel] <- dat$votes[sel]
dat$sConcordia[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Conservative")
dat$vCon <- 0
dat$sCon <- 0
dat$vCon[sel] <- dat$votes[sel]
dat$sCon[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Democratic Unionist Party")
dat$vDemUnionist <- 0
dat$sDemUnionist <- 0
dat$vDemUnionist[sel] <- dat$votes[sel]
dat$sDemUnionist[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Demos Direct Initiative Party")
dat$vDirectInitiative <- 0
dat$sDirectInitiative <- 0
dat$vDirectInitiative[sel] <- dat$votes[sel]
dat$sDirectInitiative[sel] <- dat$share[sel]
sel <- which(dat$party_name=="English Democrats")
dat$vEnglishDems <- 0
dat$sEnglishDems <- 0
dat$vEnglishDems[sel] <- dat$votes[sel]
dat$sEnglishDems[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Friends Party")
dat$vFriends <- 0
dat$sFriends <- 0
dat$vFriends[sel] <- dat$votes[sel]
dat$sFriends[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Greater Manchester Homeless Voice")
dat$vHomeless <- 0
dat$sHomeless <- 0
dat$vHomeless[sel] <- dat$votes[sel]
dat$sHomeless[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Green")
dat$vGreen <- 0
dat$sGreen <- 0
dat$vGreen[sel] <- dat$votes[sel]
dat$sGreen[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Humanity Party")
dat$vHumanity <- 0
dat$sHumanity <- 0
dat$vHumanity[sel] <- dat$votes[sel]
dat$sHumanity[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Justice and Anti-Corruption Party" | dat$party_name=="The Justice & Anti-Corruption Party")
dat$vAntiCorrupt <- 0
dat$sAntiCorrupt <- 0
dat$vAntiCorrupt[sel] <- dat$votes[sel]
dat$sAntiCorrupt[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Labour")
dat$vLab <- 0
dat$sLab <- 0
dat$vLab[sel] <- dat$votes[sel]
dat$sLab[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Labour and Co-operative")
dat$vLabCoop <- 0
dat$sLabCoop <- 0
dat$vLabCoop[sel] <- dat$votes[sel]
dat$sLabCoop[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Liberal")
dat$vLib <- 0
dat$sLib <- 0
dat$vLib[sel] <- dat$votes[sel]
dat$sLib[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Liberal Democrat")
dat$vLDP <- 0
dat$sLDP <- 0
dat$vLDP[sel] <- dat$votes[sel]
dat$sLDP[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Libertarian Party")
dat$vLibertarian <- 0
dat$sLibertarian <- 0
dat$vLibertarian[sel] <- dat$votes[sel]
dat$sLibertarian[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Money Free Party")
dat$vMoneyFree <- 0
dat$sMoneyFree <- 0
dat$vMoneyFree[sel] <- dat$votes[sel]
dat$sMoneyFree[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Monster Raving Loony Party")
dat$vRavingLoony <- 0
dat$sRavingLoony <- 0
dat$vRavingLoony[sel] <- dat$votes[sel]
dat$sRavingLoony[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Movement for Active Democracy")
dat$vActiveDem <- 0
dat$sActiveDem <- 0
dat$vActiveDem[sel] <- dat$votes[sel]
dat$sActiveDem[sel] <- dat$share[sel]
sel <- which(dat$party_name=="National Health Action Party")
dat$vNatHealth <- 0
dat$sNatHealth <- 0
dat$vNatHealth[sel] <- dat$votes[sel]
dat$sNatHealth[sel] <- dat$share[sel]
sel <- which(dat$party_name=="North of England Community Alliance")
dat$vNorthEngland <- 0
dat$sNorthEngland <- 0
dat$vNorthEngland[sel] <- dat$votes[sel]
dat$sNorthEngland[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Open Borders Party")
dat$vOpenBorders <- 0
dat$sOpenBorders <- 0
dat$vOpenBorders[sel] <- dat$votes[sel]
dat$sOpenBorders[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Patria")
dat$vPatria <- 0
dat$sPatria <- 0
dat$vPatria[sel] <- dat$votes[sel]
dat$sPatria[sel] <- dat$share[sel]
sel <- which(dat$party_name=="People Before Profit Alliance")
dat$vPeopleBefProfit <- 0
dat$sPeopleBefProfit <- 0
dat$vPeopleBefProfit[sel] <- dat$votes[sel]
dat$sPeopleBefProfit[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Pirate Party")
dat$vPirate <- 0
dat$sPirate <- 0
dat$vPirate[sel] <- dat$votes[sel]
dat$sPirate[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Plaid Cymru")
dat$vPlaidCymru <- 0
dat$sPlaidCymru <- 0
dat$vPlaidCymru[sel] <- dat$votes[sel]
dat$sPlaidCymru[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Populist Party")
dat$vPopulist <- 0
dat$sPopulist <- 0
dat$vPopulist[sel] <- dat$votes[sel]
dat$sPopulist[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Rebooting Democracy")
dat$vRebootDem <- 0
dat$sRebootDem <- 0
dat$vRebootDem[sel] <- dat$votes[sel]
dat$sRebootDem[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Scotland's Independence Referendum Party")
dat$vScotlandReferendum <- 0
dat$sScotlandReferendum <- 0
dat$vScotlandReferendum[sel] <- dat$votes[sel]
dat$sScotlandReferendum[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Scottish National Party")
dat$vSNP <- 0
dat$sSNP <- 0
dat$vSNP[sel] <- dat$votes[sel]
dat$sSNP[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Sinn Fein")
dat$vSinnFein <- 0
dat$sSinnFein <- 0
dat$vSinnFein[sel] <- dat$votes[sel]
dat$sSinnFein[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Social Democratic and Labour Party")
dat$vSocDemLab <- 0
dat$sSocDemLab <- 0
dat$vSocDemLab[sel] <- dat$votes[sel]
dat$sSocDemLab[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Social Democratic Party")
dat$vSocDem <- 0
dat$sSocDem <- 0
dat$vSocDem[sel] <- dat$votes[sel]
dat$sSocDem[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Socialist Labour Party")
dat$vSocLab <- 0
dat$sSocLab <- 0
dat$vSocLab[sel] <- dat$votes[sel]
dat$sSocLab[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Something New")
dat$vSmthgNew <- 0
dat$sSmthgNew <- 0
dat$vSmthgNew[sel] <- dat$votes[sel]
dat$sSmthgNew[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Space Navies Party")
dat$vSpaceNavies <- 0
dat$sSpaceNavies <- 0
dat$vSpaceNavies[sel] <- dat$votes[sel]
dat$sSpaceNavies[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Speaker")
dat$vSpeaker <- 0
dat$sSpeaker <- 0
dat$vSpeaker[sel] <- dat$votes[sel]
dat$sSpeaker[sel] <- dat$share[sel]
sel <- which(dat$party_name=="The Just Political Party")
dat$vJust <- 0
dat$sJust <- 0
dat$vJust[sel] <- dat$votes[sel]
dat$sJust[sel] <- dat$share[sel]
sel <- which(dat$party_name=="The New Society of Worth")
dat$vNewSoc <- 0
dat$sNewSoc <- 0
dat$vNewSoc[sel] <- dat$votes[sel]
dat$sNewSoc[sel] <- dat$share[sel]
sel <- which(dat$party_name=="The North East Party")
dat$vNorthEast <- 0
dat$sNorthEast <- 0
dat$vNorthEast[sel] <- dat$votes[sel]
dat$sNorthEast[sel] <- dat$share[sel]
sel <- which(dat$party_name=="The Peace Party")
dat$vPeace <- 0
dat$sPeace <- 0
dat$vPeace[sel] <- dat$votes[sel]
dat$sPeace[sel] <- dat$share[sel]
sel <- which(dat$party_name=="The Radical Party")
dat$vRadical <- 0
dat$sRadical <- 0
dat$vRadical[sel] <- dat$votes[sel]
dat$sRadical[sel] <- dat$share[sel]
sel <- which(dat$party_name=="The Realists' Party")
dat$vRealists <- 0
dat$sRealists <- 0
dat$vRealists[sel] <- dat$votes[sel]
dat$sRealists[sel] <- dat$share[sel]
sel <- which(dat$party_name=="The Socialist Party of Great Britain")
dat$vSoc <- 0
dat$sSoc <- 0
dat$vSoc[sel] <- dat$votes[sel]
dat$sSoc[sel] <- dat$share[sel]
sel <- which(dat$party_name=="The Yorkshire Party")
dat$vYorkshire <- 0
dat$sYorkshire <- 0
dat$vYorkshire[sel] <- dat$votes[sel]
dat$sYorkshire[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Traditional Unionist Voice")
dat$vTradUnionist <- 0
dat$sTradUnionist <- 0
dat$vTradUnionist[sel] <- dat$votes[sel]
dat$sTradUnionist[sel] <- dat$share[sel]
sel <- which(dat$party_name=="UK Independence Party")
dat$vUKIP <- 0
dat$sUKIP <- 0
dat$vUKIP[sel] <- dat$votes[sel]
dat$sUKIP[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Ulster Unionist Party")
dat$vUlsterUnionist <- 0
dat$sUlsterUnionist <- 0
dat$vUlsterUnionist[sel] <- dat$votes[sel]
dat$sUlsterUnionist[sel] <- dat$share[sel]
sel <- which(dat$party_name=="War Veteran's Pro-Traditional Family Party")
dat$vVeteranFamily <- 0
dat$sVeteranFamily <- 0
dat$vVeteranFamily[sel] <- dat$votes[sel]
dat$sVeteranFamily[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Wessex Regionalist Party")
dat$vWessex <- 0
dat$sWessex <- 0
dat$vWessex[sel] <- dat$votes[sel]
dat$sWessex[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Women's Equality Party")
dat$vWomenEqual <- 0
dat$sWomenEqual <- 0
dat$vWomenEqual[sel] <- dat$votes[sel]
dat$sWomenEqual[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Workers Party" | dat$party_name=="Workers Revolutionary Party")
dat$vWorkers <- 0
dat$sWorkers <- 0
dat$vWorkers[sel] <- dat$votes[sel]
dat$sWorkers[sel] <- dat$share[sel]
sel <- which(dat$party_name=="Young People's Party")
dat$vYoung <- 0
dat$sYoung <- 0
dat$vYoung[sel] <- dat$votes[sel]
dat$sYoung[sel] <- dat$share[sel]

# repeat party vote data for all constituency lines
dat$vAlliance <- ave(dat$vAlliance, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sAlliance <- ave(dat$sAlliance, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vGreenSoc <- ave(dat$vGreenSoc, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sGreenSoc <- ave(dat$sGreenSoc, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vAnimalWelfare <- ave(dat$vAnimalWelfare, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sAnimalWelfare <- ave(dat$sAnimalWelfare, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vApoliticalDem <- ave(dat$vApoliticalDem, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sApoliticalDem <- ave(dat$sApoliticalDem, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vIndep <- ave(dat$vIndep, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sIndep <- ave(dat$sIndep, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vBetter4Bradford <- ave(dat$vBetter4Bradford, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sBetter4Bradford <- ave(dat$sBetter4Bradford, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vBlueRev <- ave(dat$vBlueRev, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sBlueRev <- ave(dat$sBlueRev, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vBNP <- ave(dat$vBNP, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sBNP <- ave(dat$sBNP, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vChristian <- ave(dat$vChristian, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sChristian <- ave(dat$sChristian, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vMilitantElvis <- ave(dat$vMilitantElvis, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sMilitantElvis <- ave(dat$sMilitantElvis, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vSocialThought <- ave(dat$vSocialThought, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sSocialThought <- ave(dat$sSocialThought, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vCommonGood <- ave(dat$vCommonGood, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sCommonGood <- ave(dat$sCommonGood, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vCommunist <- ave(dat$vCommunist, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sCommunist <- ave(dat$sCommunist, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vCompass <- ave(dat$vCompass, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sCompass <- ave(dat$sCompass, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vConcordia <- ave(dat$vConcordia, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sConcordia <- ave(dat$sConcordia, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vCon <- ave(dat$vCon, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sCon <- ave(dat$sCon, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vDemUnionist <- ave(dat$vDemUnionist, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sDemUnionist <- ave(dat$sDemUnionist, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vDirectInitiative <- ave(dat$vDirectInitiative, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sDirectInitiative <- ave(dat$sDirectInitiative, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vEnglishDems <- ave(dat$vEnglishDems, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sEnglishDems <- ave(dat$sEnglishDems, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vFriends <- ave(dat$vFriends, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sFriends <- ave(dat$sFriends, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vHomeless <- ave(dat$vHomeless, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sHomeless <- ave(dat$sHomeless, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vGreen <- ave(dat$vGreen, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sGreen <- ave(dat$sGreen, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vHumanity <- ave(dat$vHumanity, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sHumanity <- ave(dat$sHumanity, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vAntiCorrupt <- ave(dat$vAntiCorrupt, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sAntiCorrupt <- ave(dat$sAntiCorrupt, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vLab <- ave(dat$vLab, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sLab <- ave(dat$sLab, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vLabCoop <- ave(dat$vLabCoop, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sLabCoop <- ave(dat$sLabCoop, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vLib <- ave(dat$vLib, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sLib <- ave(dat$sLib, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vLDP <- ave(dat$vLDP, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sLDP <- ave(dat$sLDP, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vLibertarian <- ave(dat$vLibertarian, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sLibertarian <- ave(dat$sLibertarian, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vMoneyFree <- ave(dat$vMoneyFree, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sMoneyFree <- ave(dat$sMoneyFree, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vRavingLoony <- ave(dat$vRavingLoony, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sRavingLoony <- ave(dat$sRavingLoony, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vActiveDem <- ave(dat$vActiveDem, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sActiveDem <- ave(dat$sActiveDem, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vNatHealth <- ave(dat$vNatHealth, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sNatHealth <- ave(dat$sNatHealth, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vNorthEngland <- ave(dat$vNorthEngland, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sNorthEngland <- ave(dat$sNorthEngland, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vOpenBorders <- ave(dat$vOpenBorders, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sOpenBorders <- ave(dat$sOpenBorders, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vPatria <- ave(dat$vPatria, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sPatria <- ave(dat$sPatria, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vPeopleBefProfit <- ave(dat$vPeopleBefProfit, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sPeopleBefProfit <- ave(dat$sPeopleBefProfit, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vPirate <- ave(dat$vPirate, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sPirate <- ave(dat$sPirate, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vPlaidCymru <- ave(dat$vPlaidCymru, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sPlaidCymru <- ave(dat$sPlaidCymru, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vPopulist <- ave(dat$vPopulist, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sPopulist <- ave(dat$sPopulist, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vRebootDem <- ave(dat$vRebootDem, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sRebootDem <- ave(dat$sRebootDem, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vScotlandReferendum <- ave(dat$vScotlandReferendum, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sScotlandReferendum <- ave(dat$sScotlandReferendum, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vSNP <- ave(dat$vSNP, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sSNP <- ave(dat$sSNP, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vSinnFein <- ave(dat$vSinnFein, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sSinnFein <- ave(dat$sSinnFein, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vSocDemLab <- ave(dat$vSocDemLab, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sSocDemLab <- ave(dat$sSocDemLab, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vSocDem <- ave(dat$vSocDem, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sSocDem <- ave(dat$sSocDem, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vSocLab <- ave(dat$vSocLab, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sSocLab <- ave(dat$sSocLab, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vSmthgNew <- ave(dat$vSmthgNew, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sSmthgNew <- ave(dat$sSmthgNew, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vSpaceNavies <- ave(dat$vSpaceNavies, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sSpaceNavies <- ave(dat$sSpaceNavies, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vSpeaker <- ave(dat$vSpeaker, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sSpeaker <- ave(dat$sSpeaker, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vJust <- ave(dat$vJust, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sJust <- ave(dat$sJust, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vNewSoc <- ave(dat$vNewSoc, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sNewSoc <- ave(dat$sNewSoc, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vNorthEast <- ave(dat$vNorthEast, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sNorthEast <- ave(dat$sNorthEast, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vPeace <- ave(dat$vPeace, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sPeace <- ave(dat$sPeace, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vRadical <- ave(dat$vRadical, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sRadical <- ave(dat$sRadical, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vRealists <- ave(dat$vRealists, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sRealists <- ave(dat$sRealists, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vSoc <- ave(dat$vSoc, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sSoc <- ave(dat$sSoc, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vYorkshire <- ave(dat$vYorkshire, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sYorkshire <- ave(dat$sYorkshire, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vTradUnionist <- ave(dat$vTradUnionist, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sTradUnionist <- ave(dat$sTradUnionist, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vUKIP <- ave(dat$vUKIP, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sUKIP <- ave(dat$sUKIP, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vUlsterUnionist <- ave(dat$vUlsterUnionist, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sUlsterUnionist <- ave(dat$sUlsterUnionist, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vVeteranFamily <- ave(dat$vVeteranFamily, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sVeteranFamily <- ave(dat$sVeteranFamily, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vWessex <- ave(dat$vWessex, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sWessex <- ave(dat$sWessex, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vWomenEqual <- ave(dat$vWomenEqual, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sWomenEqual <- ave(dat$sWomenEqual, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vWorkers <- ave(dat$vWorkers, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sWorkers <- ave(dat$sWorkers, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$vYoung <- ave(dat$vYoung, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)
dat$sYoung <- ave(dat$sYoung, as.factor(dat$ons_id), FUN=sum, na.rm=TRUE)

# consolidate constituencies
dat <- dat[duplicated(dat$ons_id)==FALSE,]
dat$party_name <- dat$party_abbreviation <- dat$firstname <- dat$surname <- dat$gender <- dat$sitting_mp <- dat$former_mp <- dat$votes <- dat$share <- dat$change <- NULL

head(dat)

write.csv(dat, file = "uk2017matrix.csv", row.names = FALSE)




