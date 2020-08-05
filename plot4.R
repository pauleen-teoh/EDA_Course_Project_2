# Across the United States, how have emissions from 
# coal combustion-related sources changed from 1999-2008?

# load ggplot2
library(ggplot2)
coal_scc <- SCC[grep("coal", SCC$Short.Name, ignore.case = TRUE),]
coal_nei <- NEI[NEI$SCC %in% coal_scc$SCC,]

dim(coal_nei)
#[1] 53400     6

g <- ggplot(coal_nei, aes(as.factor(year), Emissions, fill=type))
g+geom_bar(stat="identity", position="dodge")+labs(x = "Year")+ggtitle("Coal Combustion-related source by Type, 1999-2008")