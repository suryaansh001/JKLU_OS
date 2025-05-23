#!/bin/bash

echo "enter the file you want to delete"
read file

if [[ -f "$file" ]];then
  rm -rf "$file"
  echo "successfully removed $file"
else
  echo "error occured .Wither hte file does not exist or you area fool"
fi 
