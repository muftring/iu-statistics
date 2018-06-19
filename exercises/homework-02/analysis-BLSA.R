# Michael Uftring
# Indiana University
# V506 - Statistical Analysis, Summer 2018
# Homework Exercise 2 : analysis of BLSA data
# --------------------------------------------------

library(readr)
library(DescTools)
library(car)

# The variables in this data set are, in order, 
# - subject number
# - sex
# - age
# - smoker
# - systolic blood pressure (SBP)
# - diastolic blood pressure (DBP)
# - height
# - weight

BLSA <- read_csv("BLSA.csv")
#View(BLSA)

# (a) Construct a 95% confidence interval for the mean diastolic blood pressure of all males
males <- subset(BLSA, sex=="M")

# A 95% Confidence Interval for a Mean is:
#
# \bar{y} \pm t_{.025}(se) with se = s / \sqrt{n} where df = n−1 for the t-score.
ybar <- mean(males$DBP)
s <- sd(males$DBP)
n <- length(males$sex)
se <- s/sqrt(n)

# df = n - 1, which is 360 - 1 = 359
# lookup in Table B (Agresti) for df = 359, which is "infinity"
t <- 1.960

ci <- t * se

print("The 95% confidence interval for the mean diastolic blood pressure of all males is")
print(sprintf("%.3f +/- %.3f, or (%.3f, %.3f)", ybar, ci, ybar-ci, ybar+ci))

# (b) Construct a 99% confidence interval for the proportion of males that smoke
male_smokers <- subset(males, smoke=="Y")

hatpi <- length(male_smokers$sex) / length(males$sex)
se <- sqrt((hatpi*(1-hatpi))/n)

# lookup in Table A (Agresti) for 99%
z <- 2.58

ci <- z * se

print("The 99% confidence interval for the proportion of males that smoke")
print(sprintf("%.3f +/- %.3f, or (%.3f, %.3f)", hatpi, ci, hatpi-ci, hatpi+ci))

# (c) Construct a 90% confidence interval for the mean systolic blood pressure of all 
#     females who are over 30 years old
females_over_30 <- subset(BLSA, sex=="F" & age>30)

ybar <- mean(females_over_30$SBP)
s <- sd(females_over_30$SBP)
n <- length(females_over_30$sex)
se <- s/sqrt(n)

# df = n - 1, which is 297 - 1 = 296
# lookup in Table B (Agresti) for df = 296, which is "infinity"
t <- 1.645

ci <- t * se

print("The 90% confidence interval for the mean systolic blood pressure of all females who are over 30 years old")
print(sprintf("%.3f +/- %.3f, or (%.3f, %.3f)", ybar, ci, ybar-ci, ybar+ci))

# (d) Test the claim, at the .05 level of significance, that males who are 50 and older have a mean
#     systolic blood pressure that is greater than the mean systolic bloodpressure for all men. 
#     Use the p-value method.

# select the males from the data set
males <- subset(BLSA, sex=="M")

# the mean for all males selected
u0 <- mean(males$SBP)

# select males 50 and older
males_over_50 <- subset(males, age>=50)

# the mean and stddev for males 50 and older
ybar <- mean(males_over_50$SBP)
s <- sd(males_over_50$SBP)
n <- length(males_over_50$sex)

# compute the standard error
se <- s / sqrt(n)

# compute the t-value
t <- (ybar - u0) / se

# find the p-value
p <- 1 - pnorm(t, 0, 1)

# summary of values
cat("u0:   ", u0, "\nybar: ", ybar, "\ns:    ", s, "\nn:    ",n)
cat("se: ", se, "\nt:  ",t)

# reporting the p-value
print(sprintf("The P-value is %f",p))

# (e) Test the claim, at the .01 level, that females who have lower weight than the mean weight 
#     of all females also have a lower mean systolic blood pressure than the average female. 
#     Use the p-value method.

# select females
females <- subset(BLSA, sex=="F")

# find the mean weight of all females
uw <- mean(females$weight)

# and the mean systolic blood pressure for all females
u0 <- mean(females$SBP)

# select females with lower weight than the mean weight of all females
females_lower_weight <- subset(females, weight < uw)

# compute the mean and stddev
ybar <- mean(females_lower_weight$SBP)
s <- sd(females_lower_weight$SBP)
n <- length(females_lower_weight$sex)

# compute the standard error
se <- s / sqrt(n)

# compute the t-value
t <- (ybar - u0) / se

# find the p-value
p <- 1 - pnorm(t, 0, 1)

# summary of values
cat("u0:   ", u0, "\nybar: ", ybar, "\ns:    ", s, "\nn:    ",n)
cat("se: ", se, "\nt:  ",t)

# reporting the p-value
print(sprintf("The P-value is %f",p))

# cleanup
rm(ybar, s, n, se, t, ci, hatpi, z, u0, p, uw)
rm(males, male_smokers, females_over_30, males_over_50, females, females_lower_weight)

