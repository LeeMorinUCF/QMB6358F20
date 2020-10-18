# This script generates a tex script that can generate a pdf document.

# Import packages or modules.
import os
import numpy as np
from scipy import linalg
import matplotlib.pyplot as plt

# Set parameters


# Output tex file name.
wd_path = 'docs'
# tex_file_name = 'docs/regression_paper.tex'
tex_file_name = 'regression_paper.tex'

# Move into working directory.
os.chdir(wd_path)
# Inputs for data generated for regression model.
N = 100
K = 2
beta_0 = np.zeros(K)
sigma = 1.0

# Create the dataset.
ones = np.ones(N)
X = np.random.normal(0., 1., [N, K-1])
X = np.column_stack((ones, X))
y = np.dot(X, beta_0) + sigma*np.random.normal(0., 1., N )

# Run the regression.
beta_hat, resid, rank, sigma_hat = linalg.lstsq(X, y)

# Plot a scattergraph.
x_grid = np.arange(-30,30)*0.1
y_grid = beta_hat[0] + beta_hat[1]*x_grid
plt.plot(X[:,1], y, 'x', x_grid, y_grid)
plt.xlabel('$x_i$')
plt.ylabel('$y_i$')
plt.title('Regression of $y$ on $X$')
plt.savefig('regression_plot.eps')


# Generate the tex file and build the pdf.
open_file = open(tex_file_name, 'w')

# Write the preamble.
open_file.write('\n\\documentclass{paper}\n')
open_file.write('\n\\usepackage{amsmath}\n')
open_file.write('\n\\usepackage{graphicx}\n')
open_file.write('\n\\begin{document}\n')


open_file.write('\n\nThank you for reading my regression paper.\n\n')

open_file.write('\nThis is my regression equation:\n')
open_file.write('\n\\begin{equation}\n%')
open_file.write('\n\tY = X\\beta + \\epsilon\n')
open_file.write('%\n\\end{equation}\n')
open_file.write('\nNow we will estimate the model.\n')

# Output regression results.
open_file.write('\n\n')
open_file.write('\n$\\dots$\n')
open_file.write('\n\n')

open_file.write('\nThese are the regression coefficients:\n')
open_file.write('\n\\begin{align}\n%')
open_file.write('\n\t\\hat{\\beta}_0 & = & %10.4f \\\\ \n%%' % beta_hat[0])
open_file.write('\n\t\\hat{\\beta}_1 & = & %10.4f \n%%' % beta_hat[1])
open_file.write('\n\\end{align}\n')


# Insert the figure of the scattergraph.
open_file.write('\n\\pagebreak\n')
open_file.write('\nThis is a scattergraph of the regression results:\n')
open_file.write('\n\\begin{figure}\n%')
open_file.write('\n\t\\includegraphics[scale = 0.5]{regression_plot.eps}\n')
open_file.write('%\n\\end{figure}\n')
open_file.write('\nThis concludes my paper.\n')




# Closing arguments.
open_file.write('\\end{document}')
open_file.close()

# Build the document.
os.system('pdflatex %s' % tex_file_name)



# End.
