#!/bin/bash
echo "enter your age :"
read age 
if [[ -f $age ]]>18
then
    echo "you are an adult"
else
    echo "you are not an adult"
fi
