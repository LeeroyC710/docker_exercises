#!/bin/bash

#Takes a filename and title as user input
echo "Enter filename"
read fileName

#Creates (if it doesn't exist) a directory named the current month and year
echo "enter title"
read title
cd /home/ubuntu/trainer_meetings

if [ -d "$(date "+%m-%d-%Y")";
#Creates a markdown file inside that directory with the users filename and the date on the end.
mkdir $Date

#While also entering the title and date at the top of the file.
#Stretch Goal: Try and get the script to take you to that directory and stay there.

