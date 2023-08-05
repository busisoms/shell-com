#!/bin/bash

# List and sort directories
if [ $# -eq 0 ]; then
    echo "Please enter at least one directory path."
    exit 1
    fi
echo -e "How do you want the list sorted?\nEnter 'a' for accending and 'd' for decending"
read sort

if [ $sort == "a" ] ; then
    ls -1 $*
elif [ $sort == "d" ]; then
    ls -1r $*
else
    echo "Please enter 'a' or 'd'"
fi
