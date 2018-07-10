# Michael Uftring
# Indiana University
# V506 - Statistical Analysis, Summer 2018
# Homework 3 : analysis of Students GPA and SAT scores
# --------------------------------------------------

library(readr)

students <- read_csv("Wooldridge GPA2 Data Set.csv.xls")
#View(students)

# a) Estimate a model where College GPA (colgpa) is the dependent variable, 
# and scores on the SAT test (sat) is the independent variable. At the 0.01 level, 
# can we conclude that students who score better on the SAT generally perform 
# better in college?

cor.test(students$sat, students$colgpa, conf.level = 0.99)
