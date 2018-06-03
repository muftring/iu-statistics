# iu-statistics
IU Statistical Analysis for Effective Decision Making (Summer, 2018)

# Introduction
The purpose of statistics is to make sense of the world using information or data.

# Data
Tabular format:
- **rows** are observations, or records
- **columns** are variables, or fields

# Data Sources

## Primary Data Collection
generally collected ourselves
- surveys
- experiments
- direct observation

## Secondary Data Collection
obtain a data set that has already been collected by a third party
- public use data sets (e.g., Census data)
- administrative data sets
  - from an agency: government, non profit, public or private agency
  - usually related to and collected by the agency

# Unit of Analysis
- data collected at the *individual* level; a single record per individual
- survey of household, and every record would be for a single household
- average measures of cities
- units of aggregation: e.g., school level, firm level, country level

> the important thing when thinking about data and doing analysis with data, you want the unit of analysis in the data sets to be consistent

# What is Statistics?
Statistics consists of a body of methods for obtaining and analyzing data.

Statistics provides methods for:
- **Design**: planning how to gather data for research studies
- **Description**: summarizing the data
- **Inference**: making predictions based on the data

Statistics consists of methods for designing studies and analyzing data collected in the studies.

# Statistical Analysis: Key Terms
- **Subjects**: the entities that a study observes
- **Population**: total set of subject of interest in a study
- **Sample**: subset of the Population on which the study collects data
- **Descriptive Statistics**: summarize the data using graphs, tables and numbers
- **Inferential Statistics**: provide *predictions* about a Population, based on data from a sample of that population
- **Parameter**: a numerical summary of the Population
- **Statistic**: a numerical summary of the sample data

# Sampling and Measurement
A measure should have *validity*, describing what it is intended to measure and accurately reflecting the concept. It should also have *reliability*, being consistent in the sense that a subject will give the same response when asked again.

## Variables and Measurement
A **variable** is a *characteristic* that can vary in value among subjects in a sample or population. (A variation in observations across a data set.)

The values that a variable can take on are called the **measurement scale**. (e.g., Age: 0-100, Gender: M | F, Political Party Affiliation: Democrat | Republican | Independent | other,...)

**Quantitative**: measurement scale is numeric
- measured on an **interval scale** (there is an equal distance between each level)

**Categorical** (or **Qualitative**): measurement scale is a set of categories, measured on a *nominal* or *ordinal* scale
- **nominal scale**: no implicit ranking (e.g., ice cream flavors); *non-ordered categorical variable*: a categorical variable for which there is no natural ranking or ordering
- **ordinal scale**: implicit ranking (e.g., social class); *ordered categorical variable*: a categorical variable for which there is a natural ranking or ordering

**Discrete variables** may take values that form a finite set of separate numbers, such as 0, 1, 2, 3, ...

**Continuous variables** may take values along the infinite continuum of possible real number values.

> The statistical method used to analyze data depends on whether the variable is quantitative vs. categorical, or discrete vs. continuous

## Randomization

> The quality of any inferences you make from data depends critically on how well the sample represents the population.

### Simple Random Sample

A **simple random sample** of *n* subjects from a population is one in which each possible sample of that size has the same probability (chance) of being selected.

*n* denotes the number of subjects in the sample, or the **sample size**

How to select a simple random sample:
1. list all subjects in the population. This list is called the **sampling frame**.
2. number the subjects in the sampling frame
3. generate a set of the numbers randomly
4. sample the subjects whose numbers were generated, ensuring each subject has an equal chance of selection

> **Random numbers** are numbers that are computer generated according to a scheme whereby each digit is equally likely to be any of the integers 0, 1, 2, ... 9 and does not depend on the other digits generated.

Simple random sampling can be used to:
1. generate a sample of people to survey (random selection)
2. randomly assign people to treatment and control groups in an experiment (random assignment)

A **sample survey** is a data collection method where a sample of people are randomly selected from a population and interviewed. The interview could be an in-person interview, telephone interview (or online chat), or a self-administered questionnaire.

