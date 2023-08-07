#!/bin/bash

# A simple backup program

if [ $# -eq 0 ]; then
    echo "Please enter a directory and destination backup directory"
    exit 1
fi
Dir=$1
Dest_Dir="$2"

if [ ! -d "$Dest_Dir" ]; then
    mkdir "$Dest_Dir"
fi

echo -e "Is there any file you want to exclude in your backup?\nEnter yes or no "
ls -1 $Dir
read Skip
if [ "$Skip" == "yes" ]; then
    echo "Enter file name"
    read Pass
elif [ "$Skip" == "no" ]; then
    echo "Okay"
fi

for file in "$Dir"/* ; do
    if [ "$(basename $file)" == "$Pass" ]; then
	continue
    else
	cp -r "$file" "$Dest_Dir"
    fi
done

echo "These are the all the files backed up:"
ls -1 "$Dest_Dir"
