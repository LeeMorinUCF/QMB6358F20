##################################################
#
# QMB 6358: Software Tools for Business Analytics
#
# OLS Regression Demo
# Regression with Data from Spreadsheet
#
# Lealand Morin, Ph.D.
# Assistant Professor
# Department of Economics
# College of Business Administration
# University of Central Florida
#
# October 17, 2020
#
##################################################
#
# House_Price_Reg gives an example of OLS regression
#   using data imported from a spreadsheet.
#   It automatically generates figures and tables for a
#   pdf document built with LaTeX.
#
# Dependencies:
#   None.
#
##################################################


##################################################
# Preparing the Workspace
##################################################

# Clear workspace.
rm(list=ls(all=TRUE))

# Set working directory.
# wd_path <- '/path/to/your/folder'
wd_path <- '~/Teaching/QMB6358_Fall_2020/GitRepos/QMB6358F20/demo_14_R_file_IO/LaTeX_from_R'

setwd(wd_path)

# Check folder:
getwd()


# Set data directory.
data_dir <- 'Data'

# Set directory for storing figures.
fig_dir <- 'Figures'

# Set directory for storing tables.
tab_dir <- 'Tables'

# Set directory for storing text.
tex_dir <- 'Text'


# Load libraries.

# The xtable library creates tex scripts for tables.
library(xtable)
# The texreg library creates tex scripts for tables from
# regression models.
library(texreg)


##################################################
# Load Data
##################################################

# Read the newly saved dataset.
data_file_path <- sprintf('%s/housing_data.csv', data_dir)
housing_data <- read.csv(file = data_file_path)

# Inspect the data.
summary(housing_data)


##################################################
# Create Tables
##################################################


#--------------------------------------------------
# Summarize numeric variables.
#--------------------------------------------------

# Summarize numeric variables over the entire sample.
num_var_list <- colnames(housing_data)[lapply(housing_data, class) == 'numeric']
summary(housing_data[, num_var_list])


out_tab <- data.frame(matrix(nrow = 4, ncol = length(num_var_list) + 1))
colnames(out_tab) <- c('Statistic', num_var_list)
out_tab[, 'Statistic'] <- c('Min.', 'Mean', 'S.D.', 'Max.')
for (col_name in num_var_list) {
   out_tab[1, col_name] <- min(housing_data[, col_name])
   out_tab[2, col_name] <- mean(housing_data[, col_name])
   out_tab[3, col_name] <- sd(housing_data[, col_name])
   out_tab[4, col_name] <- max(housing_data[, col_name])
}


# Convert the table to a LaTex table.
out_xtable <- xtable(out_tab[, ],
                     digits = 2, label = 'tab:summary',
                     caption = 'Summary of Numeric Variables')

# Output to TeX file.
tab_file_name <- sprintf('%s/summary.tex', tab_dir)
cat(print(out_xtable), file = tab_file_name, append = FALSE)

#--------------------------------------------------
# Summarize categorical variables
#--------------------------------------------------




# Check that earthquakes occurred only in California:
table(housing_data[, 'in_cali'])
table(housing_data[, 'in_cali'], housing_data[, 'earthquake'])


# Create a table of counts of variables by state and earthquake incidence.
out_tab <- table(housing_data[, 'in_cali'], housing_data[, 'earthquake'])


# Add some column names.
rownames(out_tab) <- c('Other', 'California')
colnames(out_tab) <- c('None', 'Earthquake')



# Convert the table to a LaTex table.
out_xtable <- xtable(out_tab[, ],
                     digits = 2, label = 'tab:earthquakes',
                     caption = 'Earthquake Incidence by State')

# Output to TeX file.
tab_file_name <- sprintf('%s/earthquakes.tex', tab_dir)
cat(print(out_xtable), file = tab_file_name, append = FALSE)



#--------------------------------------------------
# Create table with correlation matrix
#--------------------------------------------------

# Calculate a correlation matrix for selected variables.
corr_var_names <- c('house_price', 'income', 'in_cali', 'earthquake')
corr_matrix <- cor(housing_data[, corr_var_names])
print(round(corr_matrix, 3))


# Convert the table to a LaTex table.
out_xtable <- xtable(corr_matrix[, ],
                     digits = 3, label = 'tab:corr',
                     caption = 'Correlation Matrix')

