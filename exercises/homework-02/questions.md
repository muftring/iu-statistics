Michael Uftring   
Indiana University   
V506 - Statistical Analysis, Summer 2018   
Homework Exercise 2   

-----

# Questions

## 1. Basic Probability Rules.
A GSS estimates the probability than an American adult believes in heaven is 0.85.<p>
- *( a ) Estimate the probability that an American adult does not believe in heaven.*

Consider $A$ as the variable representing the condition: **an American adult believes in heaven**. We now can state that as a probability by $P(A) = 0.85$. And so the **probability that an American adult does not believe in heaven** is expressed as $P(not\:A) = 1 - P(A)$ = 1.0 - 0.85 = 0.15.

- *( b ) Of those who believe in heaven, about 84% believe in hell. Estimate the probability a randomly chosen adult believes in both heaven and hell.*

Let $A$ be the probability an American adult believes in heaven, which is $0.85$ or $85\%$.<p>
Let $B$ represent the 84% that believe in hell, given they believe in heaven.<p>
So, then $P(A \: and \: B) = P(A) \times P(B \: given \: A) = 0.85 \times 0.84 = 0.714$, or $71.4\%$.

## 2. Probability Distributions for Discrete and Continuous Variables.
Let y be the number of languages in which a person is fluent. According to Statistics Canada, for residents of Canada y has a probability distribution P(0) = 0.02, P(1) = 0.81, and P(2) = 0.17, with negligible probability for higher values of y.<p>
- *( a ) Is y a discrete, or a continuous variable? Why?*<p>

$y$ is a discrete variable because it is a count (number of items), which means the value can only be whole numbers (fractional values do not make sense).

- *( b ) Construct a table showing the probability distribution of y.*<p>

|  y  | P(y)  |
| --- | ----- |
|  0  | 0.02  |
|  1  | 0.81  |
|  2  | 0.17  |
| *Total*   | 1.0  |

- *( c ) Find the probability that a Canadian is not multilingual.*<p>

If $P(A)$ represents the probability that a Canadian is multilingual, then $P(not \: A)$ is the probability that a Canadian is not multilingual.

$P(not \: A) = 1 - P(A) = 1.0 - 0.17 = 0.83$

- *( d ) Find the mean of this probability distribution.*<p>

The mean of the probability distribution for a discrete variable is:<p>
$\mu = \sum yP(y)$<p>

For this probability distribution the mean equals: $0(0.02) + 1(0.81) + 2(0.17) = 1.15$

## 3. The Normal Probability Distribution.
For a study in Aarhus University Hospital (Denmark), 5459 pregnant women who reported information on length of gestation until birth had mean = 281.9 days and standard deviation = 11.4 days. A baby is classified as premature if the gestation time is 258 days or less.<p>
- *( a ) If gestation times are normally distributed, what proportion of babies would be born prematurely?*<p>

To figure this out we need to determine how many standard deviations 258 is away from 281.9. Given the number of standard deviations (the z-score) we can determine the desired proportion value.

The number of days between premature and the mean is: $258 - 281.9 = -23.9$, and the z-score is $-23.9 \div 11.4 \approx -2.1$, meaning that 258 falls 2.1 standard deviations below the mean. Consulting the z-score table, this indicates that the proportion is approximately $0.0179$.

- *( b ) The actual proportion born prematurely during the period was 0.036. Based on this information, how would you expect the distribution of gestation time to differ from the normal distribution?*<p>

With a normal distribution, 0.36 would have a z-score of 1.79. The difference in the computed and actual z-scores is approximately 0.31, which means the actual value is almost 1/3 of a standard deviation different from what is expected for a normal distribution. This suggests that the distribution would be skewed to the right from a normal distribution, and there are more premature births than expected given the mean and standard deviation computed in this sample.

## 4. Sampling Distribution of the Sample Mean.
The probability distribution associated with the outcome of rolling a balanced die has probability 1/6 attached to each integer, {1, 2, 3, 4, 5, 6}. Let (y1, y2) denote the outcomes for rolling the die twice.<p>

- *( a ) Enumerate the 36 possible (y1, y2) pairs (e.g., (2,1) represents a 2 followed by a 1).*

```
(1,1) (1,2) (1,3) (1,4) (1,5) (1,6)   
(2,1) (2,2) (2,3) (2,4) (2,5) (2,6)   
(3,1) (3,2) (3,3) (3,4) (3,5) (3,6)   
(4,1) (4,2) (4,3) (4,4) (4,5) (4,6)   
(5,1) (5,2) (5,3) (5,4) (5,5) (5,6)   
(6,1) (6,2) (6,3) (6,4) (6,5) (6,6)   
```

