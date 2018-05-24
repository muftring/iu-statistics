# to run this, do one of the following:
# 1. highlight, and click: Run
# 2. press: Control-Enter
a <- 3+3
b <- 4+4

# list the built-in data sets available in R
data()

# view a data set
View(mtcars)

# import a CSV file
library(readr)
gpa <- read_csv("~/git/iu-statistics/data-sets/Wooldridge GPA2 Data Set.csv")

# import an Excel workbook
library(readxl)
gpa_excel <- read_excel("git/iu-statistics/data-sets/Wooldridge GPA2 Data Set.xlsx")
