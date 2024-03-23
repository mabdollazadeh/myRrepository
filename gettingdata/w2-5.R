path<-"https://d396qusza40orc.cloudfront.net/getdata/wksst8110.for"
df=read.fwf(file=url(path), skip=4,widths=c(10,9,4,9,4,9,4,9,4)
)
dim(df)
sum(df[,9])
df[1:6,1]
