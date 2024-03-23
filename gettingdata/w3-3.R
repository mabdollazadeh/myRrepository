file <- download.file("https://d396qusza40orc.cloudfront.net/getdata/data/GDP.csv","D:/DS/Project/gettingdata/GDP.csv")
file2 <- download.file("https://d396qusza40orc.cloudfront.net/getdata/data/EDSTATS_Country.csv","D:/DS/Project/gettingdata/EDSTATS_Country.csv")

x <- read.csv("D:/DS/Project/gettingdata/GDP.csv",header=T)
y <- read.csv("D:/DS/Project/gettingdata/EDSTATS_Country.csv",header=T)

mergedata <- merge(x,y,by.x="X",by.y="CountryCode",all=TRUE)

mergedf <- data.frame(mergedata)
h <- mergedf$X==""
r <- mergedf[!h,]
dfmerge <- dfmerge[!h,]

r[,2] <- as.numeric(mergedf[,2])

r <- r[order(r[,2],decreasing=TRUE,na.last = NA),]
r[13,]
#190 matches, 13th country is St. Kitts and Nevis