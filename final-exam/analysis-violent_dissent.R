# Michael Uftring
# Indiana University
# V506 - Statistical Analysis, Summer 2018
# Final Exam : analysis of Violent Internal Dissent data
# --------------------------------------------------

library(readr)
library(jtools)

violent_dissent <- read_csv("violent_dissent.csv")
View(violent_dissent)

# The variables in the dataset are as follows:
# `ccode`: Numeric COW country code
# `pop`: population in thousands
# `rgpdpch`: Real GPD per capita
# `democracy`: Behavioral measure of democracy including legislative 
#             competition/participation, competitiveness of executive recruitment 
#             and participation, along with other factors. This is a continuous measure. 
#             Higher numbers indicate greater levels of democracy.
# `vdissdum`: Binary violent dissent variable (dummy variable) based on data regarding 
#             terrorist events and fatalities, as well as guerrilla wars and riots. 
#             0=country is peaceful; 1=country is in state of violent conflict
# `repression`: Violations of physical integrity rights. A continuous measure based on 
#               human rights data regarding torture, forced disappearances, extrajudicial 
#               killings and political imprisonment. Higher numbers indicate greater 
#               levels of repression.

# Estimate an OLS regression model where repression is the dependent variable, and pop, 
# rgdpch, democracy, and vdissdum are the independent variables.

# (a) Interpret the results of the model, both substantively and statistically. Be sure 
# to discuss both the model as a whole (F statistic and adjusted r-squared), as well as 
# the results for each independent variable in the model (coefficient, t-statistic, and 
# p-value).

model1 <- lm(repression~pop+rgdpch+democracy+vdissdum , data=violent_dissent)
summary(model1)

# (b) Some hypothesize that the effect of democracy on repression is conditional and 
# works differently in peaceful countries than in countries in a state of violent conflict. 
# To test this hypothesis, add a multiplicative interaction term to the model for 
# democracy and vdissdum (democracy*vdissdum). Interpret the model results (using the 
# same procedure as part A).

model2 <- lm(repression~pop+rgdpch+democracy*vdissdum , data=violent_dissent)
summary(model2)

# (c) Next, conduct a nested F-test to determine if adding the interaction term for 
# democracy*vdissdum improved the explanatory power of the model.

anova(model1, model2)

# (d) Finally, based on the model estimated in part B, construct an effects plot 
# to show the effect of democracy on repression for peaceful and for violent countries. 
# Be sure to include a legend and appropriately label your axes.

# pred = numerical, cont, disc, quant variable
# modx = the name of the group variable
# interval = T (draws confidence bounds)
png("analysis-2d-effects-plot.png", width=640, height=480)
interact_plot(model2, 
              main.title = "Tthe Effect of Democracy on Repression",
              x.label = "Democracy",
              y.label = "Repression",
              pred="democracy", 
              modx="vdissdum", 
              modx.labels = c("peaceful", "violent\nconflict"),
              interval=T, 
              #legend.main = "Violent Dissent",
              rug=T,
              rug.sides = "bl")
dev.off()
