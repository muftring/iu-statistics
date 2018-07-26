# Michael Uftring
# Indiana University
# V506 - Statistical Analysis, Summer 2018
# Final Exam : analysis of State Life Expectancy data
# --------------------------------------------------

library(readr)
library(DescTools)
library(car)

statelife_exp <- read_csv("statelife_exp.csv")
View(statelife_exp)

compute.stats <- function(n, v) {
  v.mean = mean(v, na.rm=T)
  v.median = median(v, na.rm=T)
  v.mode = Mode(v, na.rm=T)[1]
  v.result <- range(v, na.rm=T)
  v.min <-v.result[1]
  v.max <- v.result[2]
  v.range <- v.max - v.min
  v.var = var(v, na.rm=T)
  v.sd = sd(v, na.rm=T)
  v.sem <- sd(v, na.rm=TRUE)/sqrt(length(v))
  #print(sprintf("variable: %s mean: %.3f median: %.3f mode = %.3f range: %.3f (%.3f - %.3f) variance: %.3f stddev: %.3f stderr: %.3f",
  #             n, v.mean, v.median, v.mode, v.range, v.min, v.max, v.var, v.sd, v.sem))
  print(sprintf("%s,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f",
                n, v.mean, v.median, v.mode, v.range, v.min, v.max, v.var, v.sd, v.sem))
  
  return(c(v.mean, v.median, v.mode, v.range, v.min, v.max, v.var, v.sd, v.sem))
}

# This dataset contains the following variables:
# `State`: name of state
# `Population`: population estimate as of July 1, 1975
# `Income`: per capita income (1974)
# `Illiteracy`: illiteracy (1970, percent of population)
# `Life Exp`: life expectancy in years (1969–71)
# `Murder`: murder and non-negligent manslaughter rate per 100,000 population (1976)
# `HS Grad`: percent high-school graduates (1970)
# `Frost`: mean number of days with minimum temperature below freezing (1931–1960) in capital or large city
# `Area`: land area in square miles

# Estimate an OLS model where life expectancy is the dependent variable, 
# and the following are independent variables: murder rate, population, 
# percent high-school graduates.

# (a) Construct a table containing summary descriptive statistics for all of the variables 
# in the model (both IVs and DV), and construct histograms for each variable.
df <- data.frame(matrix(ncol = 9, nrow = 4))
df <- c("Mean","Median","Mode","Range","Min","Max","Variance","StandardDeviation","StandardError")

df <- rbind(df,compute.stats("Life.Exp", statelife_exp$Life.Exp))
df <- rbind(df,compute.stats("Murder", statelife_exp$Murder))
df <- rbind(df,compute.stats("Population", statelife_exp$Population))
df <- rbind(df,compute.stats("HS.Grad", statelife_exp$HS.Grad))
row.names(df) <- c("Variable","Life.Exp","Murder","Population","HS.Grad")
print(df)

plot.histogram <- function(data, title, color, xlabel, filename) {
  png(filename, width = 640, height = 480)
  hist(data, main = title, col = color, xlab = xlabel)
  dev.off()
}

plot.histogram(statelife_exp$Life.Exp,"Life Expectancy", "lightgreen", "Life Expectancy (in years)", "analysis-1a-lifeexp.png")
plot.histogram(statelife_exp$Murder, "Murder Rate", "pink", "Murder and Non-negligent Manslaughter Rate\n(per 100,000 population)", "analysis-1a-murderp.png")
plot.histogram(statelife_exp$Population, "Population", "lightblue", "Population Estimate (1000s of people)", "analysis-1a-population.png")
plot.histogram(statelife_exp$HS.Grad, "High-school Graduates", "lavender",  "High-school Graduates (percent)", "analysis-1a-hsgrad.png")

# (b) Interpret the results of the model, both substantively and statistically. 
# Be sure to discuss both the model as a whole as well (F statistic and adjusted r-squared), 
# as well as the results for each independent variable in the model (coefficient, t-statistic, 
# and p-value).

model1 <- lm(Life.Exp~Murder+Population+HS.Grad, data=statelife_exp)
summary(model1)
