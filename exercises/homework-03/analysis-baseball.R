# Michael Uftring
# Indiana University
# V506 - Statistical Analysis, Summer 2018
# Homework 3 : analysis of Baseball data
# --------------------------------------------------

library(readr)

baseball <- read_csv("2009Baseball.csv.xls")
#View(baseball)

# (a) Let attendance be the dependent variable and total team salary be the 
# independent variable (note, both variables are measured in millions). 
# Construct a scatterplot of the two variables. From the diagram, does there 
# seem to be a direct relationship between the two variables?

plot(baseball$Attendance~baseball$Salary, 
     pch=19, 
     col="blue", 
     main = "Major League Baseball Teams \n Salary vs. Attendance",
     xlab = "Salary (millions)", 
     ylab = "Attendance (millions)")
abline(lm(baseball$Attendance~baseball$Salary),col="red",lty=2,lwd=3)

# (b) Estimate a linear regression model for these variables, and interpret 
# all of your results.

yhat <- function(a, b, x) {
  return (a+(b*x))
}

cor.test(baseball$Salary, baseball$Attendance)

lm(Attendance~Salary, data=baseball)
model <- lm(Attendance~Salary, data=baseball)

summary(model)

a <- model$coefficients['(Intercept)']
b <- model$coefficients['Salary']

# (c) What is the expected attendance for a team with a salary of $80 million?

yhat(a, b, 80)

# (d) If the owners pay an additional $30 million, how many more people could 
# they expect to attend?

yhat(0, b, 30)