- *( b ) Treating the 36 pairs as equally likely, construct the sampling distribution for the sample mean y-bar of the two numbers rolled.*

I wrote a Python program that stores in a dictionary each of the 36 possible 2-die rolls identified in (a) above. Next, I used the `random.randint` function to generate a value between 1 and 36 to select a roll. The random selection of a roll was repeated 255 times. On each roll the sample mean was computed (add the two die values, and divide by two). The sample means were accumulated in another dictionary keyed by the sample mean (a value between 1.0 and 6.0).

| Die Roll Mean | Probability |
| --- | --- |
| 1.0 | 0.039 |
| 1.5 | 0.047 |
| 2.0 | 0.082 |
| 2.5 | 0.110 |
| 3.0 | 0.153 |
| 3.5 | 0.169 |
| 4.0 | 0.118 |
| 4.5 | 0.122 |
| 5.0 | 0.098 |
| 5.5 | 0.051 |
| 6.0 | 0.012 |
**Table 1: Sampling Distribution For the Sample Mean**<P>

- *( c ) Construct a histogram of the (i) probability distribution for each roll, (ii) sampling distribution of y-bar in ( b ). Describe their shapes.*


| Die Roll Mean | Frequency   | Probability |
| ------------- | ----------- | ----------- |
| 1.0 | 1 | 0.03 |
| 1.5 | 2 | 0.06 |
| 2.0 | 3 | 0.08 |
| 2.5 | 4 | 0.11 |
| 3.0 | 5 | 0.14 |
| 3.5 | 6 | 0.17 |
| 4.0 | 5 | 0.14 |
| 4.5 | 4 | 0.11 |
| 5.0 | 3 | 0.08 |
| 5.5 | 2 | 0.06 |
| 6.0 | 1 | 0.03 |
**Table 2: Frequency and Probability Distribution for 2-die Roll**<P>

![](2-die-roll-probability-distribution.png)<p>
**Figure 1: 2-die Roll Probability Distribution Histogram**<P>

![](2-die-roll-sampling-distribution-histogram.png)<p>
**Figure 2: 2-die Roll Sampling Distribution of $\bar{y}$ Histogram**<P>

- *( d ) What are the means of the two distributions in ( c )? Why are they the same?*

The mean of the Probability Distribution is 3.5.<P>
The mean of the Sampling Distribution is 3.4568.<P>

The means are approximately the same because the sampling distribution of the sample mean will approximate the mean of the actual probability distribution as the number of samples increases (towards infinity).

- *( e ) Explain why the sampling distribution of y-bar has relatively more probability near the middle than at the minimum and maximum values. (Hint: Note there are many more (y1, y2) pairs that have a sample mean near the middle than near the minimum or maximum.)*

The sampling distribution of $\bar{y}$ is essentially accumulating mean values. As such, and as the hint indicates, there will be many more values near the actual mean value than out towards the tails. This is because the sampling distribution finds the mean of the values in each sample, which will over time tend to center on the actual mean.

## 5. Point and Interval Estimates.
One question on a recent General Social Survey asked, “Do you think that it should be government’s responsibility to reduce income differences between the rich and the poor?” Those answering yes included 90 out of the 142 subjects who called themselves strong Democrats in political party identification and 26 of the 102 who called themselves strong Republicans.<P>
- *( a ) Find the point estimate of the population proportion who would answer yes for each group.*

The point estimate for strong Democrats is 0.634   
The point estimate for strong Republicans is 0.255   

- *( b ) The 95% confidence interval for the population proportion of yes responses is (0.55, 0.71) for strong Democrats and (0.17, 0.34) for strong Republicans. Explain how to interpret the intervals.*

The intervals are intended to give a value range within which the parameter value is expected to be. In this case, the strong Democrat interval is +/-0.08 from its point estimate, and the strong Republican interval is +/-0.085 from its point interval. These +/- values are the margin of error and intend to provide some insight into the precision of the point estimate.

## 6. Confidence Interval for a Proportion.
When the GSS most recently asked whether human beings developed from earlier species of animals, 53.8% of 1095 respondents answered that this was probably or definitely not true.<P>

*Find a 99% confidence interval for the corresponding population proportion, and indicate whether you can conclude that a majority of Americans felt this way.*<P>

