# A shell variable is capable enough to hold a single value. These variables 
# are called scalar variables.

# Shell can support array variables: This can hold multiple values at the same 
# time. Arrays provide a method of grouping a set of variables. Instead of 
# creating a new name for each variable that is required, you can use a 
# single array variable that stores all the other variables.
# Syntax: array_name[index]=value

#!/bin/sh

NAMES[0]="Shubham"
NAMES[1]="Rishabh"
NAMES[2]="Himanshu"
NAMES[3]="Shruti"
NAMES[4]="Aryan"

echo "First Index: ${NAMES[0]}"
echo "Second Index: ${NAMES[1]}"

# To print the complete array at once use below command
echo "Complete Array: ${NAMES[*]}"
echo "Complete Array: ${NAMES[@]}"

# Creating a array from command 
IDX=0;
for TOKEN in "$@"
do 
    ARGUMENTS[IDX]="$TOKEN";
    ((IDX++));
done

echo "Complete List of argument: ${ARGUMENTS[*]}";