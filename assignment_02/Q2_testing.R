
################################################################################
#
# QMB 6358: Software Tools for Business Analytics
# Testing a Library of R Functions
#
# Name:
# College of Business Administration
# University of Central Florida
#
# Date:
#
################################################################################
#
# This program tests a library of R functions.
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

# Set working directory, if calling from another location.
# wd_path <- '~/path/to/your/repo/assignment_02'
# setwd(wd_path)


# Load your source code for the library of functions.
source("Q1_functions.R")
# Be sure that this library is located in the working directory.
# Otherwise, you can include the path.


################################################################################
# Testing Functions
################################################################################


print("Testing function sum_sq_dev:")

# Check values that are output.
print(sum_sq_dev(x = c(0, 0, 0), mu = 0))
# Test output against expected answer.
print(sum_sq_dev(x = c(0, 0, 0), mu = 0) == 0)

# Add more examples.





print("Testing function covar_y_x:")

# Check values that are output.
print(covar_y_x(x = c(0, 0, 0), mu = c(0, 0, 0)))
# Test output against expected answer.
print(covar_y_x(x = c(0, 0, 0), mu = c(0, 0, 0)) == 0)

# Add more examples.




print("Q1 library testing complete.")



################################################################################
# End
################################################################################


