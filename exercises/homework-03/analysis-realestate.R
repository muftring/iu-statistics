# Michael Uftring
# Indiana University
# V506 - Statistical Analysis, Summer 2018
# Homework 3 : analysis of Real Estate data
# --------------------------------------------------

library(readr)

properties <- read_csv("REAL-ESTATE-2003.csv.xls")
#View(properties)

yhat <- function(a, b, x) {
  return (a+(b*x))
}

# (a) Let selling price be the dependent variable and size of the home the 
# independent variable. Determine the regression equation. Estimate the 
# selling price for a home with an area of 2,200 square feet.

lm(Price~Size, data=properties)

model <- lm(Price~Size, data=properties)
summary(model)

a <- model$coefficients['(Intercept)']
b <- model$coefficients['Size']

yhat(a, b, 2200)


# (b) Let selling price be the dependent variable and distance from the 
# center of the city the independent variable. Determine the regression 
# equation. Estimate the selling price of a home 20 miles from the center 
# of the city.

lm(Price~Distance, data=properties)

model <- lm(Price~Distance, data=properties)
summary(model)

a <- model$coefficients['(Intercept)']
b <- model$coefficients['Distance']

yhat(a, b, 20)
