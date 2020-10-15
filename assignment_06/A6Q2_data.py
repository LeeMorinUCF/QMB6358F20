# -*- coding: utf-8 -*-
"""
##################################################
#
# QMB 6358: Software Tools for Business Analytics
#
# Sample script for Assignment 6, Question 2
#
# Name: 
# College of Business Administration
# University of Central Florida
#
# Date:
#
#
##################################################
"""


##################################################
# Import Modules.
##################################################


import os # To set working directory
# import numpy as np # Not needed here but often useful
import pandas as pd # To read and inspect data
import statsmodels.formula.api as sm # Another way to estimate linear regression



##################################################
# Set Working Directory.
##################################################


# Find out the current directory.
os.getcwd()
# Change to a new directory.
os.chdir('C:\\Users\\le279259\\Documents\\Teaching\\QMB6358_Fall_2020\\Assignments\\assignment_06')
# Check that the change was successful.
os.getcwd()


##################################################
# Question 2 a) 
# Get observations from a line.
##################################################


# Use this code block to obtain an example of a line.
# input_file = open('html_files/week_1.html', 'r')
with open('html_files/week_1.html', 'r') as input_file:
    
    # Pull the header (not useful information).
    # The header is in the first 23 rows:
    # Loop on the lines in the dataset.
    for line_num in range(23):
        line = input_file.readline()
        print(line)
        
    # Now take the very next line as a sample for your function.
    line = input_file.readline()


# See what it looks like.
print(line)



# Now make your function with this example.
def get_obs(line):
    
    # Code goes here.
    num_out = 7
    
    return num_out



##################################################
# Question 2 b) 
# Get a row of observations from several lines.
##################################################


# Use this code block to obtain an example of a 
# set of lines for a row in the file.
# input_file = open('html_files/week_1.html', 'r')
with open('html_files/week_1.html', 'r') as input_file:
    
    # Pull the header (not useful information).
    # The header is in the first 23 rows:
    # Loop on the lines in the dataset.
    for line_num in range(22):
        line = input_file.readline()
        # print(line)
    # Note that we only skip the first 22 
    # because of the pattern in the data. 
        
    # Now take the very next line as a sample for your function.
    line_1 = input_file.readline()
    line_2 = input_file.readline()
    line_3 = input_file.readline()
    line_4 = input_file.readline()
    line_5 = input_file.readline()
    line_6 = input_file.readline()


# See what they look like.
print(line_1)
print(line_2)
print(line_3)
print(line_4)
print(line_5)
print(line_6)



# Now make your function with this example.
def get_obs_row(line_2, line_3, line_4, line_5):
    
    # Code goes here.
    row_out = 7
    
    return row_out





##################################################
# Question 2 c) 
# Get all rows of observations from the entire file.
##################################################


# Use this code block to obtain an example of a 
# set of lines for a row in the file.
# input_file = open('html_files/week_1.html', 'r')
with open('html_files/week_1.html', 'r') as input_file:
    
    # Pull the header (not useful information).
    # The header is in the first 23 rows:
    # Loop on the lines in the dataset.
    for line_num in range(22):
        line = input_file.readline()
        # print(line)
    # Note that we only skip the first 22 
    # because of the pattern in the data. 
        
    # Now take the very next line as a sample for your function.
    for row in range(100):
        line_1 = input_file.readline()
        line_2 = input_file.readline()
        line_3 = input_file.readline()
        line_4 = input_file.readline()
        line_5 = input_file.readline()
        line_6 = input_file.readline()
        
        next_row = get_obs_row(line_2, line_3, line_4, line_5)
        
        # More code goes here.



##################################################
# Question 2 d) 
# Get all observations from all 5 files.
##################################################


# Code goes here.






# Replace this with the final dataset.
housing_full = pd.read_csv('housing_data/housing_data_1.csv')
# For now, this is just an example from Question 1
# to see what the result should look like. 



##################################################
# Inspect the final dataset
##################################################


# Calculate summary statistics for your data.
housing_full.describe()
# Use this to check whether your data handling is working correctly.


##################################################
# Fit the Regression Model
##################################################

# After the full dataset is obtained:

# Fit the regression model.
reg_model_full_sm = sm.ols(formula = "house_price ~ income + in_cali + earthquake", 
                           data = housing_full).fit()



# Display a summary table of regression results.
print(reg_model_full_sm.summary())





##################################################
# End
##################################################




