# -*- coding: utf-8 -*-
"""
##################################################
#
# QMB 6358: Software Tools for Business Analytics
#
# Sample script for Assignment 6, Question 1
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


# Optional:
import glob


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
# Load Data.
##################################################

# Loading one file at a time:
housing_full = pd.read_csv('housing_data/housing_data_1.csv')
housing_full.columns


#------------------------------------------------------------
# Use a for loop to bind additional datasets to housing_full.
# Simple version with loops
#------------------------------------------------------------


# Initialize with empty object.
housing_single = []

for i in range(1,6):
    housing_filename = "housing_data/" + "housing_data_" + str(i) + ".csv"
    df = pd.read_csv(housing_filename)
    housing_single.append(df)
    

# Concatenate turns it into a pandas dataframe.
housing_full = pd.concat(housing_single)

# It can also be used to join all the datasets together:


#------------------------------------------------------------
# Import a module to bind additional datasets to housing_full.
# This version uses the glob module
#------------------------------------------------------------


extension = 'csv'
housing_single = [i for i in glob.glob('housing_data/*.{}'.format(extension))]
print(housing_single)

housing_full = pd.concat([pd.read_csv(f) 
                          for f in housing_single ])



##################################################
# Summarize the Data
##################################################

# No matter how you do it, check the final product. 

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


