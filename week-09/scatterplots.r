View(mtcars)

plot(mtcars$mpg~mtcars$hp,pch=19,col="blue")
abline(lm(mtcars$mpg~mtcars$hp),col="red",lty=2,lwd=3)

pairs(mtcars)
mtcars2<-with(mtcars,data.frame(hp,mpg,cyl,wt))
pairs(mtcars2)

###install.packages("psych")
library(psych)
pairs.panels(mtcars2,lm=T,ellipses=F)
