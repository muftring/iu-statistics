library(readr)
gpa <- read_csv("V506/Datasets/Wooldridge GPA2 Data Set.csv")
View(gpa)

t.test(gpa$colgpa[gpa$athlete==0],gpa$colgpa[gpa$athlete==1])
t.test(gpa$colgpa~gpa$athlete)

t.test(gpa$colgpa[gpa$athlete==0],gpa$colgpa[gpa$athlete==1],
       var.equal=T)
sd(gpa$colgpa[gpa$athlete==0],na.rm=T)
sd(gpa$colgpa[gpa$athlete==1],na.rm=T)

t.test(gpa$colgpa[gpa$athlete==0],gpa$colgpa[gpa$athlete==1],
       conf.level=0.99)

t.test(gpa$colgpa[gpa$athlete==0],gpa$colgpa[gpa$athlete==1],
       alternative="greater")
t.test(gpa$colgpa[gpa$athlete==0],gpa$colgpa[gpa$athlete==1],
       alternative="less")
