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

With a normal distribution, 0.36 would have a z-score of 1.79. The difference in the computed and actual z-scores is approximately 0.31, which means the actual value is almost 1/3 of a standard deviation different from what is expected for a normal distribution. This suggests that the distribution would be shifted left from a normal distribution, and there are more premature births than expected given the mean and standard deviation computed in this sample. 

## 4. Sampling Distribution of the Sample Mean.
The probability distribution associated with the outcome of rolling a balanced die has probability 1/6 attached to each integer, {1, 2, 3, 4, 5, 6}. Let (y1, y2) denote the outcomes for rolling the die twice.
- *( a ) Enumerate the 36 possible (y1, y2) pairs (e.g., (2,1) represents a 2 followed by a 1).*<br>
- *( b ) Treating the 36 pairs as equally likely, construct the sampling distribution for the sample mean y-bar of the two numbers rolled.*<br>
- *( c ) Construct a histogram of the (i) probability distribution for each roll, (ii) sampling distribution of y-bar in (b). Describe their shapes.*<br>
- *( d ) What are the means of the two distributions in (c)? Why are they the same?*<br>
- *( e ) Explain why the sampling distribution of y-bar has relatively more probability near the middle than at the minimum and maximum values. (Hint: Note there are many more (y1, y2) pairs that have a sample mean near the middle than near the minimum or maximum.)*<br>

## 5. Point and Interval Estimates.
One question on a recent General Social Survey asked, “Do you think that it should be government’s responsibility to reduce income differences between the rich and the poor?” Those answering yes included 90 out of the 142 subjects who called themselves strong Democrats in political party identification and 26 of the 102 who called themselves strong Republicans.
- *( a ) Find the point estimate of the population proportion who would answer yes for each group.*<br>
- *( b ) The 95% confidence interval for the population proportion of yes responses is (0.55, 0.71) for strong Democrats and (0.17, 0.34) for strong Republicans. Explain how to interpret the intervals.*<br>

## 6. Confidence Interval for a Proportion.
When the GSS most recently asked whether human beings developed from earlier species of animals, 53.8% of 1095 respondents answered that this was probably or definitely not true.

*Find a 99% confidence interval for the corresponding population proportion, and indicate whether you can conclude that a majority of Americans felt this way.*<br>

## 7. Confidence Interval for a Mean.
In response to the GSS question in 2014 about the number of hours daily spent watching TV, the responses by the seven subjects who identified themselves as being raised Islamic were 1, 1, 1, 2, 2, 3, 6.
- ( a ) *Estimate the mean, standard deviation, and standard error.*<br>
- *( b ) Construct a 95% confidence interval for the population mean, specifying its assumptions. Interpret.*<br>

## 8. Choice of Sample Size.
A 2011 poll in Canada indicated that 41% of Canadians favored bringing back the death penalty for convicted murderers. (The United States is the only Western democracy that has it.). A report by Amnesty International on this and related polls (www.amnesty.ca) did not report the sample size but states, “Polls of this size are considered to be accurate within 2.5 percentage points 95% of the time.”

*If this is the case, about how large was the sample size?*<br>

## 9. The Five Parts of a Significance Test.
You want to know whether adults in your country think the ideal number of children is equal to 2, or higher or lower than that. (7.5 total points, 2.5 points for each part)
- *( a ) Define notation and state the null and alternative hypotheses for studying this.*
- *( b ) For responses in a recent GSS to the question “What do you think is the ideal number of children to have?” software shows results:*

Test of mu = 2.0 vs mu not = 2.0
| Variable |	n  | Mean	| StDev	| SE Mean	|  T  | P-value |
| -------- | --- | ---- | ----- | ------- | --- | ------- |
|Children	|1302	|2.490	|0.850	|0.0236		|20.80	|0.0000

*Report the test statistic value, and show how it was obtained from other values reported in the table.*<br>
- *( c ) Explain what the P-value represents, and interpret its value.*<br>

## 10. Significance Test for a Mean.
By law, an industrial plant can discharge no more than 500 gallons of waste water per hour, on the average, into a neighboring lake. Based on other infractions they have noticed, an environmental action group believes this limit is being exceeded. Monitoring the plan is expensive, and a random sample of four hours is selected over a period of a week. Software reports

|Variable	|No. Cases	|Mean		|StDev		|SE of Mean|
|---------|-----------|-------|---------|----------|
|WASTE	|4		|1000.0		|400.0		|200.0|

- *( a ) Test whether the mean discharge equals 500 gallons per hour against the alternative that the limit is being exceeded. Find the P-value, and interpret.*<br>
- *( b ) Explain why the test may be highly approximate or even invalid if the population distribution of discharge is far from normal.*<br>
- *( c ) Explain how your one-sided analysis implicitly tests the broader null hypothesis that μ  500.*<br>

## 11. Significance Test for a Proportion.
Same-sex marriage was legalized across Canada by the Civil Marriage Act enacted in 2005. Is this supported by a majority, or a minority, of the Canadian population? In an Ipsos Global poll conducted for Reuter News in May 2013 of 1000 Canadians that asked whether legalization should stand or be repealed, 63% supported legalization. Let π denote the population proportion of Canadian adults who support legalization. For testing H0: μ = 0.50 against Ha: μ  0.50
- *( a ) Find the standard error, and interpret.*<br>
- *( b ) Find the test statistic, and interpret.*<br>
- *( c ) Fine the P-value, and interpret in context.*<br>

## 12. Decisions and Types of Errors in Tests.
Example 6.4 (page 148 in the 5th edition and page 151 in the 4th edition) tested a therapy for anorexia, using Ho: μ = 0 and Ha: μ  0 about the population mean weight change.
- *( a ) In the words of that example, what is (i) Type I error? (ii) Type II error?*<br>
- *( b ) The P-value was 0.018 (5th edition) or 0.017 (4th edition). If the decision for α = 0.05 were in error, what type of error is it?*<br>
- *( c ) Suppose instead α = 0.01. What decision would you make? If it is in error, what type of error is it?*<br>

## 13. Limitations of Significance Tests.
A report by the Collaborative on Academic Careers in Higher Education indicated that there is a notable gap between female and male academics in their confidence that tenure rules are clear, with men feeling more confident. The 4500 faculty members in the survey were asked to evaluate policies on a scale of 1 to 5 (very unclear to very clear). The mean response about the criteria for tenure was 3.51 for females and 3.55 for males, which was indicated to meet the test for statistical significance.

*Use this study to explain the distinction between statistical significance and practical significance.*<br>
