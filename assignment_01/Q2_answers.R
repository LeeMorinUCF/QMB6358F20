
################################################################################
#
# QMB 6358: Software Tools for Business Analytics
# Assignment 1, Question 2:
# Drafting Code for Functions
#
# Name:
# Executive Development Center
# College of Business Administration
# University of Central Florida
#
# Date:
#
################################################################################
#
# This program defines the commands for a library of functions.
#
#
#
################################################################################

# Load packages, if you need any.
# library(name_of_R_package_goes_here)


################################################################################
# Functions
################################################################################


#--------------------------------------------------------------------------------
# Example 1
#--------------------------------------------------------------------------------

num_1 <- 3
num_2 <- 6


# Code goes here:
product_out <- num_1 * num_2

print(product_out)


#--------------------------------------------------------------------------------
# Example 2
#--------------------------------------------------------------------------------

num_in <- 7

# Code goes here:
message_5_or_6 <- NA

# First attampt.
# message_5_or_6 <-
#   if (num_in == 5 | num_in == 6)
#     print("your number is a 5 or 6")
# else
#   print("your number is not 5 or 6")


if (num_in == 5 | num_in == 6) {

  print("your number is a 5 or 6")

} else {

  print("your number is not 5 or 6")

}
# By assignment.
message_5_or_6 <- if (num_in == 5 | num_in == 6) {

  print("your number is a 5 or 6")

} else {

  print("your number is not 5 or 6")

}


# Better: Assign the values inside.
if (num_in == 5 | num_in == 6) {

  message_5_or_6 <- "your number is a 5 or 6"

} else {

  message_5_or_6 <- "your number is not 5 or 6"

}



print(message_5_or_6)


#--------------------------------------------------------------------------------
# Example 3
#--------------------------------------------------------------------------------

number_for_color <- 27

# Code goes here:
color_number <- NA

# Code goes here:
if (any(number_for_color == 0:10)) {
  print("Blue")
} else if (any(number_for_color == 10:20)) {
  print("red")
} else if (any(number_for_color == 20:30)) {
  print("Green")
} else {
  print("NA")
}


number_for_color <- 11.5

# Code goes here:
if (any(number_for_color == 0:10)) {
  color_number <- "Blue"
} else if (any(number_for_color == 10:20)) {
  color_number <- "red"
} else if (any(number_for_color == 20:30)) {
  color_number <- "Green"
} else {
  color_number <- "NA"
}





number_for_color <- 11.5

# Code goes here:
if (number_for_color >= 0 & number_for_color <= 10) {
  color_number <- "Blue"
} else if (number_for_color >= 10 & number_for_color <= 20) {
  color_number <- "red"
} else if (number_for_color >= 20 & number_for_color <= 30) {
  color_number <- "Green"
} else {
  color_number <- "NA"
}


print(color_number)


#--------------------------------------------------------------------------------
# Example 4
#--------------------------------------------------------------------------------

num_5_limit <- 23


# Code goes here:
for (num in list_goes_here) {

  # Code goes here:

}

# One way: element-by-element test that it is a multiple of 5:
num_5_limit <- 23
for (num in 1:num_5_limit) {
  if(num %% 5 == 0)
    print(num)

}

# Another way: Collect them into a vector with c().
# Start with an empty list.
list_of_numbers <- NULL
# Append the new multiples of 5 one-by-one:
for (num in 1:num_5_limit) {
  if(num %% 5 == 0)
    list_of_numbers <- c(list_of_numbers, num)
}



# Another way: Select elements from vector that are multiples of 5:
num_5_limit <- 23
list_from_1_to_limit <- 1:num_5_limit
list_of_numbers <- list_from_1_to_limit[list_from_1_to_limit %% 5 == 0]

# The logical values inside the [] will select only the ones
# for which the condition (list_from_1_to_limit %% 5 == 0) is TRUE.


# One more way: Using a built-in function seq()
# seq() generates a sequence of numbers. See help(seq)
list_of_numbers <- seq(0, num_5_limit, by = 5)
# But: Need to drop the first one (didn't say to include zero)
if (abs(num_5_limit) < 5) {
  list_of_numbers <- NA
} else {
  list_of_numbers <- list_of_numbers[2:length(list_of_numbers)]
  # The [] operator selects the elements with those numbers.
}
# That was more complicated to remove the zero.
# The previous solutions are easier to understand.



print(list_of_numbers)


#--------------------------------------------------------------------------------
# Example 5
#--------------------------------------------------------------------------------

end_num <- 13


# Initialize count.
count_even_numbers <- 0

# Code goes here:
for (num in list_goes_here) {

  # Code goes here:

}

# One way: accumulate count starting at zero.
end_num <- 13
# Initialize count.
count_even_numbers <- 0
# Add to count for each even number
for (num in 1:end_num) {
  if(num %% 2 == 0)
  {
    count_even_numbers = count_even_numbers + 1
  }
}


# Another way: sum the logical values of TRUE for even numbers.
end_num <- 13
list_from_1_to_end <- 1:end_num
count_even_numbers <- sum(list_from_1_to_end %% 2 == 0)

# This works because sum(TRUE) == 1 and sum(FALSE) == 0


# Other way: Calculate the number of even numbers mathematically.
if(end_num %% 2 == 0) {
  count_even_numbers = (end_num / 2)
} else {
  count_even_numbers <- (end_num - 1)/2
}
# This is very efficient, since it calculates the count directly.
# It requires more computation "outside the computer".


print(count_even_numbers)


#--------------------------------------------------------------------------------
# Example 6
#--------------------------------------------------------------------------------

num_1 <- 1
num_2 <- 7
num_3 <- 20
num_4 <- 3
num_5 <- 4


num_list <- c(num_1, num_2, num_3, num_4, num_5)


# Code goes here:
my_min <- NA
my_avg <- NA
my_max <- NA


# One way: Use built-in functions:
my_min <- min(num_list)
my_avg <- mean(num_list)
my_max <- max(num_list)


summarize_5_numbers <- c(min = my_min, avg = my_avg, max = my_max)


# Another way:
# Calculate min, mean and max one element at a time.

# Calculate min:
# Start with the first one; replace if another is smaller.
my_min <- num_1
if (num_2 < my_min) {
  my_min <- num_2
}
if (num_3 < my_min) {
  my_min <- num_3
}
if (num_4 < my_min) {
  my_min <- num_4
}
if (num_5 < my_min) {
  my_min <- num_5
}

# Calculate average:
my_avg <- (n1 + n2 + n3 + n4 + n5)/5

# Calculate max:
# Start with the first one; replace if another is larger.
my_max <- num_1
if (num_2 > my_max) {
  my_max <- num_2
}
if (num_3 > my_max) {
  my_max <- num_3
}
if (num_4 > my_max) {
  my_max <- num_4
}
if (num_5 > my_max) {
  my_max <- num_5
}

# Collect them into one list for output.
summarize_5_numbers <- c(min = my_min, avg = my_avg, max = my_max)


# Another way: Compare them in a loop.

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



print(summarize_5_numbers)


################################################################################
# End
################################################################################
