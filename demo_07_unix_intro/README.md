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





