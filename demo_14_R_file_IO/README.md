# Automatic Document Generation

One important application of File I/O is to create documents automatically.
Once a piece of analysis is complete, it is useful to hand it off to another
analyst to run periodically to produce an automated dashboard of measurements.
Furthermore, in a research project, it is often very convenient to
generate documents automatically so that they can be regenerated when the data and
the analytical procedures are adjusted.
Statistical analysis is often an iterative process; it is rare for even the best 
analysts to achieve the perfect answer on the first run. 

##








## Reading and Writing to Excel Spreadsheets

Although it is not specifically discussed in this course, a good deal of business 
analysis is conducted with spreadsheet programs such as Microsoft Excel. 
Even though the capabilities of these spreadsheets is very limited, compared to 
fully-functional programming languages, you will often have to work with others who use this very limited, unscalable technology. 
Rather than fight the uphill battle of changing your habits or theirs, 
I have found it effective to convert your ouputs into
Excel format for others to use downstream. 

An Excel spreadsheet contains the data that are represented in each worksheet 
in a way that is recorded in the header of the file, before it is compressed
into ```xlsx``` file format. 
Fortunately, there are ```R``` packages such as ```openxlsx``` that can be used to
read and write from and to individual worksheets in an Excel spreadsheet. 
The ```R``` script ```Excel_with_R.R``` in the [Excel_with_R](https://github.com/LeeMorinUCF/QMB6358F20/tree/master/demo_14_R_file_IO/Excel_with_R) folder above provides a sample of these procedures. 

