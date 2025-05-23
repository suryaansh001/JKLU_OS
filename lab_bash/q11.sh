#!/bin/bash
echo "enter the file name you want to check its exec or not"
read filename
if [[ -f "$filename" ]] && [[ -x "$filename" ]];
then 
echo "File exists and is executable"
echo "Executing the file"
echo "Output after executing  $filename"
echo "---------------------------------"
./"$filename"

else
echo "File either does not exist or is not executable"
fi
