
################################################################################
#
# QMB 6358: Software Tools for Business Analytics
# Assignment 3: Data Handling
#
# Name:
# College of Business
# University of Central Florida
#
# Date:
#
################################################################################
#
# This program reads a collection of small datasets to practice handling data.
# It is a sample of the script for Assignment 3, Question 1.
#
#
#
################################################################################

# Clear workspace.
# The remove function removes everything in the workspace when the list is all.
rm(list=ls(all=TRUE))

# Load library of functions.
# source('my_R_code.R')

# Load packages.
# library(name_of_R_package_goes_here)


# Set working directory to the path containing the csv files.
# wd_path <- "/path/to/your/folder
wd_path <- "C:/Users/le279259/Documents/Teaching/QMB6358_Fall_2020/Assignments/assignment_03/A3_iris_data/QMB6358-iris"
setwd(wd_path)


# Set paths to other folders.
# data_path <- sprintf('%s/data', wd_path)
# Optional: Organize data in a separate folder for larger projects.


################################################################################
# Reading data from csv files.
################################################################################



# Loop through the number of files in the dataset.
# Choose a small number of files to start.
num_files <- 100

# Initialize with an empty object.
A3Q1_data <- NULL
for (file_num in 1:num_files) {

  # Set the filename.

  # A3Q1a) Print filename.

  # Read this file to a temporary data frame.


  # A3Q1b) Print table of counts by species (to test file reading).
  # print(table(A3Q1_data_sample[, 6], useNA = 'ifany'))

  # Append this file to the full dataset.


}


################################################################################
# Testing dataset from Question 1
################################################################################


print("Contents of Dataset for Question 1:")

# Print some statistics about the full dataset
# to verify the content.
print("Dimensions of dataset:")
print(dim(A3Q1_data))


# Add column labels if the number of columns is correct.
if (!is.null(A3Q1_data) && ncol(A3Q1_data) == 6) {
  colnames(A3Q1_data) <- c("Sample", "Sepal.Length", "Sepal.Width",
                           "Petal.Length", "Petal.Width",  "Species")
}
print(summary(A3Q1_data))

print(table(A3Q1_data[, 6], useNA = 'ifany'))



################################################################################
# End
################################################################################

