#this code is to hopefully install the package MSeasy on NCI

#check whether the package is there by trying to load it:
require(MSeasy)


#if error, then install dependencies
source("https://bioconductor.org/biocLite.R")
biocLite(c("mzR", "fpc"))

#then install package itself
install.packages("MSeasy", repos = "https://cran.csiro.au/")


