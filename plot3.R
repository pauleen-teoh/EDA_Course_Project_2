# Of the four types of sources indicated by the type (point, nonpoint, 
# onroad, nonroad) variable, which of these four sources have seen 
# decreases in emissions from 1999-2008 for Baltimore City? 
# Which have seen increases in emissions from 1999-2008? 
# Use the ggplot2 plotting system to make a plot answer this question.

# load ggplot2
library(ggplot2)

g <- ggplot(Baltimore, aes(as.factor(year), Emissions, fill=type))+labs(x = "Year")
g+geom_bar(stat="identity", position="dodge")+ggtitle("Emissions in Baltimore City by Type, 1998-2008")