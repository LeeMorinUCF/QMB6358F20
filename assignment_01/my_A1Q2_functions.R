
################################################################################
#
# QMB 6358: Software Tools for Business Analytics
# Library of R Functions for Assignment 1, Question 2
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
# This program provides an example of a library of R functions.
# You will need to enter your answers to the exercises in the functions defined below.
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
# Then load the library:
# library(package_name_goes_here)


################################################################################
# Functions
################################################################################



#--------------------------------------------------------------------------------
# Example 1
#--------------------------------------------------------------------------------

multiply_two <- function(num_1, num_2) {


  # Code goes here:
  product_out <- num_1 * num_2

  return(product_out)
}

#--------------------------------------------------------------------------------
# Example 2
#--------------------------------------------------------------------------------

is_it_5_or_6 <- function(num_in) {

  # Code goes here:
  if (num_in == 5 | num_in == 6) {

    message_5_or_6 <- "your number is a 5 or 6"

  } else {

    message_5_or_6 <- "your number is not 5 or 6"

  }

  return(message_5_or_6)
}

#--------------------------------------------------------------------------------
# Example 3
#--------------------------------------------------------------------------------

color_by_number <- function(number_for_color) {

  # Code goes here:
  if (number_for_color >= 0 & number_for_color <= 10) {
    color_number <- "Blue"
  } else if (number_for_color >= 10 & number_for_color <= 20) {
    color_number <- "Red"
  } else if (number_for_color >= 20 & number_for_color <= 30) {
    color_number <- "Green"
  } else {
    color_number <- "NA"
  }

  return(color_number)
}

#--------------------------------------------------------------------------------
# Example 4
#--------------------------------------------------------------------------------

multiples_of_5 <- function(num_5_limit) {

  # Start with an empty list.
  list_of_numbers <- NULL
  # Append the new multiples of 5 one-by-one:
  for (num in 1:num_5_limit) {
    if(num %% 5 == 0)
      list_of_numbers <- c(list_of_numbers, num)
  }

  return(list_of_numbers)
}


#--------------------------------------------------------------------------------
# Example 5
#--------------------------------------------------------------------------------

count_even_numbers <- function(end_num) {

  # Initialize count.
  count_even_numbers <- 0
  # Add to count for each even number
  for (num in 1:end_num) {
    if(num %% 2 == 0)
    {
      count_even_numbers = count_even_numbers + 1
    }
  }

  return(count_even_numbers)
}

#--------------------------------------------------------------------------------
# Example 6
#--------------------------------------------------------------------------------

summarize_5_numbers <- function(num_1, num_2, num_3, num_4, num_5) {


  num_list <- c(num_1, num_2, num_3, num_4, num_5)

  # Calculate max:
  my_min <- num_1
  for (i in 2:length(num_list)) {

    num_i <- num_list[i]

    if (num_i < my_min) {
      my_min <- num_i
    }
  }


  # Calculate average:
  my_avg <- sum(num_list)/5

  # Calculate max:
  my_max <- num_1
  for (i in 2:length(num_list)) {

    num_i <- num_list[i]

    if (num_i > my_max) {
      my_max <- num_i
    }
  }


  # Collect them into one list for output.
  summarize_5_numbers <- c(min = my_min, avg = my_avg, max = my_max)

  return(summarize_5_numbers)
}




################################################################################
# End
################################################################################


