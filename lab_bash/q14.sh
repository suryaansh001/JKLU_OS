#!/bin/bash

while [ 1 -gt 0 ]
do
  echo "enter your name"
  read name
  if [ "$name" == "quit" ]; then
    break
  else
    echo "your name is $name"
  fi
done


# -gt: greater than
# -lt: less than
# -ge: greater than or equal to
# -le: less than or equal to
# -eq: equal to
# -ne: not equal to