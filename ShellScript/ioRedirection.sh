# Most Unix system commands take input from your terminal and send the 
# resulting output back to your terminal. 

# Output Redirection: The output from a command normally intended for standard 
# output (i.e terminal) can be easily diverted to a file instead. This 
# capability is known as output redirection.

# If the notation > file is appended to any command then output of that command 
# will be written to file instead of your terminal.

# Use > to overwrite the content
# Use >> to append the content

#!/bin/sh
echo "Printing table of 2 in file"
for((i=1;i<=10;i++))
do
    value=$((2*i))
    echo "2 * $i = $value" >> output.txt
done


# Input Redirection: Just as the output of a command can be redirected to a file
# So can the input of a command can be redirected from a file. 
# As the greater-than character > is used for output redirection, 
# the less-than character < is used to redirect the input of a command.


echo "Count the word count in output.txt file"

echo "Counting in file: $filename"
echo "----------------------------------"
echo "Lines:      $(wc -l < output.txt)"
echo "Words:      $(wc -w < output.txt)"
echo "Characters: $(wc -m < output.txt)"
echo "----------------------------------"