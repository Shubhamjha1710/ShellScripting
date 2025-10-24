#!/bin/bash

#In shell scripting there are multiple situation when we have to make one
#decisions out of two options. So you need to make use of conditional statements 
#that allow your program to make correct decision and perform the right actions.

#In Unix shell there two types of conditional statements
#1. The if...else statement
#2. The case...esac statement 

#If Else statement
#If else statements are useful decision-making statements which can be used 
#to select an option from a given set of options.
# Unix Shell supports following forms of if else statement, fi means end of if

#1. if...fi statement
num=10

if [ "$num" -gt 5 ]
then
    echo "$num is greater than 5"
fi

#2. if...else...fi statement
num=3
if [ "$num" -ge 5 ]
then
    echo "$num is greater than or equal to 5"
else
    echo "$num is less than 5"
fi

#3. if...elif...else...fi statement
num=0
if [ "$num" -gt 0 ]
then
    echo "Number is positive"
elif [ "$num" -lt 0 ]
then
    echo "Number is negative"
else
    echo "Number is zero"
fi

#case...esac Statement  (switch-case likg)
#You can use multiple if...elif statements to perform a multiway branch. 
#However, this is not always the best solution, especially when all of the 
#branches depend on the value of a single variable.

#Unix Shell supports case...esac statement which handles exactly this situation
#and it does so more efficiently than repeated if...elif statements.
#Syntax: 
# case <variable> in
#     pattern1)
#         commands
#         ;;
#     pattern2)
#         commands
#         ;;
#     *)
#         commands  # default case
#         ;;
# esac

#Each case pattern ends with ).
#Each block ends with ;; (like a break statement).
# * is the default case (like default: in other languages).

echo "Enter your favorite fruit:"
read fruit

case $fruit in
    apple|Apple)
        echo "You choose Apple!"
        ;;
    banana|Banana)
        echo "You choose Bananas!!"
        ;;
    mango|Mango)
        echo "You choose Mangoes!!!"
        ;;
    *)
        echo "Selected some other fruit!!!!"
        ;;
esac