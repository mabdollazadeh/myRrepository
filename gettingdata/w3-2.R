install.packages("jpeg")
library(jpeg)
file <- download.file("https://d396qusza40orc.cloudfront.net/getdata/jeff.jpg","D:/DS/Project/gettingdata/jeff.jpg",mode = 'wb')
x <- readJPEG("D:/DS/Project/gettingdata/jeff.jpg", native = TRUE)
quantile(x,na.rm = T,probs = c(0.30,0.80))
# 30%       80% 
#  -15259150 -10575416 