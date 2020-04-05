# git-common-cmds
A script that outputs a table on command line that lists and explains all git common commands for user to reference

## Background
I'm a slight newbie to ```git``` and using and trying to remember what all the little flags and parameters for the git command line and its commands I found a little tediuous and I was always looking back at stackexchange to find the answer. So I started keeping a list in a text file.. Looking more into it I cound the ```column``` command and I created list that gets parsed by the bash ```column``` command that parses and outputs these commands and lists with my own explaination next to each command so I can look it up quickly. You can use ```grep``` (with colours) to try and highlight what you want to see easier and create subsections (ADD, PULL, DIFF, COMMIT) so you can put your commands and explainations under each subsection.
You also can insert flags to print out only that subection of commands and explaination.

## Usage
Create a ```~/.git-common``` file in your homedir that can have comments ```#``` on any line. Any other line in this file needs to be in two columns and ```COMMAND``` needs to be seaprated by a `|` and then ```EXPLAINATION```:
```git add -p|Only add certain parts of the file to the commit using the interactive or patch (-p) flag```
Place this function in your ```.bashrc``` file and run ```source ~/.bashrc``` and away you go.
