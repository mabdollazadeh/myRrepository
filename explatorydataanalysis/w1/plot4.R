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
hhpdt$datetime <- strptime(datetime,"%Y-%m-%d %T")

png(file="D:/DS/Project/myRrepository/explatorydataanalysis/w1/plot4.png",
width=480, height=480)
par(mfrow=c(2,2))
{plot(hhpdt$datetime, hhpdt$Global_active_power, type = "l", ylab="Global Active Power",xlab="Date")
plot(hhpdt$datetime, hhpdt$Voltage, type = "l", ylab="Voltage",xlab="Date")
plot(hhpdt$datetime, hhpdt$Sub_metering_1, type = "l", ylab="Energy sub metering",xlab="Date",col="green")
lines(hhpdt$datetime, hhpdt$Sub_metering_2, col = "red", type = "l")
lines(hhpdt$datetime, hhpdt$Sub_metering_3, col = "blue", type = "l")
legend("topright" ,pch=20 , col = c("green","red","blue"),legend= c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(hhpdt$datetime, hhpdt$Global_reactive_power, type = "l", ylab="Global_reactive_power",xlab="Date")}
dev.off()
