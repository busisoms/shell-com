#!/bin/bash

echo "Please enter Username"
read USER

if [ "${USER,,}" = "busiso" ]; then
    echo "Welcome back $USER"
elif [ "${USER,,}" = "help" ]; then
    echo "Just enter your username and password"
else
    echo "Sorry, try again"
fi

