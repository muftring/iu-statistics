Michael Uftring
Indiana University
V506 - Statistical Analysis, Summer 2018
Homework Exercise 4

-----

# Part I: Multiple Regression (Textbook Problems)

## 11.2 (parts a, b, c, and d)
For recent data in Jacksonville, Florida
- $y$ = selling price of home (in dollars)
- $x_{1}$ = size of home (in square feet)
- $x_{2}$ = lot size (in square feet)

the prediction equation is:

$$\hat{y} = -10,536 + 53.8x_{1} + 2.84x_{2}$$

**(a)** *A particular home of 1240 square feet on a lot of 18,000 square feet sold for \$145,000. Find the predicted selling price and the residual, and interpret.*

The predicted selling price is:
$\hat{y} = -10,536 + 53.8(1240) + 2.84(18,000)$
$= 107296$

The residual is the observed value minus the predicted value:
$y - \hat{y}$
$= 145000 - 107296$
$= 37704$

The observed selling price is significantly higher than the predicted selling price. This could be for any of a number of reasons. The house may have above average amenities (appliances, fixtures, etc.). The higher sale price may also be due to location: being within a highly rated school district, or being in an otherwise very desirable neighborhood. Either of these location reasons would certainly be noted as justification for sale prices consistently higher than what the equation would predict. For greater accuracy in such cases, the house sale price prediction equation would likely benefit from having additional explanatory variables.

**(b)** *For fixed lot size, how much is the house selling price predicted to increase for each square-foot increase in home size? Why?*

With a fixed lot size, the house selling price is predicted to increase by \$53.8 for each square-foot increase in home size.

We can determine this by evaluating the prediction equation for a sample of home size values ($x_{1}$) while keeping the lot size ($x_{2}$) at a fixed value. We can plot this to observe the slope of the line. We can also determine the difference between two consecutive values of home size, which will represent the predicted increase in sale price per single unit of home size.

$\hat{y} = -10,536 + 53.8(1000) + 2.48(10,000) = 71664.00$
$\hat{y} = -10,536 + 53.8(1001) + 2.48(10,000) = 71717.80$
$71717.80 - 71664.00 = 53.80$

The value 53.8 also corresponds to the $\beta_{1}$ coefficient associated with the explanatory variable term $x_{1}$.

**(c)** *According to this prediction equation, for fixed home size, how much would lot size need to increase to have the same impact as a one square-foot increase in home size?*

With a fixed lot size, the predicted sale price increases by 53.8 for every square foot increase in home size.

With a fixed home size, the predicted sale price increases by 2.84 for every square foot increase in lot size.

To determine how much lot size would need to increase, for fixed home size, to have the same impact as a one square-foot increase in home size, we simply divide the coefficients:

$comparable \: cost \: impact =\frac{\beta_{1}}{\beta_{2}}$
$= \frac{53.8}{2.84}$
$=18.9$

Rounding up a little, lot size would need to increase by approximately 19 square feet to have the same impact as home size increasing by one square-foot.

We can validate this by calculating a few predicted cost estimates, the fist is the baseline:
$\hat{y} = -10,536 + 53.8(1000) + 2.48(10,000) = 71664.00$
increase home size by one square-foot:
$\hat{y} = -10,536 + 53.8(1001) + 2.48(10,000) = 71717.80$
and then increase lot size by 19
$\hat{y} = -10,536 + 53.8(1001) + 2.48(10,019) = 71771.76$

We are off by \$0.04, which is very close.

**(d)** *Suppose house selling prices are changed from dollars to thousands of dollars. Explain why the prediction equation changes to $\hat{y} = -10.536 + 0.0538x_{1} + 0.00284x_{2}$*

The explanatory variables for home size ($x_{1}$) and lot size ($x_{2}$) have been calibrated for the selling price of home ($y$) in dollars. If we change the units of $y$ to be in thousands of dollars, we need a corresponding change to all other terms in the equation. The contribution of the explanatory variables is 1/1000th of a single unit of $y$ in the original equation. In order for the prediction equation to remain correct, but predict house selling price in thousands of dollars, we must divide the coefficients of each explanatory term by 1000.

## 11.17 (parts a, c, and d)
For a random sample of 66 state precincts, data are available on:
- $y$ = percentage of adult residents who are registered to vote
- $x_{1}$ = percentage of adult residents owning a home
- $x_{2}$ = percentage of adult residents who are non-white
- $x_{3}$ = median family income (thousands of dollars)
- $x_{4}$ = median age of residents
- $x_{5}$ = percentage of residents who have lived in the precinct at least 10 years

