View(mtcars)

##Estimating a Bivariate OLS Model
lm(mpg~hp,data=mtcars)

mod1<-lm(mpg~hp,data=mtcars)
summary(mod1)

#Sum of Squares Information
anova(mod1)

#Diagnostic Plots
plot(mod1)

##Residuals and Fitted Values
names(mod1)
mod1resids<-mod1$residuals
mod1predicted<-mod1$fitted.values
