# Michael Uftring
# Indiana University
# V506 - Statistical Analysis, Summer 2018
# Homework Exercise 2 : analysis of SCHOOLS data
# --------------------------------------------------

library(readr)
library(DescTools)
library(car)

compute.stats <- function(n, l, v) {
  v.mean = mean(v, na.rm=T)
  v.median = median(v, na.rm=T)
  v.mode = Mode(v, na.rm=T)[1]
  v.result <- range(v, na.rm=T)
  v.min <-v.result[1]
  v.max <- v.result[2]
  v.range <- v.max - v.min
  v.var = var(v, na.rm=T)
  v.sd = sd(v, na.rm=T)
  print(sprintf("variable: %s mean: %.3f median: %.3f mode = %.3f range: %.3f (%.3f - %.3f) variance: %.3f stddev: %.3f",
                n, v.mean, v.median, v.mode, v.range, v.min, v.max, v.var, v.sd))
  return(list(n, v.mean, v.median, v.mode, v.min, v.max, v.range, v.var, v.sd))
}

SCHOOLS <- read_csv("SCHOOLS.csv")
# View(SCHOOLS)

# create summary table
df = data.frame(Variable=character(), Mean=double(), Median=double(), Mode=double(), Min=double(), Max=double(), Range=double(), Variance=double(), StdDev=double(), stringsAsFactors=FALSE)

# find mean, median, mode, range, variance, and standard deviation for...
df[nrow(df) + 1,] = compute.stats("Students","Number of Students", SCHOOLS$Students)
df[nrow(df) + 1,] = compute.stats("Welfare","Percent of Families Receiving Welfare", SCHOOLS$Welfare)
df[nrow(df) + 1,] = compute.stats("Instruct","Amount Spent per Pupil", SCHOOLS$Instruct)
df[nrow(df) + 1,] = compute.stats("Salary","Average Instructor Salary", SCHOOLS$Salary)

# show the summary table
print(df)

# compute the z-score for each value of Instruct
## find the number of samples
samples <- length(SCHOOLS$Instruct)

## create new column in SCHOOLS to hold Amount sSpent per Pupil Standard Score
SCHOOLS$AmtPerPupil_StdScore <- double(samples)

## function to compute z-score
compute.zscore <- function(yi, ybar, s) {
  z <- (yi - ybar)/s
  return(z)
}

## get the mean and standard deviation from the summary table (data frame)
ybar <- df[df$Variable == "Instruct","Mean"]
s <- df[df$Variable == "Instruct","StdDev"]

## compute the z-scores
z <- double(samples)
for (i in 1:samples) {
  yi = SCHOOLS$Instruct[i]
  z[i] = compute.zscore(yi, ybar, s)
  print(sprintf("Observation: %d Value: %.3f Z-score: %.3f",i , yi, z[i]))
}

## Store the z-scores in the table
SCHOOLS$AmtPerPupil_StdScore <- z

## find the highest and lowest z-score values
a = integer(samples)
for (i in 1:samples) {a[i]=i}
df2 = data.frame(Index=a, School=SCHOOLS$Schools, Value=SCHOOLS$Instruct, Score=SCHOOLS$AmtPerPupil_StdScore)

print("The Maximum z-score:")
df2[which.max(df2$Score),]
print("The Minimum z-score:")
df2[which.min(df2$Score),]

# plot histogram of Salary with normal distribution overlay
hist(SCHOOLS$Salary, prob=T, main="Instructor Salary - Histogram\nPlotted With Normal Distribution", xlab = "Salary", col="lightblue")
curve(dnorm(x, mean(SCHOOLS$Salary, na.rm=T), sd(SCHOOLS$Salary, na.rm=T)), add=T, lwd=3, col="red")
