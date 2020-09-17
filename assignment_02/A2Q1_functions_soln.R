
################################################################################
#
# QMB 6358: Software Tools for Business Analytics
# Library of R Functions for Assignment 2
#
# Name:
# College of Business Administration
# University of Central Florida
#
# Date:
#
################################################################################
#
# This program is a library of R functions for Assignment 2.
#
#
#
################################################################################



################################################################################
# Load Packages
################################################################################

# Load any packages that are needed for these functions.
# library(package_name_goes_here)

# You would typically install the package first,
# instead of within the library.
# install.packages("package_name_goes_here")


################################################################################
# Functions
################################################################################

#--------------------------------------------------------------------------------
# First function: Sum of squared deviations
#--------------------------------------------------------------------------------

# Function definition goes here.
# This version with a loop:
sum_sq_dev <- function(x, mu){

  sum <- 0
  for (i in 1:length(x)){
    sum <- sum + (x[i] - mu)^2
  }

  return(sum)
}


#--------------------------------------------------------------------------------
# Second function: Covariance between two variables
#--------------------------------------------------------------------------------

# Function definition goes here.
# This version with vector operations:
covar_y_x <- function(y, x){

  # Some of you had error handling:
  if(length(x) != length(y)) {
    stop('x must have the same length as y')
  }

  n <- length(x)
  y_bar <- mean(y)
  x_bar <- mean(x)

  covar <- sum((y - y_bar)*(x - x_bar))/n

  return(covar)
}




################################################################################
# End
################################################################################


