# Normal Distributions in R

## `rnorm(n, mean, sd)`
draw a random set of numbers
- `n` : number of observations. If length(n) > 1, the length is taken to be the number required.
- `mean` : mean
- `sd` : standard deviation

picking random numbers from an underlying distribution (specified by `mean` and `sd`)

Example:<br>
`rnorm(500, 5, 1)`

useful to compare some set of observations with a random sample drawn from the same underlying population, assuming a normally distributed

## `pnorm(q, mean, sd)`
what is the probability we would get a certain value?
- `q` : what is the value drawn?

Example:<br>
`pnorm(5, 5, 1)`

what portion of obs are smaller than (i.e., to the left) the number we have drawn, `q`, given the normal distribution defined by `mean` and `sd`

use the parameter `lower.tail=False` to swtich and see how many observations are larger than the one drawn

```
> pnorm(5, 5, 1)
[1] 0.5
> pnorm(c(5, 6, 4), 5, 1)
[1] 0.5000000 0.8413447 0.1586553
> pnorm(7, 5, 1)
[1] 0.9772499
```

## `qnorm(p, mean, sd)`
given a probability, what is the value at that percentile?
- `p` : probability

if we want to figure out the value associated with a certain percentile

```
> qnorm(0.95, 5, 1)
[1] 6.644854
> qnorm(0.50, 5, 1)
[1] 5
```

## `dnorm(x, mean, sd)`
compare our variable to a normal curve

- `x`: (vector) value - always just specify this as 'x'

Example:
```
> library(car)
> View(Salaries)
> hist(Salaries$salary)
```

### overlay a normal distribution

```
hist(Salaries$salary, prob=T)
```

the `prob=T` parameter changes the y-axis to show the density, what portion of the observations lie at each of these values (note: the y-axis values are no longer easily interpretable)

`curve()` - draw a curve on top of a histogram

```
> hist(Salaries$salary, prob=T)
> curve(dnorm(x, mean(Salaries$salary, na.rm=T), sd(Salaries$salary, na.rm=T)),add=T)
```

Pretty up the plots:
```
> hist(Salaries$salary, prob=T, main="Professor Salaries", xlab = "Salary", col="gray75")
> curve(dnorm(x, mean(Salaries$salary, na.rm=T), sd(Salaries$salary, na.rm=T)),add=T,col="red",lwd=2)
```
