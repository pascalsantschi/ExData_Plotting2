setwd("exdata%2Fdata%2FNEI_data")
library(ggplot2)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
SCC.sub <- SCC[grepl("Coal", SCC$Short.Name),]
NEI.sub <- NEI[NEI$SCC %in% SCC.sub$SCC,]
png("plot4.png", width=480, height=480, units="px")
plot4 <- ggplot(NEI.sub, aes(x = factor(year), y = Emissions, 
        fill=type)) +geom_bar(stat="identity", width=.5) 
        +xlab("year") +ylab("Coal-Related PM2.5 Emissions") 
        +ggtitle("Total Coal-Related PM2.5 Emissions 1999-2008")
print(plot4)
dev.off()