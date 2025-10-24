#!/bin/sh


# Variables in shell script
# A variable is a character string to which we assign a value. The value assigned could be a number, text, 
# filename, device, or any other type of data.

# The name of a variable can contain only letters (a to z or A to Z), numbers(0 to 9) or the _ character.
# By convention, Unix shell variables will have their names in UPPERCASE.
# Example : _ALI, TOKEN_A, VAR_1, VAR_2

# Defining variables and accessing it
VAR_1="Shubham Jha"
VAR_2=1000

echo $VAR_1
echo $VAR_2

# Read only variables : You use readonly keyword to make a variable readonly
readonly VAR_1
# VAR_1 = "Shubham Kumar"  This line will give error, VAR_1: readonly variable

# Unsetting variables : Unsetting or deleting a variable directs the shell to 
# remove the variable from the list of variables that it tracks. You can't unset
# readonly variable

# Syntax: unset variable_name
unset VAR_2
echo $VAR_2

# There are three types of variable in shell script
# 1. Local Variables: A local variable exists only inside a function within 
# a script. Outside the function, it’s not accessible.

# 2. Environment Variables: An environment variable is available to any child 
# process of the shell. Some programs need environment variables in order to 
# function correctly. 

# 3. Shell Variables: A shell variable is a special variable that is set by the 
# shell and is required by the shell in order to function correctly. Some of 
# these variables are environment variables whereas others are local variables.
# In this case VAR_1 and VAR_2 are shell variables
