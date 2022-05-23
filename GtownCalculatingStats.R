#Calculating advanced hitting metrics
hittingStats <- read_excel("~/Desktop/Cumulative Gtown 2022.xlsx")


hittingStats$S <- hittingStats$H - hittingStats$`2B`-hittingStats$`3B`-hittingStats$HR #calculating singles (used in WOBA)

#Calculate WOBA
hittingStats$WOBA <- (hittingStats$BB*.76+hittingStats$HBP*.79+hittingStats$S*.94+hittingStats$`2B`*1.34+hittingStats$`3B`*1.67+hittingStats$HR*2.08)/(hittingStats$AB+hittingStats$BB+hittingStats$SF+hittingStats$HBP)
hittingStats$WOBA <- round(hittingStats$WOBA, 3)

#Calculate ISO
hittingStats$ISO <- hittingStats$`SLG%`-hittingStats$AVG

#Calculate RC (basic)
hittingStats$RC <- ((hittingStats$H+hittingStats$BB)*hittingStats$TB)/(hittingStats$AB+hittingStats$BB)
hittingStats$RC <- round(hittingStats$RC, 1)

#Calculate BABIP
hittingStats$BABIP <- (hittingStats$H-hittingStats$HR)/(hittingStats$AB-hittingStats$SO-hittingStats$HR+hittingStats$SF)
hittingStats$BABIP <- round(hittingStats$BABIP, 3)
