download.file("https://d396qusza40orc.cloudfront.net/getdata/data/ss06hid.csv","D:/DS/Project/gettingdata/ss06hid.csv")
x <- read.csv("D:/DS/Project/gettingdata/ss06hid.csv", header=T)
splitnames <- strsplit(names(x),"wgtp")
splitnames[123]
#""   "15"