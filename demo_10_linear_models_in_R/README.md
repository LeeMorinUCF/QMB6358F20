# Regression in R

This is a quick introduction to the concept of regression analysis. 

## Linear Regression 

Linear regression is a statistical method for obtaining a prediction of an outcome 
<img src="https://render.githubusercontent.com/render/math?math=Y_i"> 
as a linear combination of the variables
<img src="https://render.githubusercontent.com/render/math?math=X_i">
multiplied by the parameter
<img src="https://render.githubusercontent.com/render/math?math=\beta_1">, 
plus an intercept
<img src="https://render.githubusercontent.com/render/math?math=\beta_0">.

### The Regression Equation

The parameters 
<img src="https://render.githubusercontent.com/render/math?math=\beta_1"> 
and
<img src="https://render.githubusercontent.com/render/math?math=\beta_0">
are estimated by minimizing the sum of squared residuals from the regression line defined by
<img src="https://render.githubusercontent.com/render/math?math=\beta_1"> 
and
<img src="https://render.githubusercontent.com/render/math?math=\beta_0">.
The residuals are the differerences from the observed values 
<img src="https://render.githubusercontent.com/render/math?math=Y_i"> 
from the values predicted by the regression line. 


<img src="Images/Regression_Equation.png">

### The Minimization Problem

<img src="Images/Regression_Minimization.png">

### The Fit of a Regression Model

<img src="Images/Linear_regression.png">

## Logistic Regression

### The Logistic Equation

<img src="Images/Logistic_Regression_Equation.gif">

### Comparison with Linear Probability Model

<img src="Images/Logistic_vs_OLS_Regression.png">



