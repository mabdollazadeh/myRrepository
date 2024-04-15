NEI <- readRDS("D:/DS/Project/summarySCC_PM25.rds")
SCC <- readRDS("D:/DS/Project/Source_Classification_Code.rds")
NEIdf <- data.frame(NEI)
h <- subset(NEIdf,NEIdf$fips=="24510")
result <- tapply(h$Emissions,as.factor(h$year),sum)
png(file="D:/DS/Project/exdata/plot2.png",
width=480, height=480)
plot(names(result),result, xlab="Year",ylab="Total PM2.5",pch=20)
dev.off()
