x <- as.Date(c("16/12/2006"),"%d/%m/%Y")
x
y <- as.Date(c("01/02/2007"),"%d/%m/%Y")
y-x
hhpdt <- read.table("D:/Project/household_power_consumption.txt",header=TRUE,na.strings = "?", sep = ";",nrows = 2880,
skip = 66636)
con <- file("D:/Project/household_power_consumption.txt")
colnames <- readLines(con,1)
close(con)
namech <- strsplit(colnames,split=";")
vch <- unlist(namech)
setnames(hhpdt,names(hhpdt),vch)

png(file="D:/Project/myRrepository/explatorydataanalysis/w1/plot1.png",
width=480, height=480)
hist(x = hhpdt$Global_active_power,
main = "Global Active Power",
xlab = "Global Active Power(killowats)",col="red")
dev.off()
