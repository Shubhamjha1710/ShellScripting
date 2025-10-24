# The break statement is used to terminate the execution of the entire loop, 
#after completing the execution of all of the lines of code up to the break 
#statement.

#break  ->  will work as normally like in cpp or other language
#break n -> used to exit from a nested loop, n specifies the nth enclosing loop 
#to the exit from.


#!/bin/sh

a=0
while ((a < 10))
do
   echo $a
   if (( a == 5))
   then
        echo "While loop breaked...."
        break
   fi
   a=$((a+1))
done


echo "Using break command with argument..."
for((i=1;i<=5;i++))
do
    for((j=11;j<=15;j++))
    do
        for((k=31;k<=35;k++))
        do
            if((i == 3 && j == 12))
            then
                echo "breaking second inner loop for i = $i and j = $j"
                break 2
            else
                echo "i:$i j:$j k:$k"
            fi
        done
   done
done

# Continue statement
# The continue statement is similar to the break command, except that it 
# causes the current iteration of the loop to exit, rather than the entire loop.

#continue ->  will skip current iteration of loop
#continue n ->  will skip current iteration of ith loop

echo "Using continue command with argument..."
for((i=1;i<=5;i++))
do
    for((j=11;j<=15;j++))
    do
        for((k=31;k<=35;k++))
        do
            if((j == 12))
            then
                echo "skip second inner loop j = $j"
                continue 2
            else
                echo "i:$i j:$j k:$k"
            fi
        done
   done
done