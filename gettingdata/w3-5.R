mergedf <- data.frame(r)
mergedf$GDPGroups <- cut(mergedf$Gross.domestic.product.2012,breaks=quantile(mergedf$Gross.domestic.product.2012,na.rm = T,probs = c(0.0,0.20,0.40,0.60,0.80,1.0)))
table(mergedf$GDPGroups,mergedf$Income.Group)
#High income: nonOECD High income: OECD Low income
#(1,38.8]                       4                17          0
#(38.8,76.6]                    5                10          1
#(76.6,114]                     8                 1          9
#(114,152]                      4                 1         16
#(152,190]                      2                 0         11

#Lower middle income Upper middle income
#(1,38.8]                      5                  11
#(38.8,76.6]                  13                   9
#(76.6,114]                   12                   8
#(114,152]                     8                   8
#(152,190]                    16                   9
#5