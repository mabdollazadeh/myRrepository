install.packages(rmarkdown)
install.packages("rmarkdown")
f <- function(x) {
g <- function(y) {
y   z
lm
complete <- function(directory,pollutant,id=1:332){
filenames <- sprintf("%03d",id)
i <- 1
for(elem in filenames){
fpath <- paste(directory,"/",elem,".csv",sep="")
tmp <- read.csv(fpath,header=T)
if(i==1) {
df <- data.frame(tmp)
}
else {
df <- rbind(df,tmp)
}
i <- i+1
}
df <- df[complete.cases(df), ]
nrow(df)
}
complete <- function(directory,id=1:332){
filenames <- sprintf("%03d",id)
i <- 1
for(elem in filenames){
fpath <- paste(directory,"/",elem,".csv",sep="")
tmp <- read.csv(fpath,header=T)
if(i==1) {
df <- data.frame(tmp)
}
else {
df <- rbind(df,tmp)
}
i <- i+1
}
df <- df[complete.cases(df), ]
nrow(df)
}
complete("D:/learn/DataS/w2exercise.r", c(6,10,20,34,100,200,310))
complete("D:/learn/DataS/specdata", c(6,10,20,34,100,200,310))
complete <- function(directory,pollutant,id=1:332){
filenames <- sprintf("%03d",id)
i <- 1
for(elem in filenames){
fpath <- paste(directory,"/",elem,".csv",sep="")
tmp <- read.csv(fpath,header=T)
nr <- nrow(tmp[complete.cases(tmp), ])
if(i==1) {
df <- data.frame(id=elem,nobs=nr)
}
else {
df <- rbind(df,c(elem,nr))
}
i <- i+1
}
df
}
complete("D:/learn/DataS/specdata", c(6,10,20,34,100,200,310))
complete <- function(directory,id=1:332){
filenames <- sprintf("%03d",id)
i <- 1
for(elem in filenames){
fpath <- paste(directory,"/",elem,".csv",sep="")
tmp <- read.csv(fpath,header=T)
nr <- nrow(tmp[complete.cases(tmp), ])
if(i==1) {
df <- data.frame(id=elem,nobs=nr)
}
else {
df <- rbind(df,c(elem,nr))
}
i <- i+1
}
df
}
complete("D:/learn/DataS/specdata", c(6,10,20,34,100,200,310))
savehistory("D:/learn/DataS/complete.R")
complete("D:/learn/DataS/specdata", 54
complete("D:/learn/DataS/specdata", 54)
complete <- function(directory,id=1:332){
filenames <- sprintf("%03d",id)
i <- 1
for(elem in filenames){
fpath <- paste(directory,"/",elem,".csv",sep="")
tmp <- read.csv(fpath,header=T)
nr <- nrow(tmp[complete.cases(tmp), ])
if(i==1) {
df <- data.frame(id=elem,nobs=nr)
}
else {
df <- rbind(df,c(elem,nr))
}
i <- i+1
}
df
}
complete("D:/learn/DataS/specdata", 54)
savehistory("D:/learn/DataS/complete.R")
