best <- function(state, outcome) {
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
## Return hospital name in that state with lowest 30-day death
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
index <- 1
while(bestH[index,3]==bestH[index+1,3]){
index <- index+1
}
for(ii in index){
if(ii==1){
resultVec <- bestH[ii,1]
}else {
resultVec <- c(resultVes,bestH[ii,1])
}
}
resultVec <- sort(resultVec,decreasing=FALSE)
resultVec[1]
}
best("TX", "heart failure")
best("TX", "heart attack")
