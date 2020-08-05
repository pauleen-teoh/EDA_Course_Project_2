# How have emissions from motor vehicle sources changed 
# from 1999-2008 in Baltimore City?

mv_nei <- subset(NEI, fips == "24510" & type == "ON-ROAD")
dim(mv_nei)
#[1] 1119     6

mv_by_year <- tapply(mv_nei$Emission, mv_nei$year, sum)
plot(names(mv_by_year), mv_by_year, type = "o", main = "Motor vehicle source in Baltimore City, 1999-2008", xlab="Year", ylab = "Total Emissions")