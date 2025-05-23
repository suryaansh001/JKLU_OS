#!/bin/bash

curr_dir=$(pwd)
echo "teh current directory is $curr_dir"
echo "creating 3 new directory in $curr_dir"

for i in {1..3}
do
  mkdir "dir_$i"
done
echo "new directories created"