
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
source("A2Q1_functions_soln.R")
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
# Because 0 + 0 + 0 = 0

# Add more examples.

print(sum_sq_dev(x = c(2, 4, 6, 8), mu = 5))
print(sum_sq_dev(x = c(2, 4, 6, 8), mu = 5) == 20)
# Because 3^2 + 1^2 + 1^2 + 3^2 = 9 + 1 + 1 + 9 = 20

# Test with mu != mean(x):
print(sum_sq_dev(x = c(9, 8, 7), mu = 10))
print(sum_sq_dev(x = c(9, 8, 7), mu = 10) == 14)
# Because 1^2 + 2^2 + 3^2 = 1 + 4 + 9 = 14


# What happens if a value is missing?
print(sum_sq_dev(x = c(9, 11, NA), mu = 10))
print(sum_sq_dev(x = c(9, 11, NA), mu = 10) == 2)
# Because 1^2 + (-1)^2 = 1 + 1 = 2
# Did it work?


print("Testing function covar_y_x:")

# Check values that are output.
print(covar_y_x(y = c(0, 0, 0), x = c(0, 0, 0)))
# Test output against expected answer.
print(covar_y_x(y = c(0, 0, 0), x = c(0, 0, 0)) == 0)
# Because 0 + 0 + 0 = 0

# Add more examples.

print(covar_y_x(x = c(5, 10, 15), y = c(10, 20, 30)))
print(covar_y_x(x = c(5, 10, 15), y = c(10, 20, 30)) == 33.333)
# Because ( (-5)*(-10) + (0)*(0) + (5)*(10) )/3 = (50 + 0 + 50)/3 = 100/3 = 33.333
# Anything wrong?


print(covar_y_x(x = c(4, 2, 7), y = c(4, 3, 6)))
print(covar_y_x(x = c(4, 2, 7), y = c(4, 3, 6)) == 2.555556)
# Anything wrong?


print("Q1 library testing complete.")



################################################################################
# End
################################################################################


