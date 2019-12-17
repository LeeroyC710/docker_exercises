#!/bin/bash 
#a script that takes a file as user input and returns whether the file exists and if so, the full path to that file.
echo "Please enter the name of the file"
read fileName

if [ -f "$FILE" ]; then
    echo "$FILE exist"
else 
    echo "$FILE does not exist"
fi

