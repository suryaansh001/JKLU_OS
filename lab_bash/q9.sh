#!/bin/bash

echo "current working directory is $(pwd)"
echo "enter the name of the file"
read filename

# file_check(){
#   if [[ -f "$filename" ]]
#   then
#     echo "$filename exists"
#   elsekk
#     echo "$filename does not exists in $(pwd)"
#   fi

# }
# file_check 

# alternate
file_check2(){
  if [ -f "$filename" ];
  then
  echo "$filename exists"
  else
    echo "$filename does not exists in $(pwd)"
  fi
}
file_check2
