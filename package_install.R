#this code is to hopefully install the package MSeasy on NCI

#if error, then install dependencies
source("https://bioconductor.org/biocLite.R")
biocLite(c("mzR", "fpc", "xcms"))

#then install package itself
install.packages("MSeasy", repos = "https://cran.csiro.au/")


