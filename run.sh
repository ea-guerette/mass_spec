#!/bin/bash
#PBS -P ui08
#PBS -q normal
#PBS -N mass_spec
#PBS -l walltime=1:00:00
#PBS -l mem=20000MB
#PBS -l cput=1:00:00
#PBS -l wd
#PBS -l ncpus=1
#PBS -j oe

# -P group ui08 (elise) running process
# -q run on normal queue
# -N Process named mass_spec
# walltime take up to 16 hrs
# mem using up to 20GB ram
# cput use up to 16 hrs cpu processing time
# wd run in working directory, 
# ncpus use just 1 cpu
# oe output and error streams combined

# could add this and #PBS -l ncpus=4
#setenv OMP_NUM_THREADS $PBS_NCPUS


# load modules needed for R to work?
# list from /apps/R/3.3.0/README.nci
module unload intel-fc
module unload intel-cc
module unload intel-mkl
module unload openmpi
module load intel-fc/16.0.3.210
module load intel-cc/16.0.3.210
module load intel-mkl/16.0.3.210 
module load openmpi/1.10.2
module load java/jdk1.8.0_60
module load zlib/1.2.8
module load bzip2/1.0.6
module load xz/5.2.2
module load pcre/8.38
module load curl/7.49.1

# load R module
module load R/3.3.0

## Run the scripts
# First run the package_install - adds stuff to ~/R/... folder
# (should only be needed once)
#Rscript package_install.R

# then run the instructions.R
Rscript instructions.R
#R <<END
#
#require(MSeasy)
#
##we will have to set up the directory - not sure how it works on NCI - the command is setwd("C:/")
#
##to load in data matrix: 
#load("cataract_201803.RData")
##you can now run Step 2
#
#MS.clust(mydata, quant = TRUE, clV = TRUE, ncmin = 10, ncmax = 5000, varRT = 60, disMeth = "euclidian", linkMeth = "ward", clustMeth = "hierarchical")
#1
#
#END
