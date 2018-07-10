Michael Uftring
Indiana University
V506 - Statistical Analysis, Summer 2018
Homework Exercise 3

-----

# Part I - Bivariate Regression Analysis without R

## 9.3:
*Anthropologists often try to reconstruct information using partial human remains at burial sites. For instance, after finding a femur (thighbone), they may want to predict how tall an individual was. An equation they use to do this is:*

$\hat{y} = 61.4 + 2.4x$

*where $\hat{y}$ is the predicted height and $x$ is the length of the femur, both in centimeters.*

**(a)** *Identify the y-intercept and slope of the equation. Interpret the slope.*

The y-intercept is: 61.4
The slope is: 2.4

A one-unit increase in length of the femur is associated with a 2.4 unit increase in height, both units being centimeters.

**(b)** *A femur found at a particular site has length 50 cm. What is the predicted height of the person who had that femur?*

The prediction equation is: $\hat{y} = 61.4 + 2.4x$
We plug in 50 for $x$ to get: $\hat{y} = 61.4 + 2.4(50) = 181.4$

The predicted height for a human with a 50 cm femur is 181.4 cm.

## 9.58:
*The variables $y$ = annual income (thousands of dollars), $x_{1}$ = number of years of education, and $x_{2}$ = number of years experience in job are measured for all the employees having city-funded jobs, in Knoxville, Tennessee. The following prediction equations and correlations apply.*

(i.) $\hat{y} = 10 + 1.0x{_1}$, $r = 0.30$
(ii.) $\hat{y} = 14 + 0.4x_{2}$, $r = 0.60$

*The correlation is -0.40 between $x_{1}$ and $x_{2}$. Which of the following statements are true? (Hint: seven of the statements are true.)*

*If true, briefly explain why.*

> Variables:
> - $y$ = annual income (thousands of dollars)
> - $x_{1}$ = number of years of education
> - $x_{2}$ = number of years experience in job

**(a)** *The strongest sample association is between $y$ and $x_{2}$.*

True.

Of the three reported $r$ values, the largest absolute value is 0.60 which is the correlation value between $y$ and $x_{2}$.

**(b)** *The weakest sample association is between $x_{1}$ and $x_{2}$.*

False.

The smallest absolute value of the correlation is 0.30, the correlation value between $y$ and $x_{1}$.

**(c)** *The prediction equation using $x_{2}$ to predict $x_{1}$ has negative slope.*

True.

The slope and correlation have the same sign, and correlation between $x_{1}$ and $x_{2}$ is -0.40.

**(d)** *A standard deviation increase in education corresponds to a predicted increase of 0.3 standard deviations of income.*

True.

An increase of $s_{x}$ in $x$ corresponds to a predicted change of $r$ standard deviations in the $y$ values.

**(e)** *There is a 30% reduction in error in using education, instead of $\bar{y}$, to predict income.*

False.

The proportional reduction in error $= \frac{E_{1} - E_{2}}{E_{1}} = \frac{TSS-SSE}{TSS} = ... = r^{2}$
For education ($x_{1}$), $r = 0.30$, and $r^{2} = 0.09$, so the proportional reduction in error when using education, instead of $\bar{y}$, to predict income is 9%.

**(f)** *Each additional year on the job corresponds to a \$400 increase in predicted income.*

True.

The slope of the prediction formula for predicting annual income from experience is 0.4 and the units of $y$ are thousands of dollars. With a +1 increase to $x_{2}$ we can multiply the factors out: $0.4 \times 1 \times 1000 = \$400.$

**(g)** *When $x_{1}$ is the predictor of $y$, the sum of squared residuals (SSE) is larger than when $x_{2}$ is the predictor of $y$.*

True.

The better a prediction is, the smaller its SSE value. The larger $r^{2}$ is, the stronger the linear association, and thus there is a smaller SSE value.

$r^{2}_{x_{1}} = 0.30^{2} = 0.09$
$r^{2}_{x_{2}} = 0.60^{2} = 0.36$

Example:
If TSS = 1.0, then SSE would be approximately 0.91 to achieve an $r^{2} = 0.09$.
If TSS = 1.0, then SSE would be approximately 0.64 to achieve an $r^{2} = 0.36$.

