# git-common-cmds
A script that outputs a table on command line that lists and explains all git common commands for user to reference. Almost like a git tips and tricks list!

## Background
I'm a slight newbie to ```git``` and using and trying to remember what all the little flags and parameters were for the git command line and its commands I found a little tediuous. I was always looking back at stackexchange to find the answer. So I started keeping a list in a text file.. Looking more into it, I used the ```column``` command and I created a list that gets parsed by ```column``` and outputs these commands and lists, next to each command, my own explaination. I'm hoping this helps me and helps me look it up quickly. You can use ```grep``` (with colours) to try and highlight what you want to see find easier and create subsections (GIT ADD, GIT PULL, GIT DIFF, GIT COMMIT) so you can put your own commands and own explainations under each subsection.
You also can insert flags to print out only that subection of commands and explaination.

## Format of ```git-common``` file
* Comments ```#``` can be on any line and won't be processed. Any other line in this file needs to have the following format:

```GIT COMMAND``` separated by a `|` and then the ```EXPLAINATION``` of that command. 
* Here is a one line example (there are some simple examples in the ```git-common``` file in repo): 
```git add -p|THIS IS MY HELPFUL DESCRIPTION OF THIS COMMAND```

## Usage
1. Copy and edit the ```git-common``` file (or rename this file to a name of your choice) as ```~/.git-common``` in your homedir. 
2.  Add ```source ~/.git-common``` in your ```.bashrc``` file and run ```source ~/.bashrc```
3. type ```$ gcmds``` or ```$ gcmds -h```
