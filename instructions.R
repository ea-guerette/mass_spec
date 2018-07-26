require(MSeasy)

#we will have to set up the directory - not sure how it works on NCI - the command is setwd("C:/")

#to load in data matrix: 
load("data/all4.RData")
#you can now run Step 2

mydata <- subset(mydata, retention_time >6 & retention_time <40)

#MS.clust(mydata, quant = TRUE, clV = TRUE, ncmin = 10, ncmax = length(mydata$analysis)-1, varRT = 2, disMeth = "euclidian", linkMeth = "ward", clustMeth = "hierarchical")

MS.clust(mydata, quant = TRUE, clV = F, Nbc = 216, varRT = 2, disMeth = "euclidian", linkMeth = "ward", clustMeth = "hierarchical")
