filexml <- "https://d396qusza40orc.cloudfront.net/getdata/data/restaurants.xml"
install.packages("XML")
library(XML)
install.packages("RCurl")
library(RCurl)
xData <- getURL(filexml)
doc <- xmlParse(xData)
zc <- xpathSApply(doc, path = '//row/zipcode', xmlValue)
length(zc)
hh <- zc==21231
sum(hh)
