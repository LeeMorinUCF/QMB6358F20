#!/bin/bash

################################################################################
#
# QMB 6358: Software Tools for Business Analytics
# Shell Script for Creating Datasets in Assignment 4, Question 2
#
# Name:
# College of Business
# University of Central Florida
#
# Date:
#
################################################################################
#
# This shell script creates a dataset in UNIX, in two ways.
# It the runs two R scripts to test the contents of the datasets
# created in UNIX to compare with the results from R.
#
# Note: The top line tells where your bash program is located
#     and should match the result you get when you
#     type the command "which bash".
#     To run this script you have to navigate to this folder in
#     a terminal window, such as GitBash, and execute
#     ./my_shell_script.sh
#     where the name of the .sh file corresponds to the name of this file.
#
################################################################################

# Bash commands before running R
# e.g. making directory for output, etc.
echo "Running test of Assignment 4..."



################################################################################
# Question 2: Assemble the data in UNIX
################################################################################


# Question 2 a) Using the paste command
echo "Running commands for Question 2a)..."

# Commands for replacing the extra line endings.
# See the Announcement on Webcourses for details.
# Copy them to new file names
cp tractor_sales_new.csv tractor_sales_cleaned.csv
cp tractor_specs_new.csv tractor_specs_cleaned.csv
# Replace the file endings with sed (find and replace).
sed -i 's/\r//g' tractor_sales_cleaned.csv
sed -i 's/\r//g' tractor_specs_cleaned.csv


# Need to sort the data first, otherwise, the rows will not match.
sort tractor_sales_cleaned.csv > tractor_sales_sorted.csv
sort tractor_specs_cleaned.csv > tractor_specs_sorted.csv


# Now the paste command is simpler.
# Need to tell it that the delimiter is a comma or the first and last columns
# will be pasted together.
paste -d, tractor_sales_sorted.csv tractor_specs_sorted.csv > A4Q2a_full.csv


echo "Completed commands for Question 2a)."





# Question 2 b) Using the join command
echo "Running commands for Question 2b)..."

# Code goes here.
# Using the same sorted files as above.
join -t, tractor_sales_sorted.csv tractor_specs_sorted.csv > A4Q2b_full.csv


echo "Completed command for Question 2b)."




################################################################################
# Testing Question 1: Assemble the data in R
################################################################################

# Run the R script and save the output
echo "Running R script for Question 1..."


Rscript A4Q1_data_soln.R > A4Q1_results.out


echo "Completed R script for Question 1."


################################################################################
# Testing Question 2: Assemble the data in UNIX. Test it in R
################################################################################

# Run the R script and save the output
echo "Running R script for Question 2..."


# Call your A3Q2_tests.R script here.
# echo  "No tests yet."
# Code goes here.

Rscript A4Q2_tests_soln.R > A4Q2_results.out


echo "Completed R script for Question 2."



################################################################################

# Other bash commands after output
# e.g. zip file and save copy somewhere else
echo "Completed test of Assignment 4."


################################################################################
# end
################################################################################
