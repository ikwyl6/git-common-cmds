# Created by ikwyl6@protonmail.com
# add 'source ~/git-common-cmds.sh' to your .bashrc file or place the below function it in.
#
# Function that displays the git common cmds by section depending if
# you pass it a parameter. Otherwise it prints the whole thing.
function gcmds() {
	cmd_expl_separator="|" # separator between your 'git command' and explaination
	table_header="Common Git Command (alias in braces),Description" # for 'column' cmd
	col_cmd="column -N '$table_header' -t -s'$cmd_expl_separator' -W2"
	sed_cmd="sed -n" # default sed cmd used when you are passing this function a param.
	sed_reg="-e '/^#.*/d'" # remove any comments from the file when passing it to 'column'
	f="~/.git-common" # Your file that holds all the git commands and explainations

	if [[ "$1" == "" ]]; then
		sed_cmd="sed"
	elif [[ "$1" == "--help" || "$1" == "-h" ]]; then
		echo "Usage gcmds [ i | a | d | b | p | l ]"
		echo -e "\ti: Just prints the GIT GENERAL section of the $f file" 
		echo -e "\ta: Print GIT ADD section of the $f file"
		echo -e "\td: Print GIT DIFF section of the $f file"
		echo -e "\tb: Print GIT BRANCHES section of $f file"
		echo -e "\tp: Print GIT PULL section of $f file"
		echo -e "\tl: Print GIT LOG section of $f file"
		echo -e "\tpr: Print GIT PULL REQUEST section of $f file"
	elif [[ "$1" == "--info" || "$1" == "-i" ]]; then
		sed_reg=$sed_reg" -e '/GIT\ GENERAL/,/^$/p'"
	elif [[ "$1" == "--add" || "$1" == "-a" ]]; then
		sed_reg=$sed_reg" -e '/GIT\ ADD/,/^$/p'"
	elif [[ "$1" == "--diff" || "$1" == "-d" ]]; then
		sed_reg=$sed_reg" -e '/GIT\ DIFF/,/^$/p'"
	elif [[ "$1" == "--branches" || "$1" == "-b" ]]; then
		sed_reg=$sed_reg" -e '/GIT\ BRANCHES/,/^$/p'"
	elif [[ "$1" == "--pull" || "$1" == "-p" ]]; then
		sed_reg=$sed_reg" -e '/GIT\ PULL/,/^$/p'"
	elif [[ "$1" == "--log" || "$1" == "-l" ]]; then
		sed_reg=$sed_reg" -e '/GIT\ LOG/,/^$/p'"
	elif [[ "$1" == "--pull-request" || "$1" == "-pr" ]]; then
		sed_reg=$sed_reg" -e '/GIT\ PULL\ REQUEST/,/^$/p'"
	fi
	# Run it
	eval "$sed_cmd $sed_reg $f | $col_cmd"
}

