library(readr)
gpa <- read_csv("V506/Datasets/Wooldridge GPA2 Data Set.csv")
View(gpa)

##Manually Constructing Confidence Intervals for Mean of 'colgpa'
point_est<-mean(gpa$colgpa,na.rm=T)
sd_est<-sd(gpa$colgpa,na.rm=T)
numobs<-length(gpa$colgpa)
se<-sd_est/sqrt(numobs)
critz<-qnorm(1-0.05/2)###1 minus alpha divided by 2 (this example is for 0.05 significance level)
margin_error<-critz*se
up_bound<-point_est+margin_error
low_bound<-point_est-margin_error
conf_interval<-cbind(up_bound,low_bound)
conf_interval

###install.packages("Rmisc")
library(Rmisc)
CI(gpa$colgpa, ci=.95)

##Manually Calculating Using critical value of T rather than Z
critt<-qt(1-.05/2,df=numobs-1)
margin_error2<-critt*se
up_bound2<-point_est+margin_error2
low_bound2<-point_est-margin_error2
conf_interval2<-cbind(up_bound2,low_bound2)
conf_interval2
CI(gpa$colgpa, ci=.95)

##Single Sample T-Tests
t.test(gpa$colgpa, mu=2.7)
t.test(gpa$colgpa, mu=2.7, alternative = "greater")
t.test(gpa$colgpa, mu=2.7, alternative = "less")
t.test(gpa$colgpa, mu=2.7,conf.level=.99)

###T-Tests of Sub-samples
overall_mean<-mean(gpa$colgpa)
t.test(gpa$colgpa[gpa$athlete==1],mu=overall_mean)
t.test(gpa$colgpa[gpa$athlete==1],mu=overall_mean,alternative="greater")
