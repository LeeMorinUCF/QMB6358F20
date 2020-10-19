##################################################
#
# QMB 6358: Software Tools for Business Analytics
#
# Joining Datasets
#
# Name:
# College of Business
# University of Central Florida
#
# Date:
#
##################################################
#
# A4Q1_data is an exercise in joining
# data sets with data on tractor sales and
# tractor specifications.
#
##################################################


##################################################
# Preparing the Workspace
##################################################

# Clear workspace.
rm(list=ls(all=TRUE))

# No libraries required.
# Otherwise would have a command like the following.
# library(name_of_R_package)


##################################################
# Setting the Parameters
##################################################


# It's not necessary to set the directory, since we are working in the
# same directory already: that's where the shell script is running.

# # Set path for working directory.
# wd_path <- "~/Teaching/QMB6358_Fall_2020/GitRepos/QMB6358F20/assignment_04/solutions"
# # wd_path <- "~/Teaching/QMB6358_Fall_2020/Assignments/assignment_04"
# # Modify the above line according to the specific path on your computer,
# # as in:
# # wd_path <- 'C:/Users/name/of/your/path'
#
# # Set the working directory to this path.
# setwd(wd_path)
#
# # Verify that the path was assigned correctly.
# getwd()


##################################################
# Q2 a) Loading the dataset A4Q2a_full.csv
##################################################

# Q2 a)

# Code goes here.
tractor_full_A4Q2a <- read.csv('A4Q2a_full.csv')


# Q2 c)

# Code goes here.

# Use all available variables from full dataset.
colnames(tractor_full_A4Q2a)

# Estimate a regression model.
lm_model_1 <- lm(data = tractor_full_A4Q2a,
                 formula = log(saleprice) ~ horsepower + age + enghours +
                   diesel + fwd + manual + johndeere +
                   spring + summer + winter)

# Output the results to screen.
print(summary(lm_model_1))



##################################################
# Q2 b) Loading the dataset A4Q2b_full.csv
##################################################

# Q2 b)

# Code goes here.
tractor_full_A4Q2b <- read.csv('A4Q2b_full.csv')


# Q2 c)

# Code goes here.

# Use all available variables from full dataset.
colnames(tractor_full_A4Q2b)

# Estimate a regression model.
lm_model_1 <- lm(data = tractor_full_A4Q2b,
                 formula = log(saleprice) ~ horsepower + age + enghours +
                   diesel + fwd + manual + johndeere +
                   spring + summer + winter)

# Output the results to screen.
print(summary(lm_model_1))





# These results should match the ones from A4Q1_data.R.


##################################################
# End
##################################################