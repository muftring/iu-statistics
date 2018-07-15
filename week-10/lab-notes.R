#
# Estimation and Interpretation
#

library(car)
View(Duncan)

# build a multiple regression:
# estiamte a model where prestige is a function of type, education, and income
mod1 <- lm(prestige~type+education+income, data=Duncan)
summary(mod1)

# Notes:
# (Intercept) - is always the predicted value of the dependent variable when all 
#               explanatory variables are zero (the alpha constant)
#               in many cases this is not a real or plausible value (and that's ok)
#
# Estimate:

# dummy variables have a value of 0 or 1
# in the summary output:
# the predicted difference in the dependent variable when prof = 1 vs. when prof = 0
# the difference between prof and the omitted category (bc)
# always comparing to the referent category

# standard error gives us some sense of the variation
# how much variation do we see?

# t-value = estimate / standard error

# P-value (probability > |t|)

# What is the hypothesis test that we are executing?
# When we are looking at an independent variable?
# We are executing the hypothesis test that the actual relationship or the actual coefficient 
# and the population is zero (that there is no difference between prof and bc)
# What is the likelihood that we would observe a difference this extreme or more if there was 
# actually no difference in the population?

# P-value is lower than 0.05 significance? yes or no, it is statistically significant at P is 
# lees than 0.05 ... statistically significant with a 95% confidence interval.

# Looking at the Estimate column.. for every one unit of the explanatory variable, we see a 
# coefficient amount increase in the dependent variable units

# Keep in mind:
# (1) if interpreting a dummy variable, we are comparing to the referent category
# (2) if interpreting a quantitative variable, important to keep in mind the units

# R-squared: 
# Adjusted R-squared: essentially corrects for the fact that mathematical properties of OLS
# adding more independent variables it will explain more variation, but not necessarily due 
# to any improvemnt on dependent or independent variable, but simply just by fact of reducing 
# the degrees of freedom.

# for multiple regression models we focus on the Adjusted R-squared, and we interpret it the same

# Considering R-squared:
# our model predicts or explains approximately (R-squared)% of the variation in the dependent 
# variable

# F-Statistic
# the basis is: to what extent does this model improve our prediction of the dependent variable
# compare to if we did not have any independent variables and we just looked at the mean of the 
# dependent variable

# the coefficients are testing the statistical significance of the individual variables
# the F-statistic is testing if the model as a whole improves the prediction

# it is possible to have a statistically significant F-statistic without having any statistically
# significant coefficients (independent variables)

#
# Creating and Interpreting Dummy Variables
#

# with categorical variables (dummy variables) we are always comparing relative to the 
# omitted category

# we can also interpret the (Intercept) as the this is the predicted value of the omitted category
# when all other variables are zero

# to change the dummy reference category (baseline category):
# to compare everything to white-collar ("wc")
Duncan$type <- relevel(Duncan$type, ref="wc")
mod2 <- lm(prestige~type+education+income, data=Duncan)
summary(mod2)

# the selection of reference category is arbitrary

# creating dummy variables
Duncan$whitecollar <- as.numeric(Duncan$type=="wc")
Duncan$bluecollar <- as.numeric(Duncan$type=="bc")
Duncan$professional <- as.numeric(Duncan$type=="prof")

dummytrap <- lm(prestige~whitecollar+bluecollar+professional+education+income, data=Duncan)
summary(dummytrap)

# note that R has omitted one of the dummy variable categories, 
# it is the one with "NA" values in the summary

#
# F-tests
#

mod2 <- lm(prestige~type+education+income, data=Duncan)
summary(mod2)

# F-statistic:   105 on 4 and 40 DF,  p-value: < 2.2e-16

# recall, the F-statistic tells us to what extent does this model improve our explanatory power 
# of the dependent variable beyond what we would get from the just mean of the dependent variable;
# to what extent does this model improve our prediction by a meaningful amount
# remember that t-test is test of an individual variable, and F-test is test of the entire model

# Nested F-test: is this simple model (where we have removed some variables) better than the more
# complicated model where we added all those variables

mod3 <- lm(prestige~education+income, data=Duncan)
summary(mod3)
anova(mod3, mod2)

# the null hypothesis of the Nested F-test is that the simple model is better

# if the P-value is above the critical level (alpha), say wokring with 0.05 level of significance
# if the P-value is above 0.05 then we will fail to reject the null hypothesis, and conclude that
# the simple model is better than the complicated model
# if the P-value is less than 0.05, then we have evidence to reject the null hypothesis and conclude
# that the more complicated model is better

# think: will adding this set of variables to the model improve the model's explanatory power?

#
# Interaction Terms
#

# essentially terms we would include if we think the impact of one independent variable depends 
# on value of another independent variable

# most common: involves categorical and a quantitative variable (could be a scale)

# example:
# suppose we think that the effect of income is different for different for white-collar compared to 
# white-collar and professional

mod4 <- lm(prestige~education+type*income, data=Duncan)
summary(mod4)

# the parts of the interaction: base terms (income, not in the interaction), and the interaction 
# terms (type, and income)

# Effect Plots of Interations
# install.packages("jtools")
library(jtools)
interact_plot(mod4, pred="income", modx="type", interval=T)

# model = 
# pred = numerical, cont, disc, quant variable
# modx = the name of the group variable
# interval = T (draws confidence bounds)

# conduct a Netsted F-Test: is adding the interaction terms worthwhile?
anova(mod4, mod2)
