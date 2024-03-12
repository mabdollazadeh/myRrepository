install.packages(rmarkdown)
install.packages("rmarkdown")
f <- function(x) {
g <- function(y) {
y   z
lm
f <- function(){}
d <- "D:\learn\DataS\specdata\001.csv"
d <- "D:/learn/DataS/specdata/001.csv"
df <- data.frame(d)
df
df <- data.frame(filename=d)
df
x <- read.csv(filename=d)
x <- read.csv(filename=d , header=T)
x <- read.csv(file=d , header=T)
x
nrow(x)
d <- "D:/learn/DataS/specdata/002.csv"
y <- read.csv(file=d , header=T)
nrow(y)
df <- df(x,y)
df <- data.frame(x,y)
z <- rbind(x,y)
nrow(z)
vec <- seq(15)
sprintf("sequence_%03d", vec)
sprintf("%03d", vec)
scvnames <- sprintf("%03d", vec)
csvnames
scvnames
pollutant <- sulfate
pollutant <- "sulfate"
mean(z$pollutant, rm.na=T)
mean(z$sulfate, rm.na=T)
dim(z)
mean(x$sulfate, rm.na=T)
mean(z$sulfate, na.rm =T)
mean(z$pollutant, na.rm=T)
mean(z[pollutant], na.rm=T)
h <- z[pollutant]
dim[h]
dim(h)
mean(h,na.rm=T)
df <- data.frame(z)
mean(df[pollutant],na.rm=T)
h
mean(df[pollutant],na.rm=T)
mean(z$pollutant, na.rm=T)
mean(z$sulfate, na.rm =T)
mean(df[[pollutant]],na.rm=T)
pollutantmean <- function(directory,pollutant,id){
filenames <- sprintf("%03d",id)
for(elem in filenames){
fpath <- paste(directory,"/",elem,".csv",sep="")
print(fpath)
tmp <- read.csv(fpath,header=T)
}
}
pollutantmean <- function(directory,pollutant,id){
filenames <- sprintf("%03d",id)
i <- 1
for(elem in filenames){
fpath <- paste(directory,"/",elem,".csv",sep="")
print(fpath)
tmp <- read.csv(fpath,header=T)
df <-
}
pollutantmean <- function(directory,pollutant,id){
+     filenames <- sprintf("%03d",id)
i <- 1
+     for(elem in filenames){
+         fpath <- paste(directory,"/",elem,".csv",sep="")
+         print(fpath)
+         tmp <- read.csv(fpath,header=T)
+         if(i==1)
df <- data.frame(tmp)
else
df <- rbind(df,tmp)
+     }
pollutantmean <- function(directory,pollutant,id){
+     filenames <- sprintf("%03d",id)
i <- 1
+     for(elem in filenames){
+         fpath <- paste(directory,"/",elem,".csv",sep="")
+         print(fpath)
+         tmp <- read.csv(fpath,header=T)
+         if(i==1)
df <- data.frame(tmp)
else
df <- rbind(df,tmp)
i <- i+1
+     }
pollutantmean <- function(directory,pollutant,id){
+     +     filenames <- sprintf("%03d",id)
+     i <- 1
+     +     for(elem in filenames){
+         +         fpath <- paste(directory,"/",elem,".csv",sep="")
+         +         print(fpath)
+         +         tmp <- read.csv(fpath,header=T)
+         +         if(i==1)
+                     df <- data.frame(tmp)
+                     else
pollutantmean <- function(directory,pollutant,id){
+     +     filenames <- sprintf("%03d",id)
+     i <- 1
+     +     for(elem in filenames){
+         +         fpath <- paste(directory,"/",elem,".csv",sep="")
+         +         print(fpath)
+         +         tmp <- read.csv(fpath,header=T)
+         +         if(i==1){
+                     df <- data.frame(tmp)}
+                     else{
pollutantmean <- function(directory,pollutant,id){
+     +     filenames <- sprintf("%03d",id)
+     i <- 1
+     +     for(elem in filenames){
+         +     fpath <- paste(directory,"/",elem,".csv",sep="")
+         +         print(fpath)
+         +         tmp <- read.csv(fpath,header=T)
+         +         if(i==1) {
+                     df <- data.frame(tmp)}
+                     else {
pollutantmean <- function(directory,pollutant,id){
+     +     filenames <- sprintf("%03d",id)
+     i <- 1
+     +     for(elem in filenames){
+         +     fpath <- paste(directory,"/",elem,".csv",sep="")
+         +         print(fpath)
+         +         tmp <- read.csv(fpath,header=T)
+         +         if(i==1) {
+                     df <- data.frame(tmp)
}
+                     else {
pollutantmean <- function(directory,pollutant,id){
filenames <- sprintf("%03d",id)
i <- 1
for(elem in filenames){
fpath <- paste(directory,"/",elem,".csv",sep="")
print(fpath)
tmp <- read.csv(fpath,header=T)
if(i==1) {
df <- data.frame(tmp)
}
else {
df <- rbind(df,tmp)
}
i <- i+1
}
}
d <- "D:/learn/DataS/specdata"
pollutant <- "sulfate"
id <- c(1,2)
pollutantmean(d,pollutant,id)
pollutantmean <- function(directory,pollutant,id){
filenames <- sprintf("%03d",id)
i <- 1
for(elem in filenames){
fpath <- paste(directory,"/",elem,".csv",sep="")
print(fpath)
tmp <- read.csv(fpath,header=T)
if(i==1) {
df <- data.frame(tmp)
}
else {
df <- rbind(df,tmp)
}
i <- i+1
}
mean(df[[pollutant]],na.rm=T)
}
pollutantmean(d,pollutant,id)
savehistory("D:/learn/DataS/w2exercise.r")
id <- c(1:10)
pollutantmean(d,pollutant,id)
pollutant <- "nitrate"
id <- c(70:72)
pollutantmean(d,pollutant,id)
pollutantmean(d,"sulfate",34)
pollutantmean(d,"nitrate")
pollutantmean <- function(directory,pollutant,id){
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
mean(df[[pollutant]],na.rm=T)
}
pollutantmean <- function(directory,pollutant,id=1:332){
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
mean(df[[pollutant]],na.rm=T)
}
pollutantmean(d,"nitrate")
savehistory("D:/learn/DataS/pollutantmean.R")
