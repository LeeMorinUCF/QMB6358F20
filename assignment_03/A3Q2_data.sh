#!/bin/bash

################################################################################
#
# QMB 6358: Software Tools for Business Analytics
# Shell Script for Creating Datasets in Assignment 3, Question 2
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
echo "Running test of Assignment 3..."



################################################################################
# Question 2: Assemble the data in UNIX
################################################################################


# Question 2 a) Using a loop
echo "Running commands for Question 2a)..."


# Loop through the number of files in the dataset.
# Choose a small number of files to start.
NUM_FILES="1 2 3 4 5 6 7"
# NUM_FILES=$(seq 1 100)

# Initialize with an empty file.
echo "" > A3Q2a_full.txt
for FILE_NUM in $NUM_FILES
do
    # Append the current dataset to the full dataset.
    echo "Loading file A3_iris_data/QMB6358-iris/iris_$FILE_NUM.txt"

    # Insert a cat command here, reading in the numbered dataset
    # and appending it to the full dataset A3Q2a_full.csv:


done

echo "Completed commands for Question 2a)."





# Question 2 b) Using a one-line command.
echo "Running commands for Question 2b)..."

# Insert a cat command here, reading in all numbered datasets
# and writing to the full dataset A3Q2b_full.csv.
# One-line command goes here:


echo "Completed command for Question 2b)."




################################################################################
# Testing Question 1: Assemble the data in R
################################################################################

# Run the R script and save the output
echo "Running R script for Question 1..."
Rscript A3Q1_data.R > A3Q1_results.out
echo "Completed R script for Question 1."


################################################################################
# Testing Question 2: Assemble the data in UNIX. Test it in R
################################################################################

# Run the R script and save the output
echo "Running R script for Question 2..."

# Call your A3Q2_tests.R script here.
echo  "No tests yet."


echo "Completed R script for Question 2."



################################################################################

# Other bash commands after output
# e.g. zip file and save copy somewhere else
echo "Completed test of Assignment 3."


################################################################################
# end
################################################################################
