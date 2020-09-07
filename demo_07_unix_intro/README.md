# Introduction to UNIX 

UNIX is an operating system, just like Windows or OS X are operating systems, but UNIX has a large array of powerful tools for computing. 
It is typically accessed through a terminal window: a text-based interface. 
Without the computational expense of showing images of a desktop and tracking mouse movements, using UNIX at the terminal allows the computer (and the user!) to focus attention on the computing problem at hand. 
Commands submitted to the UNIX terminal window are run on a program known as a *shell*. 
The shell that we will use is called *bash*. 


## Shell Command Syntax

You submit commands at a command prompt: a line in the window displayed by ```$```.
The first word of a command is the name of a program. 
The last words are often arguments, such as names of files or objects on which the commands operate. 
In between these is typically a set of options, if necessary, in the following format:

```
command -xyz other arguments
```

The options are usually represented as single characters after a hyphen. 
There are entries in a manual for each UNIX command.

```
man name_of_command
```
But Google is a good reference as well. 

There are many tricks and shortcuts that you learn as you go along. 
Some very useful shortcuts are the *wildcards* ```?``` and ```*```.

Consider the list of files printed by ```ls```:
```
ls my_paper.*
ls my_paper_v?.pdf
ls my_paper.t??
```

The ```*``` wildcard specifies that the list includes all files with names that have any sequence of characters in the place of the ```*```, while the remaining characters appear exactly as shown. 
The command ```my_paper.*``` would show ```my_paper.tex```, ```my_paper.log``` and ```my_paper.pdf``` if those were in the directory. 
Compare this with the ```?``` wildcard. 
This specifies that the list of files include those with any single charcter in the place of the ```?```. 
The command ```my_paper_v?.tex``` would show ```my_paper_v1.tex```, ```my_paper_v2.tex``` and ```my_paper_v3.tex```; 
the command ```my_paper.t??``` would show ```my_paper.tex``` and ```my_paper.txt``` but not ```my_paper.pdf```, as long as those files were in the directory. 


## Navigation 

For Windows users, not much file work can be done without Windows Explorer. 
In UNIX, there are commands that perform any action that can be competed by right-clicking the mouse in Windows Explorer. 

### Present working directory (Where are you?)

The ```pwd``` command prints the present working directory. 
It is the location in the file system, just like that shown in the address bar at the top of Explorer. 

Using GitBash on a Windows machine, the output is 

```
pwd
/c/Users/le279259/Documents/Teaching/QMB6358_Fall_2020/GitRepos/QMB6358F20
```
which shows that I am working in a folder for this course. 

### List files (What else is here?)

The ```ls``` command *lists* the files in the present working directory. 
Some examples include:

```
ls
ls -a
ls -lh
```

Without any options, ```ls``` simply lists (most of) the files and folders in the present working directory. 
The ```-a``` flag lists *all* files, including ones that may be hidden (i.e. with filenames that begin with a dot). 
The ```-lh``` flag passes two options: the ```l``` calls for the ```l```ong format listing, and the ```h``` specifies that the file sizes be displayed in a ```h```uman-readable format. 
The ```ls -lh``` command prints a clear table of the information related to each file. 


### Changing Directory (Where do you want to go?)

The action of clicking on a folder in Explorer initiates a change of directory. 
In UNIX, the syntax is as follows. 

```
cd folder_1/folder_2/folder_3
```
which will "click" through as many folders as you list in one line. 

You can also state absolute paths; that is, with a path specified relative to your *home directory* with ```~```: 
```
cd ~/folder_1/folder_2/folder_3
```
or from your *root directory* with ```/```:

```
cd /c/Users/le279259/Documents/folder_1/folder_2/folder_3
```
The folder ```/c/``` is the analogue of the ```C:/``` prefix in the Windows path. 
This appears when using a terminal on a Windows machine. 
On UNIX or Linux machines, the root directory is just ```/```, without the ```/c```. 


By default, paths are stated relative to the ```pwd```. 

The ```../``` sequence means "move up one level" in the folder hierarchy from the ```pwd```. 

```
cd ../../folder_a/folder_b/folder_c
```
Moves two folders up then into 3 folders in that branch of the folder tree. 


### Making a new directory (folder)

The UNIX analogue of "New...Folder" is the ```mkdir``` command:

```
mkdir ../../existing_folder/other_folder/new_folder
```

### Removing a new directory (folder)

To reverse this decision, you can delete a folder with ```rmdir```.

