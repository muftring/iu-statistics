library(readr)

anes_2016 <- read_csv("~/git/iu-statistics/data-sets/anes_2016.csv")
View(anes_2016)

#
# using the subset() function
#

# select where a column equals a value
anes_republicans <- subset(anes_2016, party_id=="Republican")
summary(anes_republicans)

# select where a column values does not equal something
anes_nonrepublicans <- subset(anes_2016, party_id!="Republican")
summary(anes_nonrepublicans)

# and
anes_moderate <- subset(anes_2016, ideology>=3 & ideology<=5)

# or
anes_poles <- subset(anes_2016, ideology<=3 | ideology>=6)

#
# using bracket notation
#

# look inside this object, and select the observations specified
# first is the rows of interest, second is the columns of interest

# first row, first column
anes_2016[1,1]

# first ten rows, first column
anes_2016[1:10,1]

# first observation, first four variables
anes_2016[1,1:4]

anes_2016[c(1,3,50:55),1:4]

# select the first column
anes_2016[,1]

# select with more specific syntax
# here, select the matching rows
anes_2016[which(anes_2016$party_id=="Republican"),]
