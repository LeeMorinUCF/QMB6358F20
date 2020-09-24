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


# Code goes here.


echo "Completed commands for Question 2a)."





# Question 2 b) Using the join command
echo "Running commands for Question 2b)..."

# Code goes here.


echo "Completed command for Question 2b)."




################################################################################
# Testing Question 1: Assemble the data in R
################################################################################

# Run the R script and save the output
echo "Running R script for Question 1..."


Rscript A4Q1_data.R > A4Q1_results.out


echo "Completed R script for Question 1."


################################################################################
# Testing Question 2: Assemble the data in UNIX. Test it in R
################################################################################

# Run the R script and save the output
echo "Running R script for Question 2..."


# Call your A3Q2_tests.R script here.
echo  "No tests yet."
# Code goes here.



echo "Completed R script for Question 2."



################################################################################

# Other bash commands after output
# e.g. zip file and save copy somewhere else
echo "Completed test of Assignment 4."


################################################################################
# end
################################################################################
