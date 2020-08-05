# Have total emissions from PM2.5 decreased in the Baltimore City, Maryland 
# (fips == "24510") from 1999 to 2008? 
# Use the base plotting system to make a plot answering this question.

Baltimore <- subset(NEI, fips == "24510")
emissions_by_year <- tapply(Baltimore$Emissions, Baltimore$year, sum)
plot(names(emissions_by_year), emissions_by_year, type = "l", xlab = "Year", ylab = "Total Emission")
title(main = "Total Emission in Baltimore City, Maryland by Year")
