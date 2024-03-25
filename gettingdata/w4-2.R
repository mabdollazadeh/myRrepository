download.file("https://d396qusza40orc.cloudfront.net/getdata/data/GDP.csv","D:/DS/Project/gettingdata/GDP.csv")
x <- read.csv("D:/DS/Project/gettingdata/GDP.csv", header=T)
y <- sub(",","",x[,5],)
y <- sub(",","",y,)
y <- as.numeric(y)
mean(y,na.rm=T)
#1453710
#!!??