**Experiment**: a planned study, the purpose of which is to compare responses of subjects on some measurable outcome. The subjects are often exposed to different conditions, which may (or may not) have some impact on the outcome. The plan for assigning a subject to a treatment is called **experimental design**. Use of a randomization process to determine which treatment a subject receives is a best practice.

**Treatment**: a condition in the experimental study (e.g., receiving a real drug vs. receiving a placebo)

> **Caution!** observational studies often rely on sample data that were not randomly selected from the population of interest. <p> *What challenges arise when this happens?*

An **observational study** is a study in which data are self-reported by subjects. There is no random procedure in place.

Without any randomization we don't know the extent to which the people participating in the survey or the study actually represent the population of interest. There may be very systematic differences between the types of people that selected themselves into the study as compared to the broader overall population of interest. This raises reason to question whether or not the findings of the study can be generalized. There is also reason to think that the results may be biased one way or the other depending on the over or under representation of certain types of people in the data set compared to the population of interest.

## Sampling variability and potential bias

### Sampling Error
The **sampling error** of a statistic equals the error that occurs when we use a statistic based on a sample to predict the value of a population parameter.

In other words, it is the difference between the **sample statistic** and the true **population parameter**. In practice, the sampling error is unknown because the values of population parameters are unknown.

> For conclusions based on statistical inference to be worthwhile, we should know the potential **sampling error** -- how much the statistic differs from the parameter it predicts because of the way results naturally exhibit variation from sample to sample.

Rule of thumb: for sample sizes of about 1000, the sampling error for estimating percentages is usually no greater than +/- 3%. This is known as the **margin of error**.

### Sampling bias: non-probability sampling
In **probability sampling**, the probability that a person will be sampled from the population of interest in known.

In **non-probability sampling**, the probability that a person will be sampled from the population of interest is unknown.

- convenience samples
- volunteer samples

Non-probability samples result in **sampling bias** because they are not generally representative of the population of interest.

- undercoverage (under-representation)
- overcoverage (over-representation)

> Increasing sampling size does not improve sampling bias!

### Response and non-response bias
**Response bias** occurs when the subject gives an incorrect response (perhaps lying), or the question wording or the way the interviewer asks the questions is confusing or misleading.

**Nonresponse bias** occurs when some sampled subjects cannot be reached or refuse to participate or fail to answer some questions.

- those who refuse to be in-sample may be systematically different from those who do
- even those who comply with being in-sample often do not answer some questions, resulting in missing data

## Other probability sampling methods

### Systematic Random Sampling
1. denote the sample size by $n$ and the population size by $N$
2. let $k = \frac{N}{n}$, the population size divided by the sample size
3. a systematic random sample:
    1. selects a subject at random from the first $k$ names in the sampling frame, and
    2. selects every $k$th subject listed after that one
    3. the number $k$ is called the **skip number**

### Stratified Random Sampling
A stratified random sample divides the population into separate groups, called **strata**, and then selects a simple random sample from each stratum.

Two types:
- **Proportional**: groups are sampled in proportion with their overall population representations
- **Disproportional**: useful when some strata have small populations

### Cluster Sampling
Cluster sampling is useful when a complete listing of the population is not available. Or when the population is located in naturally occurring clusters.

Cluster sampling involves dividing the population of interest into a large number of **clusters**, such as city blocks... then selecting a simple random sample of the clusters. Subjects in those clusters are the sample.

# Descriptive Statistics

## Describing Data with Tables and Graphs
To describe quantitative data, we use measures of:
1. The center of data (to describe a typical observation, and what it looks like within a data set)
2. The variability of the data (the spread around the center for a particular variable)

To describe categorical data, we use measures of relative frequency: the *proportion* or *percentage* of the observations that fall into that category.

> Descriptive Statistics essentially describe the data, and there are two ways to do this
1. measures of central tendency
    - what are the most common or most likely values in the data set
    - median, mean, mode
2. measures of dispersion
    - variance or variability in the data set
    - variance, standard deviation, range

