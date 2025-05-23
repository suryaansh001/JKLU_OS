#!/bin/bash
echo "enter the name of file"
read file
if [[ -f "$file" ]];then 
echo "$file exists"
echo "reading the content of the file....."
cat $file
else
echo "$file does not exist"
fi