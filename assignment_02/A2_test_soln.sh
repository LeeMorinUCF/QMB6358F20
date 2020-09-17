#!/bin/bash

################################################################################
#
# QMB 6358: Software Tools for Business Analytics
# Shell Script to Test Functions in Assignment 2
#
# Name:
# College of Business Administration
# University of Central Florida
#
# Date:
#
################################################################################
#
# This shell script runs an R script and saves the output.
# It prints messages to notify the user of the stages in the program.
# It can be modified to perform other tasks before and after
# running the R script.
#
# Note: The top line tells where your bash program is located
#     and should match the result you get when you
#     type the command "which bash".
#     To run this script you have to navigate to this folder in
#     a terminal window, such as GitBash, and execute
#     ./A2_test.sh
#     where the name of the .sh file corresponds to the name of this file.
#
################################################################################

# Bash commands before running R
# e.g. making directory for output, etc.
echo "Running shell script..."


################################################################################

# Run the R script and save the output
echo "Running R script..."
Rscript A2Q2_testing_soln.R > A2Q2_testing_from_shell_soln.out
echo "Completed R script."


################################################################################

# Other bash commands after output
# e.g. zip file and save copy somewhere else
echo "Completed shell script."


################################################################################
# end
################################################################################

