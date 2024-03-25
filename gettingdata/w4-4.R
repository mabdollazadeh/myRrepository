download.file("https://d396qusza40orc.cloudfront.net/getdata/data/EDSTATS_Country.csv","D:/DS/Project/gettingdata/EDSTATS_Country.csv")
x1 <- read.csv("D:/DS/Project/gettingdata/EDSTATS_Country.csv", header=T)
mergedata <- merge(x,x1,by.x="X",by.y="CountryCode",all=TRUE)
mergedf <- data.frame(mergedata)
h <- mergedf$X==""
mergedf <- mergedf[!h,]
h <- mergedf[,19]!=""
res <- mergedf[h,]
indexes <- grep("^Fiscal year end: June",res)
length(indexes)
#[1] 13