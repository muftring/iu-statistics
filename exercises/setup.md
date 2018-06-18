# Setup R

1. download and intall R
2. download and install R Studio

# Install R Packages
- readr
- Rcpp
- DescTools
- car

# Install R kernel for Jupyter
[Reference](https://github.com/IRkernel/IRkernel)<br>

In R Studio, execute the following:
```
install.packages('devtools')
devtools::install_github('IRkernel/IRkernel')
# or devtools::install_local('IRkernel-master.tar.gz')
IRkernel::installspec()  # to register the kernel in the current R installation
```

Notes:
1. launch an *Anaconda Terminal* (this will have all the appropriate paths in the environment)
1. launch *R Studio* from that Terminal
    - `"C:\Program Files\RStudio\bin\rstudio.exe"`
1. launch *Atom*  from that Terminal
    - `atom`
