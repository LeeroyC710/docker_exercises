#!/bin/bash

#Takes a filene and title as user input 
mkdir exercise2

#move into that directory
cd exercise2

#creates 2 .txt files
touch file1.txt 
touch file2.txt

#moves one of the file outside the directory
mv file1.txt ./..

#renames the file to test1.txt
mv ~/file1.txt ~/test1.txt

#renames the second file to test2.sh
mv ~/file2.txt ~/test2.sh

#make test2.sh a script that prints the working directory
bash./ test2.sh


echo # !/bin/bash" >> test2.sh
echo "pwd" >> test2.sh
echo "whoami" >> test2.sh
chmod +x test2.sh
./test2.sh

