View(mtcars)

##Bivariate Correlations
cor(mtcars$mpg,mtcars$hp,use="complete.obs")
cor.test(mtcars$mpg,mtcars$hp,use="complete.obs")

##Bivariate correlation is about covariation
mtcars$mpg2<-mtcars$mpg*5
cor.test(mtcars$mpg2,mtcars$hp,use="complete.obs")

###Correlation Matrices
cor(mtcars,use="complete.obs")
round(cor(mtcars,use="complete.obs"),2)

mtcars2<-with(mtcars,data.frame(hp,wt,mpg,am,gear))
cor(mtcars2)

###install.packages("Hmisc")
library(Hmisc)
rcorr(as.matrix(mtcars))

###install.packages("corrplot")
library(corrplot)
mtcars_cor<-round(cor(mtcars,use="complete.obs"),2)
corrplot(mtcars_cor, method="number")