**Frequency distribution**: a listing of possible values for a variable, together with the number of observations at each value.

**Relative frequency distribution**: lists the possible values together with their proportions or percentages.

> Both frequency distributions and relative frequency distributions can be illustrated using a bar chart or pie chart.

Frequency distributions and graphs are also useful for quantitative variables.

For example, a complete listing of all values in a category with the number of observations per unit of data (e.g., list of states with violent crime rate measured per 10,000 population; measured on a continuous interval, and summarized by state).

If a quantitative variable is to be summarized and presented in value ranges, the intervals should be of equal width and mutually exclusive.

### Histogram
A **histogram** is a graph of a relative frequency distribution for a quantitative variable.
- information can be lost if too few intervals are used (the intervals are too wide)
- the objective is to get a good sense of how spread out the distribution is
- finding the optimal interval width often requires some exploration and experimenting
- there are some algorithms which can automatically find the optimal width

A plot used to summarize the distribution of responses for a quantitative continuous variable.
- where are the responses clustered?
- where are there more responses>
- where are there less responses?

**Frequency**: number of observations

Notes:
- implied ordering (along x axis, meaning range is small -> large traversing left -> right)
- bars touch which implies continuous values

### Stem and Leaf Plot
**Stem-and-leaf plots** represent each observation by its leading digits (the stem) and by its final digit (the leaf). What you see is a picture of the distribution of the data.
- same shape as a histogram, but displays the value of each observation, thereby preserving information that is typically lost in a Histogram
- useful for quick portrayals of small data sets; larger data sets may require splitting the stem

Stem-and-leaf plots can also provide a visual comparison of two small samples on a quantitative variable. (Display them side-by-side, with the stem in the middle and each set of leaves either side.)

### Population Distribution and Sample Data Distribution
Frequency distributions and histograms can be used to describe population-level data (called population histograms) and to data sampled from a population (called sample data distributions).

As long as the sample data are randomly selected from the population, the sample distribution will look closer to the true population distribution as the sample size increases.

For a continuous variable, we can think of a histogram with very narrow ranges. As sample size increases (e.g., from 100 to 500), the variable may take on many different values within a continuous range. We can approximate these distributions using a smooth curve. With increased sample size we will get a relatively smoothed distribution of the sample data over the continuous range of possible values.

Sample and population distributions may take on any shape; it depends on how the variable is distributed across the data at which you are looking. These may result in shapes such as a U-shape or a bell-shape. A U-shape curve generally reflects something like polarized opinion on a value-based question. A bell-shape curve occurs when most observations tend to cluster towards one central value.

Distributions may be symmetric around a central value. However, most real distributions are not symmetric. The parts of the curve for the lowest and highest values are called the **tails** of the distribution. A distribution is said to be **skewed** to the right or left according to which tail is longer.

## Describing The Center of The Data

### The Mean
The most common measure of the center of data is the **mean**, or the **average**. The mean is only applicable to quantitative variables. We obtain the mean by summing the observations and dividing by the total number of observations.

Notation:
- the sample size is denoted by $n$
- observations are denoted by $y_{1}, y_{2}, ..., y_{n}$
- the sample mean is denoted by $\bar{y}$
- the sample mean is defined as:<br>
$$\bar{y}=\frac{y_{1} + y_{2} + ... + y_{n}}{n}$$
- to simplify:<br>
$$\sum y{i} = y_{1} + y_{2} + ... + y_{n}$$
- so, by substitution we obtain:<br>
$$\bar{y} = \frac{\sum y{i}}{n}$$

Properties:
- the mean can only be calculated for quantitative variables, not qualitative nominal variables
- taking the mean of an ordinal dichotomous (0, 1) variable provides the proportion of observations where the variable value = 1
- the mean can be highly influenced by **outliers**, which are observations well above or below the mean
- outliers tend to have the most influence in small samples with skewed distributions

