g <- grep("Coal",SCCdf$Short.Name)
h <- SCCdf[g,]
library(data.table)
dtNEI <- data.table(NEIdf,key="SCC")
dtcoal <- data.table(h,key="SCC")
joindNC <- dtNEI[dtcoal]
result <- tapply(joindNC$Emissions,as.factor(joindNC$year),sum)
png(file="D:/DS/Project/exdata/plot4.png", width=480, height=480)
plot(names(result),result, xlab="Year",ylab="Total PM2.5",pch=20)
dev.off()


