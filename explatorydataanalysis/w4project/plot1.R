NEI <- readRDS("D:/DS/Project/summarySCC_PM25.rds")
SCC <- readRDS("D:/DS/Project/Source_Classification_Code.rds")
result <- tapply(NEIdf$Emissions,as.factor(NEIdf$year),sum)
plot(names(result),result, xlab="Year",ylab="Total PM2.5",pch=20)