**(h)** *The predicted mean income for employees having 20 years of experience is \$4000 higher than the predicted mean income for employees having 10 years of experience.*

True.

We can solve this by computing the predicted values of $\hat{y}$ for the two $x_{2}$ values, and then take the difference.

$\hat{y} = 14 + 0.4x_{2}$
when $x_{2} = 20$, $\hat{y} = 14 + 0.4(20) = 22.0$
when $x_{2} = 10$, $\hat{y} = 14 + 0.4(10) = 18.0$
$22.0 - 18.0 = 4.0$
The units of $y$ is annual income in thousands, so the result is \$4000.

**(i)** *If $s = 8$ for the model using $x_{1}$ to predict $y$, then it is not unusual to observe an income of \$70,000 for an employee who has 10 years of education.*

False.

**(j)** *It is possible that $s_{y} = 12.0$ and $s_{x_{1}} = 3.6$*

True.

In fact, with $s_{y} = 12.0$, $s_{x_{1}} = 3.6$, and $b = 1.0$ (as given in the problem statement), we compute $r = 0.30$.

$r = \left (\frac{s_{x_{1}}}{s_{y}} \right )b = \left (\frac{3.6}{12.0} \right )1.0 = 0.30$

**(k)** *It is possible that $\bar{y} = 20$ and $\bar{x_{1}} = 13.$*

False.

We can solve the prediction equation for either $x$ or $y$ given these values.

$\hat{y} = 10 + 1.0x{_1}$

$y = 10 + 1.0(13) = 23$
$x = (y - 10)/1.0 = (20 - 10) = 10$

Thus, when $y = 20$, then $x = 10$.
And, when $x = 13$, then $y = 23$.

## 9.61:
The slope of the least squares prediction equation and the correlation are similar in the sense that:

**(a)** They do not depend on the units.

**(b)** They both must fall between -1 and +1.

**(c)** They both have the same sign.

**(d)** They both equal 1 when there is the strongest association.

**(e)** Their squares both have proportional reduction in error interpretations.

**(f)** They have the same $t$ statistic value for testing $H_{0}$: Independence.

**(g)** They both can be strongly affected by severe outliers.


## 9.59:
One can interpret $r = 0.30$ as follows:

**(a)** A 30% reduction in error occurs in using $x$ to predict $y$.

**(b)** A 9% reduction in error occurs in using $x$ to predict $y$ compared to using $\bar{y}$ to predict $y$.

**(c)** 9% of the time $\hat{y} = y$.

**(d)** $y$ changes 0.30 units for every one-unit increase in $x$.

**(e)** When $x$ predicts $y$, the average residual is 0.3.

**(f)** $x$ changes exactly 0.30 standard deviations when $y$ changes one standard deviation.


# Part II - Bivariate Regression with R

## Wooldridge GPA2 dataset
*One of the challenges that university administrators must deal with is deciding which students to admit to their institution, and which to deny. To help make these decisions, admissions officers often rely on quantitative data about student performance, such as scores on standardized tests like SAT exam.*

**a)** *Estimate a model where College GPA (colgpa) is the dependent variable, and scores on the SAT test (sat) is the independent variable. At the 0.01 level, can we conclude that students who score better on the SAT generally perform better in college?*

## Real Estate dataset
**a)** *Let selling price be the dependent variable and size of the home the independent variable. Determine the regression equation. Estimate the selling price for a home with an area of 2,200 square feet.*

**b)** *Let selling price be the dependent variable and distance from the center of the city the independent variable. Determine the regression equation. Estimate the selling price of a home 20 miles from the center of the city.*

## 2009 Baseball dataset
**a)** *Let attendance be the dependent variable and total team salary be the independent variable (note, both variables are measured in millions). Construct a scatterplot of the two variables. From the diagram, does there seem to be a direct relationship between the two variables?*

**b)** *Estimate a linear regression model for these variables, and interpret all of your results.*

**c)** *What is the expected attendance for a team with a salary of $80 million?*

**d)** *If the owners pay an additional $30 million, how many more people could they expect to attend?*
