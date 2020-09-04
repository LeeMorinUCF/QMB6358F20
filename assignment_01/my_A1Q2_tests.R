
################################################################################
#
# QMB 6358: Software Tools for Business Analytics
# Testing Library of R Functions for Assignment 1, Question 2
#
# Lealand Morin, Ph.D.
# Assistant Professor
# Department of Economics
# College of Business Administration
# University of Central Florida
#
# September 3, 2020
#
################################################################################
#
# This program tests a library of R functions.
# Your answers to the exercises will be tested in the functions calls below.
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
# wd_path <- '~/Teaching/QMB6358_Fall_2020/GitRepos/QMB6358F20/demo_06_function_design'
# setwd(wd_path)


# Load your source code for the library of functions.
source("my_A1Q2_functions.R")
# Be sure that this library is located in the working directory.
# Otherwise, you can include the path.


################################################################################
# Testing Functions
################################################################################


################################################################################
# Running the tests
################################################################################



#--------------------------------------------------------------------------------
# Example 1
#--------------------------------------------------------------------------------


print("Testing function multiply_two:")


# multiply_two(num_1 = 5, num_2 = 7)
multiply_two(5, 7)
# multiply_two(num_1 = 99, num_2 = 1)
multiply_two(99, 1)
# multiply_two(num_1 = 10, num_2 = 10)
multiply_two(10, 10)
# multiply_two(num_1 = 1, num_2 = 1)
multiply_two(1, 1)


#--------------------------------------------------------------------------------
# Example 2
#--------------------------------------------------------------------------------


print("Testing function is_it_5_or_6:")


# is_it_5_or_6(num_in = 4)
is_it_5_or_6(4)
# is_it_5_or_6(num_in = 5)
is_it_5_or_6(5)
# is_it_5_or_6(num_in = 6)
is_it_5_or_6(6)
# is_it_5_or_6(num_in = 100)
is_it_5_or_6(100)


#--------------------------------------------------------------------------------
# Example 3
#--------------------------------------------------------------------------------


print("Testing function color_by_number:")


# color_by_number(num_in = 10)
color_by_number(10)
# color_by_number(num_in = -3)
color_by_number(-3)
# color_by_number(num_in = 25)
color_by_number(25)
# color_by_number(num_in = 29)
color_by_number(29)


#--------------------------------------------------------------------------------
# Example 4
#--------------------------------------------------------------------------------


print("Testing function multiples_of_5:")


# multiples_of_5(num_5_limit = 2)
multiples_of_5(2)
# multiples_of_5(num_5_limit = 17)
multiples_of_5(17)
# multiples_of_5(num_5_limit = 20)
multiples_of_5(20)
# multiples_of_5(num_5_limit = 26)
multiples_of_5(26)


#--------------------------------------------------------------------------------
# Example 5
#--------------------------------------------------------------------------------


print("Testing function count_even_numbers:")


# count_even_numbers(end_num = 10)
count_even_numbers(10)
# count_even_numbers(end_num = 100)
count_even_numbers(100)
# count_even_numbers(end_num = 0)
count_even_numbers(0)
# count_even_numbers(end_num = 21)
count_even_numbers(21)


#--------------------------------------------------------------------------------
# Example 6
#--------------------------------------------------------------------------------

print("Testing function summarize_5_numbers:")

# summarize_5_numbers(num_1 = 1, num_2 = 1, num_3 = 1, num_4 = 1, num_5 = 1)
summarize_5_numbers(1, 1, 1, 1, 1)
# summarize_5_numbers(num_1 = 1, num_2 = 2, num_3 = 3, num_4 = 4, num_5 = 5)
summarize_5_numbers(1, 2, 3, 4, 5)
# summarize_5_numbers(num_1 = 1, num_2 = 7, num_3 = 20, num_4 = 3, num_5 = 4)
summarize_5_numbers(1, 7, 20, 3, 4)



print("my_script complete.")



################################################################################
# End
################################################################################


