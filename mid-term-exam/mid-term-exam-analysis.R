# Michael Uftring
# Indiana University
# V506 - Statistical Analysis, Summer 2018
# Min-term Exam : analysis of university data
# --------------------------------------------------

library(readr)

compute.stats <- function(n, v) {
  v.mean <- mean(v, na.rm=TRUE)
  v.stddev <- sd(v, na.rm=TRUE)
  v.nbobs <- length(v)
  v.sem <- sd(v, na.rm=TRUE)/sqrt(length(v))
  print(sprintf("%s", n))
  print(sprintf("mean: %.2f stddev: %.2f observations: %d std err of the mean: %.4f", v.mean, v.stddev, v.nbobs, v.sem))
}

university_data <- read_csv("university_data.csv")
#> This data set has four fields:
#> - `instnm` : the name of the institution
#> - `stateabbr` : state (abbreviated)
#> - `intuitfees` : amount charged for in-state tuition and fees
#> - `sector` : whether the institution is a public or private university

# (1) Calculate the following descriptive statistics for the in-state tuition and fees 
# variable for the entire dataset: 
#   a) mean, 
#   b) standard deviation, 
#   c) number of observations, 
#   d) standard error of the mean.
compute.stats("entire dataset (in-state tuition and fees)", university_data$intuitfees)

# (2) Now calculate those same descriptive statistics, but disaggregated by sector 
# (i.e. compute the mean, standard deviation, number of observations, and standard error 
# of the mean separately for public institutions and for private institutions).
univ_public <- subset(university_data, sector=="public")
univ_private <- university_data[which(university_data$sector =="private"),]

compute.stats("public institutions (in-state tuition and fees)", univ_public$intuitfees)
compute.stats("private institutions (in-state tuition and fees)", univ_private$intuitfees)

# (3) Construct histograms for in-state tuition and fees for both public and private 
# universities (i.e. make two histograms, one for each sector). In constructing these 
# histograms, change the color of the bars to be grey, and be sure to label both the 
# X and Y axis. Add a title to each histogram to identify which group of universities 
# it is describing.
hist(univ_public$intuitfees,
     main = "Public Universities: In-state Tuition and Fees",
     col = "lightgray",
     xlab = "Tuition and Fees (USD)",
     ylab = "Number of Universities",
     xlim = c(0, 19999))

hist(univ_private$intuitfees,
     main = "Private Universities: In-state Tuition and Fees",
     col = "lightgray",
     xlab = "Tuition and Fees (USD)",
     ylab = "Number of Universities",
     xlim = c(0,60000))
