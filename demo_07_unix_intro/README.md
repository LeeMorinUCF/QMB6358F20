# Introduction to Unix 

## Structure of commands

The first word is a command. 
The last words are often arguments, such as files or folders on which the commands operate. 
In between these is typically a set of options, if necessary, in the following format:

```
command -xyz other arguments
```

The options are usually represented as single characters after a hyphen. 
There are entries in a manual for each Unix command.

```
man name_of_command
```
But Google is a good reference as well. 


## Navigation 

### Present working directory (Where are you?)

```
pwd
```

### Changing Directory (Where do you want to go?)


```
cd folder/folder/folder
```


The ```../``` sequence means "move up one level" in the folder hierarchy. 

```
cd ../../folder/folder/folder
```
Moves two folders up then into 3 folders in that branch of the folder tree. 


### Making a new directory (folder)


```
mkdir ../../existing_folder/folder/new_folder
```

### Making a new directory (folder)

```
rmdir ../../existing_folder/folder/folder_you_want_to_remove
```



## Files


### Copying a file

```
cp path/to/file_1/file.txt path/to/file_1/new_copy_of_file.txt
```
Like copy and paste.



### Moving a file

```
mv path/to/file_1/file.txt path/to/file_1/new_copy_of_file.txt
```

Like cut and paste.


### Removing a file

The ```rm``` command removes (deletes) a file. 

```
rm path/to/file_1/file.txt path/to/file_1/new_copy_of_file.txt
```

In Unix, there is no "undo" command. You have to know what you are doing. 
(However, if you are in a local copy of a git repository, you can revert to your last commit---see (demo_04_version_control)[https://github.com/LeeMorinUCF/QMB6358F20/tree/master/demo_04_version_control].)


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
```


## Running scripts

A powerful reason to use the terminal window is to run batch processes. 




## Compressing Files


For example, the command

```
zip MorinPS2.zip *.tex *.pdf ReadMe DoWork.sh
```
creates one ```zip``` file containing 
all files in this directory with the extensions ```.tex``` and ```.pdf```, as well as the files named ```ReadMe``` and the shell script ```DoWork.sh```. 




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


## The Default Text Editor: ```vim```

This will typically be a traumatic experience for the new user but the pain will all be worth it should you ever find yourself logging into a computer remotely (which you will), where a graphical text editor is not available. 

| Command  |  Action                                      |
| -------- |  ------------------------------------------- |
| Esc      |  Escape to start                             |
| i        |  Insert (i.e. typing text)                   |
| Esc :wq  |  Quit and write changes (i.e. save)          |
| Esc :q   |  Quit (i.e. quit without saving)             |
| v        |  Start selection (for cutting or pasting)    |
| y        |  End selection  (for pasting)                |
| d        |  End selection  (for cutting)                |
| P        |  Paste (before cursor)                       |
| p        |  Paste (after cursor)                        |



