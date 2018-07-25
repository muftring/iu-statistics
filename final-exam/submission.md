Michael Uftring
Indiana University
V506 - Statistical Analysis, Summer 2018
Final Exam

-----

![](final-exam-agreement.png)

# Part I: Short Answer Questions
> Answer each of the questions below as completely as possible, showing work wherever appropriate, i.e. whenever computing values).

**1.** *In OLS regression, what does the method of least squares refer to?*

least squares refers to the smallest sum of residuals

**2.** *What does the F statistic in an OLS model (just one model) indicate? What is the null hypothesis regarding this statistic?*

The F-statistic is an effectiveness measure for the overall model. It indicates the extent to which this model improves our prediction of the dependent variable compared to not having any independent variables and using the mean of the dependent variable for prediction.

The null hypothesis in the case of the F-statistic is that none of the explanatory variables have a statistically significant effect on the response variable. This is expressed as all $\beta$ coefficients are equal to zero.

$H_{0}: \beta_{1} = \beta_{2} = ... = \beta_{k} = 0$

**3.** *What does the Pearson correlation coefficient tell us about the relationship between two variables? Suppose that this coefficient for two variables is 0.8. What would that indicate about the relationship between the two variables? What if the coefficient was -0.8. What if it was 0.1?*

The correlation coefficient measures the strength of the relationship between two variables. The larger the absolute value of the correlation coefficient, the stronger the relationship. The sign indicates the direction of the relationship: positive or negative.

A value of 0.8 indicates a very strong positive relationship.

A value of -0.8 indicates a very strong negative relationship.

A value of 0.1 indicates that there is essentially no relationship.

**4.** *Suppose that in a bivariate regression model, the effect of an independent variable on the dependent variable is positive and statistically significant, but when a second variable is added to the model, the effect of the original independent variable becomes negative and statistically significant. Explain why this would occur. What implications does this have for model specification in terms of omitting independent variables?*

This indicates that there is likely a spurious relationship between $x_{1}$ (the original independent variable) and $y$ due to a mutual dependence on $x_{2}$ (the second independent variable), which further indicates that $x_{2}$ is likely the common causal factor.

In the bivariate case $x_{1}$ has a positive association with $y$. The multiple regression which includes $x_{2}$ uncovers the true negative relationship between $x_{1}$ and ${y}$. Even if in a bivariate model we observe $x_{2}$ having a strong positive association with $y$, if $x_{1}$ and $x_{2}$ are also correlated, we cannot discount $x_{1}$'s importance (or exclude it from the model). With the multivariate model we have more predictive accuracy on the response variable by including both explanatory varaibles.

This is a case of **Simpson's Paradox.**

The implications raise ethical and moral questions. This situation has the ability to create opportunity for bias and producing an intentionally misleading model. For example, if someone wanted to implicate the first explanatory variable as the sole causal connection for significantly higher levels in the response variable (perhaps in an attempt to exonerate the second explanatory variable), they would exclude the second explanatory variable from the model.

**5.** *Given the least squares regression equation, Ŷ = 1,202 + 1,133X, when X = 3, what does Ŷ equal?*

$\hat{y} = 1202 + 1133x$
$\hat{y} = 1202 + 1133(3)$
$\hat{y} = 1202 + 3399$
$\hat{y} = 4601$

**6.** *It has been hypothesized that overall academic success for college freshmen as measured by grade point average (GPA) is a function of IQ scores = X<sub>1</sub>, and hours spent studying each week = X<sub>2</sub>. Suppose the regression equation is:*

Ŷ = -5.7 + 0.055X<sub>1</sub> +0.107X<sub>2</sub>

*What is the predicted GPA for a student with an IQ of 108, and 32 hours spent studying per week?*

$x_{1}:$ IQ score
$x_{2}:$ hours spent studying each week
$\hat{y}:$ predicted grade point average

$\hat{y} = -5.7 + 0.055x_{1} + 0.107x_{2}$
$\hat{y} = -5.7 + 0.055(108) + 0.107(32)$
$\hat{y} = -5.7 + 5.94 + 3.424$
$\hat{y} = 3.664$

