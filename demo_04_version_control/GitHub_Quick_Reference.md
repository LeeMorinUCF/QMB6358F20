# GitHub Quick Reference

This is a short list of the ```git``` commands used in your daily routines. 
Bookmark this page until you know your way around GitHub. 

The most common commands are summarized in this table:

| Command                           |  Action                                      |
| --------------------------------- |  ------------------------------------------- |
| ```git clone <url to the repo>``` |  Clone a repo to your laptop                 |
| ```git pull origin master```      |  Pull content from a repo to your laptop     |
| ```git add .```                   |  Add changes to staging area to commit       |
| ```git commit -m "message"```     |  Commit changes as a group to push online    |
| ```git push origin master```      |  Push content to a repo from your laptop     |
| ```git status```                  |  Check status of changes on your laptop      |


Eventually, you will get to the point that your use of GitHub is uneventful and the commands work as they should. 
In the off chance that something does go wrong, troubleshooting tips are outlined in what follows. 
You can always refer back to this list to get back on track. 



## ```clone```: the first time

To start work on a project stored in an online repository, use ```git clone```:

```
git clone <url to your repo>
```
in your terminal window (GitBash). 
Make sure you do this in a separate folder that is not contained in a repository. 
It will make a local copy at your machine in the working directory. 


## `T```status```: to see what you have done

The ```git status``` command gives you a status report of the current changes to the files in your local repository (on your laptop). 


### When this works

If you have not made any changes you should get a message like the following: 


If you have made some changes, they should appear in red or green, depending on their status. 
If they have been ```add```ed to the staging area to commit, they will be displayed in green. 
Otherwise, new changes not yet ```add```ed will be displayed in red. 
The following is an example: 


### When this fails

This command only works inside a repository.
If there is an excessively long printout of red text, verify that your present working directory is contained within a GitHub repository on your local machine (your laptop), such as your assignment folder or your copy of the class repository. 



It could happen that ```git``` does not recognize changes that you have made. 
It will only recognize changes that occur within the current folder in the repository. 
For example, if I have made changes to a file in the folder ```assignment_02``` and another in ```assignment_03``` but I enter ```git status``` within the folder ```assignment_02```, only the changes within ```assignment_02``` will be displayed. 


#### How to fix it

To include all changes, navigate into the root folder of your repository. 
This will be the folder with the name of your repository, with the ```ls``` of files and folders that match the first that you see on the online copy.


## ```pull```: to update content from other contributors

When another user makes changes to the remote repository (online), you should ```pull``` these changes to your local repo (on your laptop). 
The default command is

```
git pull origin master
```
This uses the program ```git``` to ```pull``` the contant from the online repo (the ```origin```, from which you originally ```clone```d it) and it ```pull```s the content from the ```master``` branch, which is the default. 

### When this works

When this command is successful, you should see...


### When this fails

One way that this can fail is if there is a conflict. 
That is, some files have been changed both on the online repo and in your local copy. 
This often happens when you take notes in your files or run some programs that output files, while I do the same during a lecture. 
It can also happen in the workplace if multiple people are working on the same files.
If ```git``` were to blindly pull the online copy, it would replace the files and your changes would be lost.

When this happens, you should see output like this:






#### How to fix it

An easy way to fix this is to identify the affected files in the message and change those file names to make them unique. 
If they are changes that I made on my copy, while 

Now a human (you?) can manually go through the conflicting files and decide what changes should be incorporated into the official file (if that is important).


Sometimes GitHub will be a little too proactive and decide to merge the files for you. 
If so, it will demand that you enter a message to descripe the changes. 




## ```add```, ```commit``` and ```push```: to update the repo with your changes

When you make changes to a file, the content on your local machine (your laptop) does not match the content on the remote repository (online, on github.com). 

Updating the online repository is a three-step process:
1. ```git add``` the content, usually by entering ```git add .``` (with a dot at the end). 
This ```add```s the changes to a set of changes ready to ```commit``` to the repo. 
1. ```git commit``` a set of changes that you have already ```add```ed. 



Typing ```git status``` at any time will give a progress report of your changes. 

To update the remote repository, and share your changes with others, use the ```push``` command:

```
git push origin master
```

### When this works

When this command is successful, you should see...


You should see your latest work in the online repository through your browser. 
Click the refresh button to display the latest content. 
If you check the files you just changed, you should see that your latest changes are online. 




### When this fails

It might be that other changes were made to the online repository since you last ```clone```d or ```pull```ed your current workspace. 
You can only ```push``` changes if you are working with a current copy. 
If this happens, you will see a message like this: 


#### How to fix it

You have to update your repository by ```pull```ing those changes. 
Go back to ```pull``` those changes and now there are new changes to your local machine.
These changes have to ```add```ed and ```commit```ted, just as if you made those changes yourself. 

Your attempt to ```pull``` might introduce a conflict if new changes were made to the same files in both repositories. 
Follow the troubleshooting tips under the section about ```pull```ing. 



## ```clone```: If all else fails

If, for some reason, you cannot get your material to commit, you can always start over. 

1. Browse to a new folder that is NOT inside another repo. 
1. Clone the repo with ```git clone <url to your repo>```. 
1. Copy the changes to the files, from the earlier copy where you did the work you want to commit, to the new clone . 
1. Follow the steps ```git add```, ```git commit``` and ```git push```, as outlined in the section on committing new changes. 
1. After ```push```ing the changes, you should see your latest work in the online repository through your browser. 
Click the refresh button to display the latest content. 

The best part about GitHub is that it allows you to make mistakes and start over. 
GitHub is version control software that stored a copy online, no matter what happens to your physical copy on your laptop. 
You can ```clone``` a new copy and start over. 
You might want to delete the previous ```clone```s but first you should ```git status``` in that folder to see whether you have made some changes that you want to copy to the new ```clone```. 
Then follow the procedure above to ```push``` them to the online repository where they are stored securely. 



## Template:

### When this works


### When this fails


#### How to fix it