# Output to TeX file.
tab_file_name <- sprintf('%s/correlation.tex', tab_dir)
cat(print(out_xtable), file = tab_file_name, append = FALSE)




##################################################
# Plot Figures
##################################################


# Plot a scattergraph of income and housing prices.
plot(housing_data[, 'income'],
     housing_data[, 'house_price'],
     main = c('House Prices vs. Income', '(all figures in millions)'),
     xlab = 'Income',
     ylab = 'House Prices',
     col = 'blue')


# Now output the figures





##################################################
# Estimating the Regression Model
# Model 1: All Variables Included
##################################################

# Note the formula object:
# Y ~ X_1 + X_2 + X_3


# Estimate a regression model.
lm_full_model <- lm(data = housing_data,
                    formula = house_price ~ income + in_cali + earthquake)

# Output the results to screen.
summary(lm_full_model)

# See what's inside the lm_full_model object:
class(lm_full_model)
attributes(lm_full_model)

lm_full_model$coefficients
lm_full_model$coefficients['income']
lm_full_model$coefficients[2]

coef(lm_full_model)

# Model predictions:
summary(predict(lm_full_model))
housing_data[, 'predictions'] <- predict(lm_full_model)

attributes(summary(lm_full_model))

lm_full_model_summ <- summary(lm_full_model)
lm_full_model_summ$adj.r.squared


##################################################
# Estimating the Regression Model
# Model 2: Omitting One Variable
##################################################

# Estimate a regression model.
lm_no_earthquakes <- lm(data = housing_data,
                        formula = house_price ~ income + in_cali) # earthquake removed.

# Output the results to screen.
summary(lm_no_earthquakes)


##################################################
#
# Exercise:
#
# Observe the values of the coefficient for earthquakes.
# Then compare the change in coefficient on California
# with and without the earthquake variable.
#
##################################################

# If it helps, observe summary statistics
# both with and without earthquakes.

summary(housing_data[housing_data[, 'earthquake'] == 0, ])

summary(housing_data[housing_data[, 'earthquake'] == 1, ])


##################################################
# Plot regression results for selected model.
##################################################


# Calculate the predictions from the fitted model.
housing_data[, 'predictions'] <- predict(lm_full_model,
                                         newdata = housing_data)

summary(housing_data[, c('house_price', 'predictions')])

plot(housing_data[, c('house_price', 'predictions')],
     main = 'Regression Model Predictions',
     xlab = 'House Price',
     ylab = 'Prediction')



# Plot the actual house prices against the regression model predictions.
plot(housing_data[, 'house_price'], housing_data[, 'predictions'],
     main = 'Regression Model Predictions',
     xlab = 'House Price',
     ylab = 'Prediction')
points(housing_data[housing_data[, 'in_cali'] == 1, 'house_price'],
       housing_data[housing_data[, 'in_cali'] == 1, 'predictions'],
       col = 'green')
points(housing_data[housing_data[, 'earthquake'] == 1, 'house_price'],
       housing_data[housing_data[, 'earthquake'] == 1, 'predictions'],
       col = 'red')


##################################################
# Exercise: Add some regression lines to compare
# the predictions to the actual observations.
##################################################

# Plot the actual house prices against the regression model predictions.
plot(housing_data[, 'income'], housing_data[, 'house_price'],
     main = 'Regression Model Predictions',
     xlab = 'Income',
     ylab = 'House Price')
points(housing_data[housing_data[, 'in_cali'] == 1, 'income'],
       housing_data[housing_data[, 'in_cali'] == 1, 'house_price'],
       col = 'green')
points(housing_data[housing_data[, 'earthquake'] == 1, 'income'],
       housing_data[housing_data[, 'earthquake'] == 1, 'house_price'],
       col = 'red')

# Use the lines() command to append to the above figure.
# You will need to create a vector of values on the line
# using the regression coefficients from the estimated model.

summary(lm_full_model)

coef(lm_full_model)
beta_0_hat <- coef(lm_full_model)['(Intercept)']
beta_income_hat <- coef(lm_full_model)['income']

income_grid <- seq(0.07, 0.13, by = 0.01)
reg_line_not_cali <- beta_0_hat + beta_income_hat*income_grid

lines(income_grid, reg_line_not_cali,
      lwd = 3, col = 'black')

# Repeat for california without earthquakes (green)
# and earthquakes (red).


##################################################
# End
##################################################

