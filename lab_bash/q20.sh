#!/bin/bash

echo "starting to move directories"
current_dir=$(pwd)
echo "current directory is $current_dir"
mkdir "$current_dir/new_dir"

for dir in "$current_dir"/*
do
  if [ "$dir" != "$current_dir/new_dir" ]; then
    mv "$dir" "$current_dir/new_dir"
    echo "moved $dir to new_dir"
  fi
done