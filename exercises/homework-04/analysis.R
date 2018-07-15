# Michael Uftring
# Indiana University
# V506 - Statistical Analysis, Summer 2018
# Homework 4 : analysis of Annual National Election Survey (ANES) data
# --------------------------------------------------

library(readr)

anes <- read_csv("anes_2016.csv.xls")
View(anes)

#
# Recode Missing Values:
#

# get a summary count of how many rows have missing values, for each column
na_count <-sapply(anes, function(y) sum(length(which(is.na(y)))))
na_count <- data.frame(na_count)
na_count

# what to do? how do we want to recode these?
# the general idea is to replace missing values with either a value that indicates the value
# is missing, or unknown; or to recode the value to a "middle of the road" (neutral) answer
# the only case where we remove rows is where the dependent variable is missing

# 0. drop rows where thermometer_clinton, or thermometer_trump is missing
anes <- data.frame(anes[complete.cases(anes[ , 1]),])
anes <- data.frame(anes[complete.cases(anes[ , 2]),])

# 1. recode missing values in better_worse_1year = 3 (the middle of the road answer)
anes$better_worse_1year[is.na(anes$better_worse_1year)] <- 3

# 2. drop rows with missing values in party_id
anes <- data.frame(anes[complete.cases(anes[ , 9]),])

# 3. recode missing values in economy_good_bad = 3 (the middle of the road answer)
anes$economy_good_bad[is.na(anes$economy_good_bad)] <- 3

# 4. recode missing values in affirmative_action = 3 (Neither favor nor oppose)
anes$affirmative_action[is.na(anes$affirmative_action)] <- 3

# 5. recode missing values in syrian_refugees = 4 (neutral)
anes$syrian_refugees[is.na(anes$syrian_refugees)] <- 4

# 6. recode missing values in religious_services = 0 (unknown)
anes$religious_services[is.na(anes$religious_services)] <- 0

# 7. recode missing values in [political] ideology = 0 (missing / unknown)
anes$ideology[is.na(anes$ideology)] <- 0

#
# Estimate Regression Model
#
# (a) estimate a regression model where feeling thermometer scores for the Democratic candidate 
#    (Hilary Clinton) is the dependent variable and the responses to the following questions are 
#    included as independent variables:
#      i)   [better_worse_1year] How much better off is the respondent this year compared to last year?
#      ii)  [party_id] What is the respondent’s partisanship (Democrat, Republican, Independent)
#      iii) [economy_good_bad] Is the current economy good or bad (1=Very Good; 5= Very Bad)
#      iv)  [affirmative_action] Do you favor or oppose affirmative action in universities? 
#             (1=Favor, 2=Oppose, 3=Neither favor no oppose)
#      v)   [syrian_refugees] Should Syrian refugees be allowed to come to the U.S.? 
#             (1=Favor a great deal; 4=Neutral 7=Oppose a Great Deal)
#      vi)  [religious_services] How often do you attend religious services? 
#             (5=Every Week, 4= Almost every week, 3=Once or twice a month, 2 = A Few Times a Year, 1= Never)

# change the dummy reference category (baseline category) for party_id to "Republican"
# anes$party_id <- relevel(anes$party_id, ref="Republican")

model1 <- lm(thermometer_clinton
             ~better_worse_1year
             +party_id
             +economy_good_bad
             +affirmative_action
             +syrian_refugees
             +religious_services, 
             data=anes)
summary(model1)

#
# Interaction Terms
#
# (b) run a new regression where you add an interaction term between how often the respondent 
# attends religious services and their political ideology, and interpret the results

model2 <- lm(thermometer_clinton
             ~better_worse_1year
             +party_id
             +economy_good_bad
             +affirmative_action
             +syrian_refugees
             +religious_services
             +religious_services*ideology, 
             data=anes)
summary(model2)

# (c) How does the effect of religious service attendance differ between Democrats, 
# Republicans, and Independents?
model3a <- lm(thermometer_clinton
              ~religious_services*party_id, 
              data=anes)
summary(model3a)

#
# nested F-Test
#
# (d) Does adding the interaction improve the model fit (conduct a nested F-Test)?
anova(model1, model2)

#
# Effect Plots of Interations
#
# (e) construct an effects plot that shows this interaction effect.
library(jtools)
interact_plot(model2, pred="religious_services", modx="party_id", interval=T)
