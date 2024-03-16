rankhospital("MN", "heart attack", 5000)
rankhospital <- function(state, outcome, num = "best") {
## Return hospital name in that state with the given rank
## 30-day death rate
## Read outcome data
measures <- read.csv("D:/DS/Project/outcome-of-care-measures.csv", colClasses = "character")
#measuresdf <- data.frame(measures)
## Check that state and outcome are valid
statesV <- measures[,7]
statesU <- unique(statesV, incomparables = FALSE)
if(!(state %in% statesU)){
stop("invalid state")
}
outcomeV <- c("heart attack","heart failure","pneumonia")
if(!(outcome %in% outcomeV)){
stop("invalid outcome")
}
## Return hospital name in that state with the given rank
## rate
if(outcome=="heart attack"){
bestH <- measures[,c(2,7,11)]
}else if(outcome=="heart failure"){
bestH <- measures[,c(2,7,17)]
}else {
bestH <- measures[,c(2,7,23)]
}
bestH[,3] <- as.numeric(bestH[,3])
dfH <- data.frame(bestH)
bestH <- subset(dfH,State==state)
bestH <- bestH[order(bestH[,3],decreasing=FALSE,na.last = NA),]
if(num=="best"){
num <- 1
}
else if(num=="worst"){
num <- nrow(bestH)
}
if(num>nrow(bestH)){
return(NA)
}
resultDf <- data.frame(bestH)
colnames(resultDf) <- c('Hospital.Name','State','Outcome')
resultVec <- subset(resultDf,Outcome==bestH[num,3])
resultVec <- sort(resultVec[,1],decreasing=FALSE)
resultVec[1]
}
rankhospital("MD", "heart attack", "worst")
