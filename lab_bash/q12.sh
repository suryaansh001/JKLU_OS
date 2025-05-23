#!/bin/bash
echo "enter the username you want to check"
read username
# using username\b so that it matches completely as the grep find substrings as well
if (who | grep "$username\b");then
echo "user is logged in"
else
echo "user is not logged in"
fi