```
rmdir ../../existing_folder/folder/folder_you_want_to_remove
```
Note that you cannot remove a directory unless it is emply. 
That is, you specify that you want to remove all the files and folders inside. 

```
rmdir -r ../../existing_folder/folder/folder_you_want_to_remove
```
The ```-r``` option specifies that the removing occurs ```r```ecursively. 

CAUTION: In UNIX, there is no "Undo" command or "Recycle Bin". 
Any file that is removed is forever deleted from the system. 
Make sure that you know what you are doing when you use this command. 




## Files

Similar operations can be perfomed on files. 

### Copying a file

```
cp path/to/file/file.txt path/to/new_file/new_copy_of_file.txt
```
The ```cp``` command works just like "Copy and Paste", without all of the mouse-clicking. 
The copying takes place to and from the files in the paths as specified. 



### Moving a file

Move files with ```mv```:
```
mv path/to/file/file.txt path/to/new_location/new_copy_of_file.txt
```
The ```mv``` command works like "Cut and Paste". 
It can also be used to "Rename" a file, by *moving* it to a file with a new filename:

```
mv path/to/file/old_file_name.txt path/to/file/new_file_name.txt
```



### Removing a file

The ```rm``` command removes (deletes) a file. 

```
rm path/to/file_1/file.txt path/to/file_1/new_copy_of_file.txt
```

