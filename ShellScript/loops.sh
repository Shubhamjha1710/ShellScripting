#!/bin/sh

#There are different types of loop statement in shell
#1. while loop: condition is true
echo "While loop......"
a=1
while ((a<5))
do
    echo "Count: $a"
    ((a++))
done

#2. for loop: iterating over list / range / condition holds
echo "For loop........"
echo "Variation 1. Simple Range"
for i in 1 2 3 4 5
do
    echo "Number: $i"
done


echo "Variation 2. Using brace expansion"
for i in {1..5}
do
    echo "Number: $i"
done

echo "Variation 3. C-Style loop"
for (( i=1; i<=5; i++ ))
do
    echo "Iteration: $i"
done


#3. until loop: condition is false
echo "Until loop......"
a=1
until [ $a -gt 5 ]
do
    echo "Count: $a"
    ((a++))
done

#4. Select loop: Used for menus / user choices — automatically numbers 
#options and reads input.

echo "Choose your favorite language:"
select lang in "Python" "Java" "Go" "C++" "Exit"
do
    case $lang in
        "Python") echo "You chose Python!";;
        "Java") echo "You chose Java!";;
        "Go") echo "You chose Go!";;
        "C++") echo "You chose C++!";;
        "Exit") echo "Goodbye!"; break;;
        *) echo "Invalid option!";;
    esac
done

#Nesting Loops
#All the loops support nesting concept which means you can put one loop inside
#another similar one or different loops. This nesting can go up to unlimited 
#number of times based on your requirement.

echo "Printing triangle pattern using nested loop"
currLine=1
while ((currLine < 10))
do
    for ((i=1; i<=currLine; i++))
    do
        printf "%s " "$i"
    done
    echo
    currLine=$((currLine+1))
done
