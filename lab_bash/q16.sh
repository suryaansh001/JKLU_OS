#!/bin/bash

echo "enter teh password"
read password
ACTUAL_PASSWORD="password"
while [ "$password" != "$ACTUAL_PASSWORD" ]
do
    echo "wrong password,Try again"
    read password
done