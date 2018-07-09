library(car)
View(Davis)
help(Davis)

t.test(Davis$repwt,Davis$weight,paired=T)
t.test(Davis$repwt,Davis$weight,paired=T,conf.level=0.99)
t.test(Davis$repwt,Davis$weight,paired=T,alternative="greater")
t.test(Davis$repwt,Davis$weight,paired=T,alternative="less")