Effects of an outlier:
- the mean is pulled in the direction of the longer tail of a skewed distribution, relative to most of the data
- the more skewed the distribution, the less typical the mean is of the data
- the mean is the *point of balance* on the number line when an equal weight is at each observation point
- the mean is the center of gravity, and the sum of the distances to the mean from observations above the mean is equal to the sum of distances to the mean from observations below the mean

### Weighted Average
Denote the sample means for two sets of data with (different) sample sizes $n_{1}$ and $n_{2}$ by $y_{1}$ and $y_{2}$. The mean across the two samples must be weighted to account for the different sample sizes.

The weighted average is given by:<br>
$$\bar{y} = \frac{n_{1}\bar{y_{1}} + n_{2}\bar{y_{2}}}{n_{1} + n_{2}}$$

### The Median
The **median** is the observation that falls in the middle of the ordered sample. When the sample size $n$ is odd, a single observation occurs in the middle. When the sample size is even, two middle observations occur, and the median is the midpoint between the two. When a distribution is highly skewed, the median describes a typical value better than the mean.

Rank order the data by the values of the observation, low to high or high to low. The median is the value of observation $(n+1)/2$. When $n$ is even, the value falls halfway between two numbers. Essentially, we need to find the 50th percentile.

Properties:
- the median is appropriate for quantitative and ordinal-scale qualitative variables, not nominal-scale variables
- for symmetric distributions, the mean is equal to the median
- for skewed distributions, the mean lies toward the direction of the skew relative to the median
- the median is insensitive to distances of observations in the middle
- the median is not affected by outliers

Median compared to Mean
- for discrete data with few values, very different data patterns have the same median
- "shifting" of a large amount of values from one end of the value spectrum to the other has no affect on the median, but dramatically changes the mean
- the median is least informative with binary data, because it takes on the most common value (0 or 1) without providing information on the proportion of observations in each category
- however, with binary data, the mean is equal to the proportion of observations that equal 1

### The Mode
The mode is the value that occurs most frequently and is useful for describing highly discrete data. It can be used to describe nominal and ordinal qualitative data, as well as quantitative data. Frequency distributions are called bimodal if two distinct modes occur. The mean, median, and mode are identical for unimodal, symmetric distributions.

> **bimodal** |bīˈmōdl|<br>
*adjective*<br>
having or involving two modes, in particular (of a statistical distribution) having two maxima.

## Describing The Variability of The Data

### The Range
Measure of center (e.g., mean, median, mode) do not provide information about the spread of the data around the typical value. The simplest way to capture this information is through the **range**, the difference between the largest and smallest observations. The range does not, however, capture information about how the data vary around the center. No information about the shape of the data (distribution).

### Standard Deviation
The **standard deviation** is based on deviations of the data from a measure of center, like the mean. The deviation of observation $y_{i}$ from the sample mean $\bar{y}$ is $(y_{i} - \bar{y})$, the difference between them.

The deviation is positive when the observation falls above the mean, and negative when the observation falls below the mean.

The sum of deviations around the mean, $\sum (y_{i} - \bar{y})$, equals 0. Because of this, the most popular measure of variability use the absolute values of the deviations, or square the deviations. The expression $\sum (y_{i} - \bar{y})^2$ is the "sum of squares."

The **standard deviation** $s$ of $n$ observations is:
$$s = \sqrt{\frac{\sum (y_{i} - \bar{y})^2}{n - 1}}$$

This is the positive square root of the **variance** $s^2$, which is:
$$s^2 = \frac{\sum (y_{i} - \bar{y})^2}{n - 1} = \frac{(y_{1} - \bar{y})^2 + (y_{2} - \bar{y})^2 + ... + (y_{n} - \bar{y})^2}{n - 1}$$

Properties:
- the standard deviation $s \geq 0$
- $s = 0$ only when all observations have the same value, because then each value of $y_{i}$ is equal to $\bar{y}$ and thus:
$$s^2 = \frac{\sum (y_{i} - \bar{y})^2}{n - 1} = \frac{(y_{1} - \bar{y})^2 + (y_{2} - \bar{y})^2 + ... + (y_{n} - \bar{y})^2}{n - 1} = 0$$
- the greater the variability around the mean, the larger is the value of $s$
- the standard deviation is reported in the same units as the variable (e.g., dollars, number of people, percentages) and if the variable is re-scaled, the standard deviation is also re-scaled.

