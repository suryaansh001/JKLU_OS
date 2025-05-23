#!/bin/bash

echo "Files with names starting with 'error' in the current directory..."
curr_dir=$(pwd)
cd $curr_dir
file_list=$(ls | grep "error")
echo "List items: $file_list"
count=0

for file in $file_list
do
    if [ -f "$file" ]; then
        count=$((count + 1))
        echo "$count : $file"
        rm "$file"
        echo "Deleted $file"
    fi
done
echo "Files found: $count"
echo "Kuch toh hua h :)."