**7.** *A manager at a local bank analyzed the relationship between monthly salary and three independent variables: length of service (measured in months), gender (0 = female, 1 = male), and job type (0 = clerical, 1 = technical). The table below summarizes the regression results. Interpret the coefficients and t-statistics for the Job and Gender variables.*

|           | Coefficients | Standard Error | t Stat  | p-value |
| --------- | -----------: | -------------: | ------: | ------: |
| Intercept | 784.92       | 322.25         |  2.44   | 0.02    |
| Service   |   9.19       |   3.20         |  2.87   | 0.01    |
| Gender    | 222.78       |  89.00         |  2.50   | 0.02    |
| Job       | -28.21       |  89.61         | -0.31   | 0.76    |

Gender has a positive association with Monthly Salary. Male employees (gender = 1) experience a 222.78 unit increase in Monthly Salary over females; and with a p-value of 0.02, there is strong evidence that Monthly Salary is related to Gender controlling for all other variables in the model.

In this model Job has a negative association with Monthly Salary. Technical jobs may exhibit a 28.21 unit decrease in Monthly Salary compared to clerical jobs. But, with a p-value of 0.76 there is little to no statistical significance and we cannot conclude that Monthly Salary is related to Job even when controlling for all other variables in the model.

**8.** *A multiple regression model includes the interaction term (X<sub>1</sub>)(X<sub>2</sub>), and the resulting coefficient is positive and statistically significant. What does this term imply about the effect of X<sub>1</sub> on Y?*

There is a positive association between $x_{1}$ and $y$ that varies according to the level of $x_{2}$.

**9.** *The sales manager of a large automotive parts distributor wants to estimate as early as April the total annual sales. According to the manager of the distribution warehouse, several factors are related to annual sales (measured in millions of dollars) (sales), including the number of retail outlets in the region stocking the company’s parts (outlets), the number of automobiles in the region registered as of April 1 (measured in millions) (cars), the total personal income for the first quarter of the year (measured in billions of dollars) (income), the average age of automobiles in years (age), and the number of supervisors at the distribution warehouse (bosses). The data for all these variables were gathered for a recent year.
Consider the following correlation matrix.*

|       |sales |outlets|cars  |income|age  |
|-------|-----:|------:|-----:|-----:|----:|
|outlets|0.899 |
|cars   |0.605 |0.775  |
|income |0.964 |0.825  |0.409 |
|age    |-0.323|-0.489 |-0.447|-0.349|
|bosses |0.286 |0.183  |0.395 |0.155 |0.291|


- **A.** *Which single variable has the strongest correlation with the dependent variable?*

With a correlation value of 0.964, `income` has the strongest correlation with the dependent variable `sales.`

- **B.** *Is there evidence of multicollinearity? If so, between which variables?*

Yes. The relatively high correlation value of 0.825 between the explanatory variables `outlets` and `income` is evidence of multicollinearity.

**10.** Using the same data described above, the following multivariate regression equation was estimated:

|         |Coef     |SE Coef |t statistic|p    |
|---------|--------:|-------:|----------:|----:|
|Intercept|-19.672  |5.422   |-3.63      |0.022|
|Outlets  |-0.000629|0.000213|-2.96      |0.018|
|Cars     |1.7399   |0.5530  |3.15       |0.035|
|Income   |0.40994  |0.04385 |9.35       |0.001|
|Age      |2.0357   |0.65247 |3.12       |0.014|
|Bosses   |-0.0344  |0.01128 |-3.05      |0.016|

ANOVA
|SOURCE        |DF  |Sum of Squares|Mean Square|F     |P    |
|--------------|----|--------------|-----------|------|-----|
|Regression    |5   |1593.81       |318.76     |140.36|0.000|
|Residual Error|4   |9.08          |2.27       |
|Total         |9   |1602.89       |

- **A.** *State the null hypothesis concerning the statistical significance of the overall regression, test this hypothesis, and interpret the results. (use a .05 level of significance)*

