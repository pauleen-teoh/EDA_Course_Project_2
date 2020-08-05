# Compare emissions from motor vehicle sources in Baltimore City with 
# emissions from motor vehicle sources in Los Angeles County, California 
# (fips == "06037"). Which city has seen greater changes over time in 
# motor vehicle emissions?

Baltimore <- subset(NEI, fips == "24510" &  type == "ON-ROAD")
LA <- subset(NEI, fips == "06037" & type == "ON-ROAD")

bal <- tapply(Baltimore$Emissions, Baltimore$year, sum)
la <- tapply(LA$Emissions, LA$year, sum)

par(mfrow = c(1,2), mar = c(4,4,4,2), oma = c(1,1,4,1))
plot(names(bal), bal, type = "o", main = "Baltimore City", cex.main = 1, xlab = "Year", ylab = "Total Emission")
plot(names(la), la, type = "o", main = "Los Angeles", cex.main = 1, xlab = "Year", ylab = "Total Emission")
title(main = "Total Emissions by motor vehicle (compare 2 counties)", outer = TRUE)