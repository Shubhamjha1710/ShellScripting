# There are certain special variables in shell which is represented by special
# characters. These variables are reserved for specific functions.

# Some of the special variables of shell script is list below 
#1. $0 : The filename of the current script.
#2. $n : Variables correspond to the arguments with which a script was invoked. 
# Here n is a positive decimal number corresponding to the position of an 
# argument (the first argument is $1, the second argument is $2, and so on).	
#3. $# : The number of arguments supplied to a script.
#4. $* : Returns list of all argument in double qouted string
#5. $@ : Returns list of all argument with individually qouted string
#6.	$? : The exit status of the last command executed.
#7. $$ : Returns the PID of current execution	
#8.	$! : Number of the last background command.

#!/bin/sh

echo "File Name: $0"
echo "PID of current shell: $$"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"
echo "PID of last background running process : $!"
echo "Exit status of process : $?"

# There are special variables that allow accessing all the command-line 
# arguments at once. Both the parameters specify the command-line arguments. 
# However, the "$*" special parameter takes the entire list as one argument 
# with spaces between and the "$@" special parameter takes the entire list 
# and separates it into separate arguments.

# Gives complete list of argument as one argument
echo "Use of * to get complete list of argument"
for TOKEN in "$*"
do
   echo $TOKEN
done

#Gives complete argument list of argument as separate arguments
echo "Use of @ to get complete list of argument"
for TOKEN in "$@"
do 
    echo $TOKEN
done