Here we are testing the collective influence of the explanatory variables. The null hypothesis claims that none of the explanatory variables have a relationship with the response variable. The alternative hypothesis claims that at least one of the explanatory variables has a relationship with the response variable.

$H_{0}: \beta_{1} = \beta_{2} = \beta_{3} = \beta_{4} = \beta_{5} = 0$
$H_{a}: At \: least \: one \: \beta_{i} \ne 0$

We test this using the F-statistic

$n$: the sample size (10)
$k$: the number of parameters in the multiple regression (5)
$df_{1}$: the number of explanatory variables in the model, $k$
$df_{2}$: $n$ - the number of parameters in the regression equation, $n - (k + 1)$

$F = \frac{R^{2}/k}{(1 - R^{2})/[n - (k + 1)]}$

$F = \frac{0.994/5}{(1 - 0.994)/[10 - (5 + 1)]}$

$F = 8.283$
$df_{1} = k = 5$
$df_{2} = n - (k + 1) = 4$

Consulting Table D: F Distribution, with $df_{1} = k = 5$, and $df_{2} = n - (k + 1) = 4$, for $\alpha = 0.05$, the F-value is 6.26. Our observed F-statistic value of 8.238 is greater than this F-value, indicating it is further out in the tail and has smaller tail-probability than 0.05 (the P-value is < 0.05). This means that there is sufficient evidence to reject the null hypothesis and accept the alternative hypothesis: we can conclude that at least one of the explanatory variables has a relationship with the response variable with statistical significance and a 95% confidence interval.

- **B.** *What is the value of the coefficient of determination, i.e., r-squared (note for this example, you do NOT need to compute adjusted r-squared)? Based on this value, what percent of the variation in the dependent variable is explained by the regression equation?*

$TSS = 1602.89$
$SSE = 9.08$

$R^{2} = \frac{TSS-SSE}{TSS}$

$R^{2} = \frac{1602.89-9.08}{1602.89}$

$R^{2} = \frac{1593.81}{1602.89}$

$R^{2} = 0.994$

This model predicts or explains approximately 99.4% of the variation in the dependent variable.

- **C.** Interpret the results (both statistical significance and magnitude of effect) for each of the independent variables in the model. (Use a .05 level of significance)

- **D.** *What would be the projected value in annual sales if the following were true?
outlets = 1739, cars = 9.27, income  = 85.4, age  = 3.5, and bosses  = 9.0
If these values are outside the range of values used for the regression, would this be a reliable forecast? Why or why not?*

$x_{1}$: Outlets
$x_{2}$: Cars
$x_{3}$: Income
$x_{4}$: Age
$x_{5}$: Bosses

$\hat{y} = \alpha + \beta_{1}x_{1} + \beta_{2}x_{2} + \beta_{3}x_{3} + \beta_{4}x_{4} + \beta_{5}x_{5}$
$\hat{y} = -19.672 + -0.000629x_{1} + 1.7399x_{2} + 0.40994x_{3} + 2.0357x_{4} + -0.0344x_{5}$
$\hat{y} = -19.672 + -0.000629(1739) + 1.7399(9.27) + 0.40994(85.4) + 2.0357(3.5) + -0.0344(9.0)$
$\hat{y} = 37.187$ (millions of dollars)

If these values are outside the range of values used for the regression, then the forecast would not be reliable. Linear Regression, whether bivariate or multivariate, is best suited to interpolate values. Linear Regression is not suitable for extrapolation because we don't know if the linear prediction equation derived from the range of values in the sample data remains representative outside of their bounds.

**11.** Suppose you are a research assistant to a young assistant professor who is very interested in predicting faculty salaries at US public colleges and universities. To do so, you estimate a linear regression model with faculty salaries (facsal) as the dependent variable, and you include four independent variables: total enrollment (enart), % of students receiving federal aid (pfedaid), whether an institution is a Landgrant college or university (landgrant), and total revenues in millions of dollars (tot_rev_millions). Note that landgrant is a dichotomous (dummy) variable while the other variables are all continuous variables.

