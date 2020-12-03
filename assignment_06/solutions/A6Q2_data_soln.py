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

# Try to get the number manually:
# This is the text we don't need:
line[4:24]
# This is the rest:
line[24:len(line)]
# That had the ending we don't need.
# Try this:
line[24:32]
# or this:
line.find('>')
line.find('<')
# That finds the first one.
line.rfind('<')
# This one searches from the right.


# For this example, the output should look like:
# get_obs(line)
# 0.906677

# Now make your function with this example.
def get_obs(line):
    
    # Find the character just before the number.
    start = line.find('>')+1
    # Find the character just after the number.
    end = line.rfind('<')
    # Select the number from the string.
    num_out = line[start:end]
    
    # Pass a numeric type.
    return float(num_out)


print(get_obs(line))


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



# For this example, the output should look like:
# get_obs_row(line_2, line_3, line_4, line_5)
# (0.906677, 0.093063, 1, 0)



# Now make your function with this example.
def get_obs_row(line_2, line_3, line_4, line_5):
    
    # Code goes here.
    row_out = [get_obs(line_2),get_obs(line_3),get_obs(line_4),get_obs(line_5)]
    
    return row_out


print(get_obs_row(line_2, line_3, line_4, line_5))


##################################################
# Question 2 c) 
# Get all rows of observations from the entire file.
##################################################

# Initialize the data frame with the column names.
housing_single = pd.DataFrame([],columns=['house_price','income','in_cali','earthquake'])

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
    # Notice there are only 20 rows per html file.
    for row in range(20):
        line_1 = input_file.readline()
        line_2 = input_file.readline()
        line_3 = input_file.readline()
        line_4 = input_file.readline()
        line_5 = input_file.readline()
        line_6 = input_file.readline()
        
        next_row = get_obs_row(line_2, line_3, line_4, line_5)
        
        # Obtain the row of data from the four lines.
        next_row = get_obs_row(line_2, line_3, line_4, line_5)
        # Turn this into a row of a data frame.
        housing_data_row = pd.DataFrame([next_row], columns=['house_price','income','in_cali','earthquake'])
        # Append this row to the dataset.
        housing_single = housing_single.append([housing_data_row])


# Inspect the output from a single html file.
print(housing_single)
housing_full = pd.concat([housing_single])
housing_full.describe()



##################################################
# Question 2 d) 
# Get all observations from all 5 files.
##################################################



# Replace this with the final dataset.
# housing_full = pd.read_csv('housing_data/housing_data_1.csv')
# For now, this is just an example from Question 1
# to see what the result should look like. 



# Solution: Add an outer loop over the filenames.
housing_full = pd.DataFrame([],columns=['house_price','income','in_cali','earthquake'])

for i in range(1,6):
    housing_filename = "html_files/" + "week_" + str(i) + ".html"
    with open(housing_filename, 'r') as input_file:
    
        for line_num in range(22):
            line = input_file.readline()
        
        for row in range(20):
            line_1 = input_file.readline()
            line_2 = input_file.readline()
            line_3 = input_file.readline()
            line_4 = input_file.readline()
            line_5 = input_file.readline()
            line_6 = input_file.readline()
        
            # Obtain the row of data from the four lines.
            next_row = get_obs_row(line_2, line_3, line_4, line_5)
            # Turn this into a row of a data frame.
            housing_data_row = pd.DataFrame([next_row],columns=['house_price','income','in_cali','earthquake'])
            # Append this row to the dataset.
            housing_full = housing_full.append([housing_data_row])
            # Continue through all rows of all html files. 




# Inspect the output from all html files.
print(housing_full)
# housing_full = pd.concat([housing_full])
housing_full.describe()





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