$$se = \sqrt{\frac{\hat{\pi}(1-\hat{\pi})}{n}} = \sqrt{\frac{(0.538)(0.462)}{1095}} = \sqrt{0.0002} = 0.015$$

A 99% confidence interval for $\pi$ is

$$\hat{\pi} \pm 2.58(se) = 0.538 \pm 2.58(0.015) = 0.538 \pm 0.0387, \: or \:(0.4993, 0.5767)$$

We can therefore conclude that at least very close to half, 49.93%, but no more than 57.67% believe human beings probably or definitely did not develop from earlier species of animals.

## 7. Confidence Interval for a Mean.
In response to the GSS question in 2014 about the number of hours daily spent watching TV, the responses by the seven subjects who identified themselves as being raised Islamic were 1, 1, 1, 2, 2, 3, 6.<P>

- *( a ) Estimate the mean, standard deviation, and standard error.*

$se = s / \sqrt{n}$

```
data:     [1, 1, 1, 2, 2, 3, 6]
n:        7
Mean:     2.286
StDev:    1.799
SE Mean:  0.68
```

- *( b ) Construct a 95% confidence interval for the population mean, specifying its assumptions. Interpret.*

A 95% Confidence Interval for a Mean is:

$\bar{y} \pm t_{.025}(se)$, with $se = s / \sqrt{n}$, where $df = n-1$ for the t-score.

In this case $df = 7-1 = 6$.

$\bar{y} \pm t_{.025}(se)$   
$\bar{y} \pm t_{.025}(s / \sqrt{n})$    
$2.286 \pm 2.447(1.799/\sqrt{7})$   
$2.286 \pm 1.664$   
(0.622, 3.95)   

The 95% confidence interval has a broad range. The low end is 0.622 and the high end is 3.95, with a point estimate of approximately $2\frac{1}{4}$. The wide range, even with high confidence interval value, is likely due to the small sample size. The standard deviation value is close to the mean, which generally indicates a skew in the distribution; in this case, where negative values do not make sense, we can conclude that the distribution is skewed to the right. Looking closer at the data we observe that the median is 2 and the mode is 1. We also observe a single value of 6, which could be considered an outlier and be the cause for large standard deviation and thus such a wide range in the confidence interval.

## 8. Choice of Sample Size.
A 2011 poll in Canada indicated that 41% of Canadians favored bringing back the death penalty for convicted murderers. (The United States is the only Western democracy that has it.). A report by Amnesty International on this and related polls (www.amnesty.ca) did not report the sample size but states, “Polls of this size are considered to be accurate within 2.5 percentage points 95% of the time.”

*If this is the case, about how large was the sample size?*

The margin of error is 2.5%.   
The probability with which the margin of error is to be achieved is 0.95.   
Objective: determine the sample size $n$ such that a 95% confidence interval for $\pi$ equals $\hat{\pi} \pm 0.025$.

$\hat{\pi}$ falls within 1.96 standard errors of $\pi$ with probability 0.95.

$0.025 = 1.96\sqrt{\frac{\pi(1-\pi)}{n}}$   
...   
$n = \frac{(1.96)^{2}\pi(1-\pi)}{(0.025)^{2}}$   
in this case, $\pi = 0.41$, so   
$n = \frac{(1.96)^{2}(0.41)(1-0.41)}{(0.025)^{2}} = 1486.85$

In this case, the sample size was approximately 1487.

## 9. The Five Parts of a Significance Test.
You want to know whether adults in your country think the ideal number of children is equal to 2, or higher or lower than that.<p>
- *( a ) Define notation and state the null and alternative hypotheses for studying this.*

Let $\mu$ denote the ideal number of children.   
The *null hypothesis* claim is that the ideal number of children is 2, thus ${H_0}: \mu = 2.0$.   
The *alternative hypothesis* is that the ideal number of children is not 2, and so $H_{a}: \mu \ne 2.0$

- *( b ) For responses in a recent GSS to the question “What do you think is the ideal number of children to have?” software shows results:*

Test of mu = 2.0 vs mu not = 2.0
| Variable |	n   | Mean	| StDev	| SE Mean	|  T    | P-value |
| -------- | ---- | ----- | ----- | ------- | ----- | ------- |
| Children | 1302 | 2.490	| 0.850	| 0.0236	| 20.80	| 0.0000  |

*Report the test statistic value, and show how it was obtained from other values reported in the table.*

