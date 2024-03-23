table(mergedf$Income.Group,useNA = "ifany")
lr <- r[,12]=="High income: OECD"
res <- r[lr,]
mean(res[,2], na.rm = T)
lr2 <- r[,12]=="High income: nonOECD"
res <- r[lr2,]
mean(res[,2], na.rm = T)
#32.96667, 91.91304
