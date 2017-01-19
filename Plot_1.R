setwd("exdata%2Fdata%2FNEI_data")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
agg_data <- aggregate(Emissions ~ year,NEI, sum)
png("plot1.png", width=480, height=480, units="px")
options(scipen=999)
plot(agg_data, type="l", main="PM2.5 Emissions", xlab="Year", 
     ylab="PM2.5 Emissions", col="red")
dev.off()