CAUTION: In UNIX, again, there is no "Undo" command. You have to know what you are doing. 
(However, if you are in a local copy of a git repository, you can revert to your last commit---see [demo_04_version_control(https://github.com/LeeMorinUCF/QMB6358F20/tree/master/demo_04_version_control).
This is one of the many reasons to use version control software.


### Making a new file

The command ```echo``` will print a sring to screen. 

```
echo "Hello, world!"
```

Combine this with the ```>``` operator directs the output to a file.

```
echo "Hello, world!" > my_new_file.txt
```

If the file does not exist, it creates one. 
If ```my_new_file.txt``` already exists, it overwrites it, unless you use the ```>>``` operator to append to this file:

```
echo "Hello, world!" > file_I_want_to_modify.txt
echo "Hello, again, world!" >> file_I_want_to_modify.txt
```


## Inspecting the contents of a file

One way to observe the contents of a file is through a text editor (see the section on ```vim``` below).
In the terminal, you can print some of the contents to screen with ```head``` and ```tail``` as in the following two examples:

```
head -10 my_file.txt
tail -20 my_other_file.txt
```
These commands print to screen the first 10 lines of the file ```my_file.txt``` and the last 20 lines of ```my_other_file.txt```.

Another useful command is ```cat```,
```
cat my_file.txt
```
which will print the entire contents of a file. 
If the file is large, most of the printout will quickly pass you by. 
You can redirect output to another file with the redirect operators ```>``` or ```>>```. 
The power of this command is realized when you want to concatenate two files:

```
echo "The quick brown fox" > file_1.txt
echo "jumped over the lazy dogs." > file_2.txt
cat file_1.txt file_2.txt > file_3.txt
ls
cat file_3.txt
```
The first three commands create each of the files, 
and the last two commands show the contents of the directory and the combined file. 


## Running scripts

A powerful reason to use the terminal window is to run batch processes. 
You can run scripts for software that can run on your computer without opening the program on the screen. 
This is particulary useful for running programs on another (possibly bigger) computer. 

### Running ```python``` scripts


You can run a ```python``` script at the command line by running python:

```
python3 my_python_script.py
```
and the output will print to screen. 
You can also redirect the output to a file of your choosing with the ```>``` operator:
```
python3 my_python_script.py > my_script_output.out
```

### Running ```R``` scripts

You can run an ```R``` script with either the ```Rscript``` command or ```R CMD BATCH```:

```
Rscript my_script.R > my_script_output.out
```
or
```
R CMD BATCH my_script.R my_script_output.out
```
And you will see the file ```my_script_output.out``` appear in the directory. Notice that the output is more verbose with ```R CMD BATCH```, 
including not only the printed output but the commands that were run.

As mentioned above, the ```>``` operator directs the output of the ```R``` script run by ```Rscript``` to the file called ```my_script_output.out``` (but you can call it anything you want). 
With the ```R CMD BATCH``` command, the default is to print the results to a file in the second argument above. 


### Running ```shell``` scripts

A shell script is a program containing UNIX commands. 
For example, you can run a series of ```R``` and ```python``` scripts and execute a number of other UNIX commands.
Suppose you collected the following commands into the file ```my_shell_script.sh```.

```
#!/bin/bash

# Navigate to a selected working directory.
cd path/to/my/scripts

# Run a python script.
python3 my_python_script.py > my_py_script_output.out

# Run an R script.
Rscript my_script.R > my_R_script_output.out

# Collect all the files into a compressed file (see below). 
zip my_zip_file.zip *.py *.R *.out my_shell_script.sh


```


To run this script, you would enter

```
$ ./my_shell_script.sh
```
to print the output to screen

or
```
$ ./my_shell_script.sh > my_shell_output.out
```
to redirect any printed output to the text file ```my_shell_output.out```.

The top line ```#!/bin/bash``` communicates the particular shell on which you want to run your program. 
In this course we will use ```bash```. 
The path path to the shell appears after ```#!``` (called sharp-bang, like the sharp symbol from music). 
This path is the result of entering
```
which bash
```


## Compressing Files


For example, the command

```
zip MorinPS2.zip *.tex *.pdf ReadMe DoWork.sh
```
creates one ```zip``` file containing 
all files in this directory with the extensions ```.tex``` and ```.pdf```, as well as the files named ```ReadMe``` and the shell script ```DoWork.sh```. 
The reverse operation, recovering the files in a ```zip``` archive, is executed with the ```unzip``` command. 
Similar compression operations are achieved with ```gzip``` or ```tar```. 



## Version Control with GitHub


To *clone* a repo, i.e. download a copy to your local computer, use the ```clone``` option with ```git```:

```
git clone https://github.com/LeeMorinUCF/QMB6358F20.git
```

After you make some changes, you will want to upload them to the repo. 
First verify the changes that have been made, i.e. check the ```status``` of the local copy of your repo. 
Check this from the root folder of your repo (the first folder in your repo).


```
git status
```
Once you choose the files that you want to upload, use the ```add``` option to stage the changes in a particular file. 
Use ```.``` to include all changes.

```
git add .
```
You can also ```add``` particular file names one at a time: 
```
git add my_changed_file.ext
```

Typically, you will ```add``` a number of changes related to a similar coding problem, feature or bug fix. 
Once a collection of files are staged to commit, you should add a message to describe the changes, using the ```m``` option.

```
git commit -m "Describe your changes here"
```
(The ```m``` option is not really an option because if you skip the message an old-fashioned text editor will pop up insisting that you include a message. 
More about this in my rief description of the text editor called ```vim```.) 

Before we move on to ```vim```, the changes in one or more ```commit```s can be ```push```ed to the online code repository with, for example,

```
git push origin master
```
with ```origin``` representing the particular fork of the repository and ```master``` for the choice of the branch.  
Again, see (demo_04_version_control)[https://github.com/LeeMorinUCF/QMB6358F20/tree/master/demo_04_version_control] fore more possibilities with ```git```.


## The Default Text Editor: ```vim```

This will typically be a traumatic experience for the new user but the pain will all be worth it should you ever find yourself logging into a computer remotely (which you will), where a graphical text editor is not available. 
A sample of common ```vim```commands is in the following table.

| Command  |  Action                                      |
| -------- |  ------------------------------------------- |
| Esc      |  Escape to start                             |
| i        |  Insert (i.e. typing text)                   |
| Esc :wq  |  Quit and write changes (i.e. save)          |
| Esc :q!  |  Quit (i.e. quit without saving)             |
| v        |  Start selection (for cutting or pasting)    |
| y        |  End selection  (for pasting)                |
| d        |  End selection  (for cutting)                |
| P        |  Paste (before cursor)                       |
| p        |  Paste (after cursor)                        |

There are many other that you can commit to muscle memory over time.
You can find many ```vim``` cheat sheets through your favorite search engine. 


## Remote Computing

### Secure copy files: ```scp```

If you are very averse to using ```vim```, you can always edit your programs locally 
and copy the file to the remote computer. 
Use the ```scp``` command to *secure copy* files *to* another machine. 

```
scp path/to/my/file.txt my_username@other.computer.address:~/path/to/copied/file.txt
```
To copy in the opposite direction (copy a file *from* another computer *to* your local machine), place the remote file and path in the first argument (the *from* argument).

```
scp my_username@other.computer.address:~/path/to/file_I_want_to_copy.txt path/to/my/file.txt 
```

### Secure shell: ```ssh```

To do all of this on a computer located somewhere else (a remote machine), use the ```ssh``` command.

```
ssh my_username@other.computer.address
```

You will be prompted for you login credentials. 
After you enter them, you will see a command prompt in your home directory. 
Now you can do all of this on someone else's computer (provided you have access).



