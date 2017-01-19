setwd("exdata%2Fdata%2FNEI_data")
library(ggplot2)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
bmore_NEI <- NEI[NEI$fips=="24510",]
agg_data_bmore <- aggregate(bmore_NEI[c("Emissions")], 
                   list(type=bmore_NEI$type, 
                   year=bmore_NEI$year), sum)
png("plot3.png", width=480, height=480, units="px")
plot_3 <- qplot(year, Emissions, data=agg_data_bmore, 
          color=type, geom="line") 
          +ggtitle("Total PM2.5 Emissions in Baltimore County 1999-2008 by Source Type") 
          +xlab("Year") +ylab("PM2.5 Emissions")
print(plot_3)
dev.off() 