**(a)** *Fill in the missing values in the printout*

|            | Sum of<br>Squares | DF     | Mean<br>Square | F     | Sig   |
| ---------- | ----------------: | -----: | -------------: | ----: | ----: |
| Regression |  813.3            | 5      | 162.66         | 3.320 | 0.01  |
| Residual   | 2940.0            | 60     |  49.00         |       |   |
| Total      | 3753.3            | 65     |                |       |   |

| R-square |
| -------: |
|   0.2167 |

| Root MSE |
| -------: |
| 7.0000   |

| Variable   | Parameter<br>Estimate | Standard<br>Error | t      | Sig    |
| ---------- | --------------------: | ----------------: | -----: | -----: |
| Intercept  | 70.0000               |                   |        |        |
| $x_{1}$    |  0.1000               | 0.0450            | 2.2222 | 0.030  |
| $x_{2}$    | -0.1500               | 0.0750            |-2.0000 | 0.050  |
| $x_{3}$    |  0.1000               | 0.2000            | 0.5000 | 0.620  |
| $x_{4}$    | -0.0400               | 0.0500            |-0.8000 | 0.427  |
| $x_{5}$    |  0.1200               | 0.0500            | 2.4000 | 0.020  |

**(c)** *To what test does the "F" refer? Interpret the result of that test.*

The "F" refers to the F-test, which is a test for the collective influence of explanatory variables. The idea is to test whether any of the explanatory variables have an effect on the dependent variable. The null hypothesis suggests that none of the explanatory variables have an effect. The alternative hypothesis suggests that at least one explanatory variables has an effect.

$H_{0}: all \: \beta_{i} = 0$
$H_{a}: at \: least \: one \: \beta_{i} \ne 0$

Values of the F-statistic greater than 1 provide increasingly greater amounts of evidence against the null hypothesis.

In this case the F-statistic is 3.320, which indicates that at least one explanatory variable has an effect on the dependent variable.

**(d)** *To what test does the t-value opposite $x_{1}$ refer? Interpret the result of that test.*

This represents the t-test on explanatory variable $x_{1}$, which is testing for partial effect of $x_{1}$ on the dependent variable $y$. The null hypothesis suggests that $x_{1}$ has no effect, and the alternative hypothesis suggests that $x_{1}$ has an effect.

$H_{0}: \beta_{1} = 0$
$H_{a}: \beta_{1} \ne 0$

With a P-value of 0.03 we can conclude with 95% confidence (P-cutoff = 0.05) that explanatory variable $x_{1}$ has an effect on the dependent variable $y$ controlling for all other explanatory variables.

# Part II: Multiple Regression in R

The Annual National Election Survey is a political opinion poll that is conducted every 4 years during US Presidential elections to understand American public opinion on candidates and political issues. Some of the commonly used measures from this survey are feeling thermometer scores regarding Presidential candidates. These variables ask respondents to indicate how they feel about a candidate, ranging from 0 (very cold, or unfavorable feeling) to 100 (very warm, favorable feeling).

Using the 2016 dataset (anes_2016.csv) on the canvas website, estimate a regression model where feeling thermometer scores for the Democratic candidate (Hilary Clinton) is the dependent variable and the responses to the following questions are included as independent variables.

> **Note, be sure to check for any values that need to be recoded as missing.**
>
> Briefly interpret all relevant parameter estimates and statistics.

### Respondent Question Analysis

##### i) How much better off is the respondent this year compared to last year?

##### ii) What is the respondent’s partisanship (Democrat, Republican, Independent”

##### iii) Is the current economy good or bad (1=Very Good; 5= Very Bad)

##### iv) Do you favor or oppose affirmative action in universities? (1=Favor, 2=Oppose, 3=Neither favor no oppose)

##### v) Should Syrian refugees be allowed to come to the U.S.? (1=Favor a great deal; 4=Neutral 7=Oppose a Great Deal)

##### vi) How often do you attend religious services? (5=Every Week, 4= Almost every week, 3=Once or twice a month, 2) A Few Times a Year, 1= Never)

### Further Analysis

##### Next, run a new regression where you add an interaction term between how often the respondent attends religious services and their political ideology, and interpret the results.

##### How does the effect of religious service attendance differ between Democrats, Republicans, and Independents?

##### Does adding the interaction improve the model fit (conduct a nested F-Test)?

##### Finally, construct an effects plot that shows this interaction effect.
