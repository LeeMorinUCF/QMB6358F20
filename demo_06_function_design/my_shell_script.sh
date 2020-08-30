#!/bin/bash

################################################################################
#
# QMB 6358: Software Tools for Business Analytics
# Example of a Shell Script
#
# Lealand Morin, Ph.D.
# Assistant Professor
# Department of Economics
# College of Business Administration
# University of Central Florida
#
# August 29, 2020
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
# 
################################################################################

# Bash commands before running R
# e.g. making directory for output, etc.
echo "Running shell script..."


################################################################################

# Run the R script and save the output
echo "Running R script.."
Rscript my_script.R > my_R_script_from_shell.out
echo "Completed R script."


################################################################################

# Other bash commands after output
# e.g. zip file and save copy somewhere else
echo "Completed shell script"


################################################################################
# end
################################################################################

