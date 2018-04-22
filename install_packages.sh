#!/bin/bash

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
#


# Run the package_install script
# (should only be needed once)
Rscript package_install.R

