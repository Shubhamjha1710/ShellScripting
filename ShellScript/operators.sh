# There are various operators supported by each shell. There are following 
# operators in shell
# 1. Arithmetic Operators
# 2. Relational Operators
# 3. Boolean Operators
# 4. String Operators
# 5. File Test Operators

# Bourne shell didn't originally have any mechanism to perform simple arithmetic
# operations but it uses external programs, either awk or expr.

# The following points need to be considered while adding −
# There must be spaces between operators and expressions. For example, 
# 2&plus;2 is not correct; it should be written as 2 &plus; 2.
# The complete expression should be enclosed between `` called the backtick.


#!/bin/sh
val=`expr 2 + 2`
echo "Total value : $val"

a=10
b=20

echo "Arithmetic Operators......."

# Arithmetic Operators
# Assume variable a holds 10 and variable b holds 20 then
#1. Addition : `expr $a + $b` will give 30
addition=`expr $a + $b`
echo "Addition: $addition"

#2. Substraction: `expr $a - $b` will give -10
substraction=`expr $a - $b`
echo "Substraction: $substraction"

#3. Multiplication: `expr $a \* $b` will give 200
multiplication=`expr $a \* $b`
echo "Multiplication: $multiplication"

#4. Division: `expr $b / $a` will give 2
division=`expr $b / $a`
echo "Division: $division"

# 5. Modulus:  `expr $b % $a` will give 0
modulus=`expr $b % $a`
echo "Modulus: $modulus"

# 6. Assignment: a = $b would assign value of b into a

#7. Equality: [ $a == $b ] would return false.
if [ $a == $b ]; then
    echo "Equality :Equal"
else
    echo "Equality :Not Equal"
fi

#8. Not Equality: [ $a != $b ] would return true.
if [ $a != $b ]; then
    echo "Not Equality :Not Equal"
else
    echo "Not Equality :Equal"
fi

#This equality and no equality is not an expression it is a command. So it
#returns status codes that why you can not store the result in variables.
#It is very important to understand that all the conditional expressions should 
#be inside square braces with spaces around them,

echo "Relational Operators......."
#Relational Operators
#1. -eq : Equal to operator
if [ "10" -eq "10" ]; then
    echo "10 is equal to 10"
fi

#2. -ne : Not Equal to operator
if [ "$a" -ne "$b" ]; then
    echo "$a is not equal to b $b"
fi

#3. -lt : Less than operator
if [ "$a" -lt "$b" ]; then
    echo "$a is less than $b"
fi

#4. -gt : Greater than operator
if [ "20" -gt "10" ]; then
    echo "20 is greater than 10"
fi

#5. -ge : Greater than or equal to operator
if [ "$a" -ge "$b" ]; then
    echo "$a is greater than or equal to $b"
fi

#6. -le : Less than or equal to operator
if [ "80" -le "80" ]; then
    echo "80 is less than or equal to 80"
fi

#Boolean operator
echo "Boolean Operator......."
#1. OR operator -o
if [ "$a" -lt "$b" -o "$b" -gt 100 ]
then
    echo "$a is less than $b  or  $b is greater than 100"
fi

#1. AND operator -a
if [ "$a" -lt "$b" -a "$b" -gt 1 ]
then
    echo "$a is less than $b  and  $b is greater than 1"
fi

#3. NOT operator ! 
if [ !false ]
then
    echo "False testing"
fi


#There are other type of operator also like string operator and file operator
