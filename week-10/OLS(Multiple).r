library(car)
View(Duncan)

######EStimating a Multiple Regression Model
mod1<-lm(prestige~type+education+income,data=Duncan)
summary(mod1)

####Dummy Variables
##Changing the Reference Category
Duncan$type<-relevel(Duncan$type,ref="wc")
mod2<-lm(prestige~type+education+income,data=Duncan)
summary(mod2)

##Creating Dummy Variables
Duncan$whitecoll<-as.numeric(Duncan$type=="wc")
Duncan$bluecoll<-as.numeric(Duncan$type=="bc")
Duncan$professional<-as.numeric(Duncan$type=="prof")
View(Duncan)

##The Dummy Trap
dummytrap<-lm(prestige~whitecoll+bluecoll+professional+
                education+income,data=Duncan)
summary(dummytrap)

####Sum of Squares and F-Tests
mod2<-lm(prestige~type+education+income,data=Duncan)
summary(mod2)

##Nested F-Test
#Removing Type and Testing Simple Model vs Complex
mod3<-lm(prestige~education+income,data=Duncan)
summary(mod3)
anova(mod3,mod2)

####Interaction Terms
mod4<-lm(prestige~education+type*income,data=Duncan)
summary(mod4)
#Equivalent Model (Entering Base and Interactions Separately)
mod5<-lm(prestige~type+education+income+type*income,data=Duncan)
summary(mod5)

##Effect Plots of Interactions
#install.packages("jtools")
library(jtools)
interact_plot(mod4,pred="income",modx="type",
              interval=T)

##Nested F-Test of Interaction Versus Base Model
anova(mod4,mod2)
