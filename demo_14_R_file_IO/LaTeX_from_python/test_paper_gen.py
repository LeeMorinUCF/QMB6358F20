# -*- coding: utf-8 -*-
"""
##################################################
#
# ECO 5445: Intro to Business Analytics
#
# Generating TeX Scripts for Building pdf Documents with Python
#
# Lealand Morin, Ph.D.
# Assistant Professor
# Department of Economics
# College of Business Administration
# University of Central Florida
#
# September 30, 2019
#
# This script generates a tex script that generates a pdf document.
#
##################################################
"""



##################################################
# Import Modules.
##################################################



##################################################
# Set parameters
##################################################


# Set file name
tex_file_name = 'docs/test_paper.tex'




##################################################
# Generating the TeX script for the Document
##################################################


open_file = open(tex_file_name, 'w')

# Write the preamble.
open_file.write('\\documentclass{paper}\n')
open_file.write('\\begin{document}')


open_file.write('\n\nThis is a test.\n\n')

# Closing arguments.
open_file.write('\\end{document}')
open_file.close()



##################################################
# End.
##################################################
