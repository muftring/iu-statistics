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

# Statistical Analysis: Key Terms
- **Population**: total set of subject of interest in a study
- **Sample**: subset of the Population on which the study collects data
- **Descriptive Statistics**: summarize the data using graphs, tables and numbers
- **Inferential Statistics**: use data to make predictions about a Population, using sample data
- **Parameter**: a numerical summary of the Population
- **Statistic**: a numerical summary of the sample data

# Sampling and Measurement

## Variables and Measurement
A **variable** is a *characteristic* that can vary in value among subjects in a sample or population. A variation in observations across a data set.

The values that a variable can take on are called the **measurement scale**. (e.g., Age: 0-100, Gender: M | F, Political Party Affiliation: Democrat | Republican | Independent | other,...)

**Quantitative**: measurement scale is numeric
- measured on an **interval scale** (there is an equal distance between each level)

**Qualitative** (or **Categorical**): measurement scale is a set of categories
- non-ordered categorical variable: a categorical variable for which there is no natural inherent ranking or ordering
- measured on a *nominal* or *ordinal* scale
- **nominal scale**: no implicit ranking (e.g., ice cream flavors)
- **ordinal scale**: implicit ranking (e.g., social class)

**Discrete variables** may take values that form a set of separate numbers, such as 0, 1, 2, 3, ...

**Continuous variables** may take values along the infinite continuum of possible real number values.

> The statistical method used to analyze data depends on whether the variable is quantitative vs. categorical, or discrete vs. continuous

## Randomization

> The quality of any inferences you make from data depends critically on how well the sample represents the population.

### Simple Random Sample

A **simple random sample** of *n* subjects from a population is one in which each possible sample of that size has the same probability (chance) of being selected.

*n* denotes the number of subjects in the sample, or the sample size

How to select a simple random sample:
1. list all subjects in the population. This list is called the **sampling frame**.
2. number the subjects in the sampling frame
3. generate a set of the numbers randomly
4. sample the subjects whose numbers were generated, ensuring each subject has an equal chance of selection

> **Random numbers** are numbers that are computer generated according to a scheme whereby each digit is equally likely to be any of the integers 0, 1, 2, ... 9 and does not depend on the other digits generated.

Simple random sampling can be used to:
1. generate a sample of people to survey (random selection)
2. randomly assign people to treatment and control groups in an experiment (random assignment)

> **Caution!** observational studies often rely on sample data that were not randomly selected from the population of interest. <p> *What challenges arise when this happens?*

An **observational study** is a study in which data are self-reported by subjects. There is no random procedure in place.

Without any randomization we don't know the extent to which the people participating in the survey or the study actually represent the population of interest. There may be very systematic differences between the types of people that selected themselves into the study as compared to the broader overall population of interest. This raises reason to question whether or not the findings of the study can be generalized. There is also reason to think that the results may be biased one way or the other depending on the over or under representation of certain types of people in the data set compared to the population of interest.

## Sampling variability and potential bias

### Sampling Error
The **sampling error** of a statistic equals the error that occurs when we use a statistic based on a sample to predict the value of a population parameter.

In other words, it is the difference between the **sample statistic** and the true **population parameter** (often unknown).

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
