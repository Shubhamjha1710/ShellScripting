# Functions in shell are similar to subroutines, procedures, and functions
# in other programming languages.

# Function syntax
# function_name () { 
#    list of commands
# }

#!/bin/sh

# Normal function
Hello () {
   echo "Hello World"
}

# parameterized function: You can define a function that will accept parameters 
# while calling the function. These parameters would be represented by $1, $2 
# and so on.

Parameterized_func() {
    echo "Arguments received in function call"
    for parameter in "$@" 
    do 
        echo $parameter
    done
}

Add() {
    echo "Adding number received from argument"
    total=0
    for num in "$@"
    do 
        total=$((total+num))
    done

    echo $total
    # returning 0 to show the status
    return 0
}

# Returning the value for function:
# By return keyword: This is not actual data (like a number or string). It’s 
# just a status code. So you can only return no. between 0-255 
# By using echo : Normally echo prints to the terminal. But $( ... ) captures 
# that output and stores it in a variable.

Hello
Parameterized_func Shubham Kumar Jha
total_sum=$(Add 10 20 30 40)
echo "Total Sum : $total_sum"