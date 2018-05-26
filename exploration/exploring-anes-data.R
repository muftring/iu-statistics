library(readr)
anes <- read_csv("git/iu-statistics/data-sets/anes_2016.csv")
View(anes)

# generate a histogram of one variable
hist(anes$thermometer_clinton)

# add a more meaningful title
hist(anes$thermometer_clinton, 
     main="Histogram of Clinton Thermometer Scores")

# and the axes..
hist(anes$thermometer_clinton, 
     main="Histogram of Clinton Thermometer Scores",
     xlab="Thermometer Score")

# change the bar color
hist(anes$thermometer_clinton, 
     main="Histogram of Clinton Thermometer Scores",
     xlab="Thermometer Score",
     col="lightblue")

# set the limits of the range of the axes (defaults are usually )
hist(anes$thermometer_clinton, 
     main="Histogram of Clinton Thermometer Scores",
     xlab="Thermometer Score",
     col="lightblue",
     xlim=c(0,100),
     ylim=c(0,1200))

# bar plot
A <- table(anes$party_id)
barplot(A)

# change color of bars
barplot(A, 
        main="Number of respondents in Each Party",
        col="orange",
        ylab="Frequency")

# Let's look at Ideology
B <- table(anes$ideology)

barplot(B)

# add labels for numeric values
barplot(B,
        names.arg=c("very liberal", 
                    "liberal", 
                    "leaning liberal", 
                    "moderate", 
                    "leaning conservative", 
                    "conservative", 
                    "very conservative"),
        col="green",
        main="Political Ideology of Respondents",
        ylab="Frequency")


# Scatter plot(x, y)
plot(anes$ideology, anes$thermometer_clinton)

# Scatter plot(x, y)
plot(anes$ideology, 
     anes$thermometer_clinton,
     main="Clinton Thermometer Response By Political Ideology",
     xlab="Political Ideology",
     ylab="Thermometer Score",
     col = rgb(red = 1, green = 0, blue = 0, alpha = 0.2))

# Recoding some values
# get a first look overall
summary(anes)

# look closer at syrian_refugees
table(anes$syrian_refugees)

mean(anes$syrian_refugees, na.rm=T)

# recode the -9 and -8 values
library(car)

# make a copy of the vector of interest
anes$syrian_refugees_1 <- recode(anes$syrian_refugees,
                                 "c(-9, -8)=NA")
table(anes$syrian_refugees_1)
mean(anes$syrian_refugees_1, na.rm=T)

# another approach (slightly more complicated)
# copy
anes$syrian_refugees_2 <- anes$syrian_refugees

# command to change
anes$syrian_refugees_2[anes$syrian_refugees==-9 | anes$syrian_refugees==-8] <- NA
