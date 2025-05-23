#!/bin/bash

echo "script name: $0"
echo "np. of arguments: $#"
echo "all arguments: $@"
ls /nonexistent_directory
echo "Exit status of the last command: $?"

echo "enter the filename "
read filename