Because you suspect that there may be an interactive effect between Landgrant institutions (landgrant) and total revenues in $ millions (tot_rev_millions), you include an interaction term in the model for these two variables (landgrant*tot_rev). The the output of the linear regression model is below.

![](question-11-R-output.png)

- A) Interpret the base coefficients for landgrant, and tot_rev_millions, as well as the interaction term (tot_rev_millions:landgrant), both in terms of statistical significance and in terms of their impact on the dependent variable.

- B) Based on your regression model, what is the predicted faculty salary for the following two hypothetical institutions:

Total Enrollment = 20,000
% Receiving Federal Financial Aid = 25
Total Revenues = $30 Million
Landgrant = 1

Total Enrollment = 20,000
% Federal Receiving Financial Aid = 25
Total Revenues = $30 Million
Landgrant = 0

# Part II: R Programming
> Include both the output and relevant R code in your answer.

**1.** Download the statelife_exp.csv file and load it into R. This dataset contains the following variables:

- `State`: name of state
- `Population`: population estimate as of July 1, 1975
- `Income`: per capita income (1974)
- `Illiteracy`: illiteracy (1970, percent of population)
- `Life Exp`: life expectancy in years (1969–71)
- `Murder`: murder and non-negligent manslaughter rate per 100,000 population (1976)
- `HS Grad`: percent high-school graduates (1970)
- `Frost`: mean number of days with minimum temperature below freezing (1931–1960) in capital or large city
- `Area`: land area in square miles

Estimate an OLS model where life expectancy is the dependent variable, and the following are independent variables: murder rate, population, percent high-school graduates.

- A) Construct a table containing summary descriptive statistics for all of the variables in the model (both IVs and DV), and construct histograms for each variable.

- B) Interpret the results of the model, both substantively and statistically. Be sure to discuss both the model as a whole as well (F statistic and adjusted r-squared), as well as the results for each independent variable in the model (coefficient, t-statistic, and p-value).

- C) Estimate a new model with the same DV and set of IVs listed earlier, but add a new independent variable for the mean number of days with minimum temperature below freezing. Interpret the results of this model (same procedure as in part B).

- D) Next, conduct a nested F-test to determine if adding this new variable improved the explanatory power of the model.

**2.** Download the violent_dissent.csv file and load it into R. This data contains information about violent internal dissent, democracy and state repression for 1984. The variables in the dataset are as follows:

- `ccode`: Numeric COW country code
- `pop`: population in thousands
- `rgpdpch`: Real GPD per capita
- `democracy`: Behavioral measure of democracy including legislative competition/participation, competitiveness of executive recruitment and participation, along with other factors. This is a continuous measure. Higher numbers indicate greater levels of democracy.
- `vdissdum`: Binary violent dissent variable (dummy variable) based on data regarding terrorist events and fatalities, as well as guerrilla wars and riots. 0=country is peaceful; 1=country is in state of violent conflict
- `repression`: Violations of physical integrity rights. A continuous measure based on human rights data regarding torture, forced disappearances, extrajudicial killings and political imprisonment. Higher numbers indicate greater levels of repression.

Estimate an OLS regression model where repression is the dependent variable, and pop, rgdpch, democracy, and vdissdum are the independent variables.

- A) Interpret the results of the model, both substantively and statistically. Be sure to discuss both the model as a whole (F statistic and adjusted r-squared), as well as the results for each independent variable in the model (coefficient, t-statistic, and p-value).

- B) Some hypothesize that the effect of democracy on repression is conditional and works differently in peaceful countries than in countries in a state of violent conflict. To test this hypothesis, add a multiplicative interaction term to the model for democracy and vdissdum (democracy*vdissdum). Interpret the model results (using the same procedure as part A).

- C) Next, conduct a nested F-test to determine if adding the interaction term for democracy*vdissdum improved the explanatory power of the model.

- D) Finally, based on the model estimated in part B, construct an effects plot to show the effect of democracy on repression for peaceful and for violent countries. Be sure to include a legend and appropriately label your axes.
