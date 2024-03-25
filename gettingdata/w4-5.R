install.packages("quantmod")
library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn)
indexes <- grep("^2012",sampleTimes)
length(indexes)
sampleTimes <- sampleTimes[indexes]
h <- weekdays(sampleTimes)
l <- h=="Monday"
sum(l)
#[1] 250
#[1] 47