#!/bin/bash

echo "listing files in the current directory:"

for file in *
do
    if [ -f "$file" ]; then
        echo "Filename: $file"
    fi
done