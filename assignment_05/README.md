# Clarification of Assignment 5

## The sample script.

There is a typo in the instructions where I refer to a sample script as
```A5_functions.py```. 
This is the file that you create and save in your ```assignment_06``` folder under this name. 
The sample that you use is the file from the demo called ```my_R_functions.py``` in the folder ```demo_11_python_intro``` that I went through in class. 
Your ```A5_functions.py``` script should have the same format as ```my_R_functions.py```, with the file definitions at the top and the examples in the main function at the bottom. 


## Exercise 2

You might say that this is ambiguously written but I can clear it up as follows.
The output is a string that is the path to a *file*. 
One of the inputs is also a string that is a path but it is the path to a *folder*. 
They are both called paths: paths to different places in the computer's memory. 
The exercise is simply to fill the role of the ```paste()``` function in R, when you loop through files. 
This is useful for any kind of File I/O operations with a big list of file names. 

For example, it would streamline the ```for``` loop to read in the iris datasets, if you were to do it in Python. 

```
import pandas as pd

path = "/path/to/my/folder"
prefix = "iris"
extension = "csv"

for file_num in range(100):
    path_file = path_to_data_file(path, prefix, file_num, extension)
    my_file = pd.read_csv(path_file)
    
    # Then do something with this file.

```

This is just an example, you are not required to actually build the loop and read the files. 
It is intended as practice playing with strings, paths and filenames.
In this case, don't over-think it: sometimes the exercise is simple, especially on the week of the midterm exam in your other course. 



