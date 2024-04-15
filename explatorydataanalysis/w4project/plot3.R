library(ggplot2)
library(dplyr)
newh <- h %>%
group_by(year,type) %>%
summarise(Emissions=sum(Emissions))
png(file="D:/DS/Project/exdata/plot3.png",
width=480, height=480)
ggplot(data = newh, mapping = aes(x=year, y=Emissions))+geom_point()+facet_grid(~type)
dev.off()
