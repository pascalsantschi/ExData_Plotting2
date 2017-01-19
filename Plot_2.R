setwd("exdata%2Fdata%2FNEI_data")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
bmore_NEI <- NEI[NEI$fips=="24510",]
agg_data_bmore <- aggregate(Emissions~year, bmore_NEI,sum)
png("plot2.png", width=480, height=480, units="px")
plot(agg_data_bmore, type="l", 
     main="Total PM2.5 Emissions Entire Baltimore County", 
     xlab="Year", ylab="PM2.5 Emissions", col="blue")
dev.off()