Interpreting the magnitude of $s$:
- the standard deviation provides the typical distance between a given observation and the mean
- how large $s$ is depends on the distribution of the data. We have a nice rule for interpreting standard deviations in the case of a bell-shaped normal distribution of the sample data.

**Empirical Rule**:<br>
If the histogram of the data is approximately bell-shaped, then:
1. about 68% of the observations fall between $\bar{y} + s$ and $\bar{y} - s$
2. about 95% of the observations fall between $\bar{y} \pm 2s$
3. all or nearly all observations fall between $\bar{y} \pm 3s$

Additional notes:
- if the smallest or largest observation is less than a standard deviation from the mean, this is evidence of severe skew
- the standard deviation can be greatly affected by an outlier, especially in small data sets

## Measures of Position
(read chapter 3.4)

## Bivariate Descriptive Statistics

### Association between Response and Explanatory Variables

An analysis of association between two variables is called a **bivariate** analysis, because there are two variables. Usually, one variable is called the **response** or **outcome** variable. This variable can also be called the **dependent** variable. The other variable is called the **explanatory** or **independent** variable.

Usually we define the outcome and explanatory variables according to some theoretical framework. For example, we could look at how ethnic group (the explanatory variable) explains variation in religious affiliation (the outcome or response variable).

> If we are interested in the relationship between two variables, we think of one explaining variation in the other, but not the other way around. "a influences b, but b does not influence a"

Think: how does the variation in something explain the outcome of something else?

### Comparing Two Groups is a Bivariate Analysis
*Bivariate Analysis Using Categorical Data*

Example 1: comparing average number of friends (response variable, categorical) by gender (explanatory variable, categorical); our gender influences the number of friends we have, but the number of friends we have does not influence our gender.

Example 2: opinions about homosexuality and religion

A **contingency table** displays how outcomes of a response variable are contingent on -- or vary with-- an explanatory variable.

*Bivariate Analysis Using Quantitative Data*
- when both variables are quantitative, it may be useful to display data using a **scatterplot**, because the data are not easily divided into categories
- values of the response variable are plotted on the vertical axis (y-axis), and values of the explanatory variable are plotted on the horizontal axis (x-axis)
- there are two ways to describe the linear association between two quantitative variables: **correlation** and **regression**

#### Regression Analysis
**Regression Analysis** provides a straight-line formula for predicting the value of the response variable from a given value of the explanatory variable. This is in the form $y = mx+b$, where $y$ is the response variable, $x$ is the explanatory variable, $m$ is the slope of the line, and $b$ is the intercept (the value of $y$ when $x=0$).

Note:
- a linear relationship between two variable does not imply anything about a causal relationship between the two
- the bivariate (two-variable) analysis can be extended to multiple variables. For example, we might want to examine how cell phone use and GDP are related to fertility

## Sample Statistics and Population Parameters

-----

## Bar Plot
- for categorical data
- for ordinal or nominal data

## Scatter Plot
plot the relationship between two variables


-----

# Appendix

## Recoding Variables
- sometimes necessary to recode some values
- need to recode some values to "missing"

Need to identify the cases
- consult a code book or data description which identifies value ranges
- start with the R `summary()` function
- then look closer at specific variables with `table()` function

Need to know how to recode
- load the `car` library
- use the `recode()` function
- provide the recoding rule in second parameter
- e.g., `recode(data$column,"c(-1,-2)=NA")`
- note: `c()` means *combine* in R

Another approach:
- set the values using a directive
- e.g., `data$column2[data$column == -1] = NA`
- note that we can use logical operators within the brackets to do more complex selections
- basically, the expression in the brackets will return a set of row indexes that meet the condition
