library(data.table)
hhpdt <- read.table("D:/Project/household_power_consumption.txt",header=TRUE,na.strings = "?", sep = ";",nrows = 2880,
skip = 66636)
con <- file("D:/Project/household_power_consumption.txt")
colnames <- readLines(con,1)
close(con)
namech <- strsplit(colnames,split=";")
vch <- unlist(namech)
setnames(hhpdt,names(hhpdt),vch)
hhpdt$Date <- as.Date(hhpdt$Date,"%d/%m/%Y")
datetime <- paste(hhpdt$Date,hhpdt$Time)
t <- strptime(datetime,"%Y-%m-%d %T")
hhpdt$datetime <- t
png(file="D:/DS/Project/myRrepository/explatorydataanalysis/w1/plot2.png",
width=480, height=480)
plot(hhpdt$datetime, hhpdt$Global_active_power, type = "l", ylab="Global Active Power(killowats)",ylim=c(min(hhpdt$Global_active_power),max(hhpdt$Global_active_power)),xlab="Date")
dev.off()