The test statistic is number of children and the T value here is 20.80, reporting the number of standard errors away the value in the null hypothesis is from the mean of the observed data. Its value is derived by computing the difference between the $\mu$ value in the null hypotheses and the mean in the observed data, and dividing by the standard error.

$se = s / \sqrt{n} = 0.023556644807631963$
$0.490 / 0.023556644807631963 = 20.8$

- *( c ) Explain what the P-value represents, and interpret its value.*

The P-value is a probability indicator of whether the observed data support or reject the null hypothesis. The larger the value, the more likely it is that the observed data would not be unusual given the null hypothesis is true. The smaller the value, the less evidence there is to support the null hypothesis. In this case the P-value is 0.0000, which is indeed "very small" (a value of 0.01 is sufficient to debunk a null hypothesis), and so we may conclude that the alternative hypothesis is more likely.

## 10. Significance Test for a Mean.
By law, an industrial plant can discharge no more than 500 gallons of waste water per hour, on the average, into a neighboring lake. Based on other infractions they have noticed, an environmental action group believes this limit is being exceeded. Monitoring the plan is expensive, and a random sample of four hours is selected over a period of a week. Software reports

| Variable	| No. Cases	  | Mean		| StDev		  | SE of Mean |
| --------- | ----------- | ------- | --------- | ---------- |
| WASTE     | 4           | 1000.0  | 400.0     | 200.0      |

> **Note**:
> - The null hypothesis: the waste discharge is 500 gallons per hour, $H_{0}: \mu = 500$
> - the alternative hypothesis: the waste discharge is much greater than 500 gallons per hour, $H_{a}: \mu > 500$

- *( a ) Test whether the mean discharge equals 500 gallons per hour against the alternative that the limit is being exceeded. Find the P-value, and interpret.*

$se = s / \sqrt{n}$
$t = \frac{\bar{y} - \mu_{0}}{se}$
$t = \frac{1000 - 500}{200.0} = 2.5$
Consulting Table B, with $df = 3$, the one-tail P-value will be between 0.025 and 0.050.

With a P-value in this range we can reject the null hypothesis (outright). The general convention is that when $P \le 0.05$ the null hypotheses can be rejected.

- *( b ) Explain why the test may be highly approximate or even invalid if the population distribution of discharge is far from normal.*

The small sample size and large standard deviation introduce some doubt, and suggest this test could be highly approximate.

- *( c ) Explain how your one-sided analysis implicitly tests the broader null hypothesis that μ <= 500.*

In the original $H_{0}$ we are testing the distance from $\mu = 500$, and are able to conclude that we can reject that null hypothesis. If $\mu$ were smaller in $H_{0}$, that is less than 500, we would be testing the same observed values against a distance already further away and could thus reach the same conclusion.

## 11. Significance Test for a Proportion.
Same-sex marriage was legalized across Canada by the Civil Marriage Act enacted in 2005. Is this supported by a majority, or a minority, of the Canadian population? In an Ipsos Global poll conducted for Reuter News in May 2013 of 1000 Canadians that asked whether legalization should stand or be repealed, 63% supported legalization. Let π denote the population proportion of Canadian adults who support legalization. For testing H0: μ = 0.50 against Ha: μ  0.50<P>
- *( a ) Find the standard error, and interpret.*

answer

- *( b ) Find the test statistic, and interpret.*

answer

- *( c ) Fine the P-value, and interpret in context.*

answer

## 12. Decisions and Types of Errors in Tests.
Example 6.4 (page 148 in the 5th edition and page 151 in the 4th edition) tested a therapy for anorexia, using Ho: μ = 0 and Ha: μ  0 about the population mean weight change.<P>
- *( a ) In the words of that example, what is (i) Type I error? (ii) Type II error?*

answer

- *( b ) The P-value was 0.018 (5th edition) or 0.017 (4th edition). If the decision for α = 0.05 were in error, what type of error is it?*

answer

- *( c ) Suppose instead α = 0.01. What decision would you make? If it is in error, what type of error is it?*

answer

## 13. Limitations of Significance Tests.
A report by the Collaborative on Academic Careers in Higher Education indicated that there is a notable gap between female and male academics in their confidence that tenure rules are clear, with men feeling more confident. The 4500 faculty members in the survey were asked to evaluate policies on a scale of 1 to 5 (very unclear to very clear). The mean response about the criteria for tenure was 3.51 for females and 3.55 for males, which was indicated to meet the test for statistical significance.

*Use this study to explain the distinction between statistical significance and practical significance.*

answer
