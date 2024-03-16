rankall <- function( outcome, num = "best") {
## Read outcome data
measures <- read.csv("D:/DS/Project/outcome-of-care-measures.csv", colClasses = "character")
#measuresdf <- data.frame(measures)
## Check that outcome is valid
statesV <- measures[,7]
statesU <- unique(statesV, incomparables = FALSE)
outcomeV <- c("heart attack","heart failure","pneumonia")
if(!(outcome %in% outcomeV)){
stop("invalid outcome")
}
if(outcome=="heart attack"){
bestH <- measures[,c(2,7,11)]
}else if(outcome=="heart failure"){
bestH <- measures[,c(2,7,17)]
}else {
bestH <- measures[,c(2,7,23)]
}
bestH[,3] <- as.numeric(bestH[,3])
dfH <- data.frame(bestH)
## For each state, find the hospital of the given rank
numin <- num
resultindex <- 1
for(state in statesU){
bestH <- subset(dfH,State==state)
bestH <- bestH[order(bestH[,3],decreasing=FALSE,na.last = NA),]
if(num=="best" || is.null(num)){
num <- 1
}
else if(num=="worst"){
num <- nrow(bestH)
}
if(num>nrow(bestH)){
if(resultindex==1){
resultVec <- c(state,NA)
}else{
resultVec <- rbind(resultVec,c(state,NA))
}
}else{
resultDf <- data.frame(bestH)
colnames(resultDf) <- c('Hospital.Name','State','Outcome')
stateVec <- subset(resultDf,Outcome==bestH[num,3])
stateVec <- sort(stateVec[,1],decreasing=FALSE)
if(resultindex==1){
resultVec <- c(state,stateVec[1])
}else{
resultVec <- rbind(resultVec,c(state,stateVec[1]))
}
}
resultindex <- resultindex+1
num <- numin
}
## Return a data frame with the hospital names and the
## (abbreviated) state name
colnames(resultVec) <- c('state','hospital')
resultVec
}