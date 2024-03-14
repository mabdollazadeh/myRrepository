corr <- function(directory,threshold=0){
j <- 1;
for(i in 1:332){
fpath <- paste(directory,"/",sprintf("%03d",i),".csv",sep="")
tmp <- read.csv(fpath,header=T)
cc <- tmp[complete.cases(tmp), ]
nr <- nrow(cc)
if(nr>threshold & j==1){
dfp <- data.frame(cc)
cr <- cor(dfp[,2],dfp[,3])
j <- j+1
}else if(nr>threshold & j>1){
dfp <- data.frame(cc)
cr <- c(cr,cor(dfp[,2],dfp[,3]))
}
}
cr
}
