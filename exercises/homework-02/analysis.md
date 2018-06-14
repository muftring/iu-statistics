# Analysis

## 1. Ohio School Districts
Using the SCHOOLS.CSV data set which contains data on a sample of school districts in Ohio.

- ( a ) Find the mean, median, mode, range, variance, and standard deviation for the variables: Number of Students (Students), the Percent of Families Receiving Welfare (Welfare), the Amount Spent per Pupil (Instruct), and Average Instructor Salary (Salary).<p>
- ( b ) Create a new variable called “AmtPerPupil_StdScore” which is equal to the Amount Spent per Pupil (Instruct) converted to standard scores (i.e., z-scores) and print out the original and new variable values.  Then interpret the highest and lowest values for the Amt_Per_Pupil_Std_Score.<p>
- ( c ) Create a plot where you overlay the normal curve on a histogram for average instructor salary (hint: to do this, you will need to use the curve and dnorm functions in R as demonstrated in the tutorial video). Be sure to add appropriate label axes and other elements necessary to enhance the readability of your graph. After constructing your plot, discuss any similarities or differences you observe between the observed distribution for instructor salary and the normal distribution.<p>

## 2. Baltimore Longitudinal Study of Aging
This data set is named:  BLSA.csv, which is a text file available from Canvas. The variables in this data set are, in order, subject number, sex, age, smoker, systolic blood pressure (SBP), diastolic blood pressure (DBP), height, and weight for a random sample of 720 adults. Ages are given in years, blood pressure readings are in millimeters of mercury, heights are given in centimeters, and weights are given in kilograms. Male gender is indicated with a value of M and female gender with a value of F. A smoker is given a value of Y and a non-smoker a value of N.

- ( a ) Construct a 95% confidence interval for the mean diastolic blood pressure of all males. Interpret the results.<p>
- ( b ) Construct a 99% confidence interval for the proportion of males that smoke. Interpret the results.<p>
- ( c ) Construct a 90% confidence interval for the mean systolic blood pressure of all females who are over 30 years old. Interpret the results.<p>
- ( d ) Test the claim, at the .05 level of significance, that males who are 50 and older have a mean systolic blood pressure that is greater than the mean systolic blood pressure for all men. Use the p-value method.<p>
- ( e ) Test the claim, at the .01 level, that females who have lower weight than the mean weight of all females also have a lower mean systolic blood pressure than the average female. Use the p-value method.<p>
