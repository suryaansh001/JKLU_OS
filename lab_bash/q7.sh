#!/bin/bash

# echo "enter the filename"
filename="/home/sury/Desktop/jklu_os/lab_bash/t.txt"
if [ -f "$filename" ]
then
    cat "$filename"
else
    echo "$filename is not a file"
fi
