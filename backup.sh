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


for file in "$Dir"/* ; do
    cp -r "$file" "$Dest_Dir"
done

echo "These are the all the files backed up:"
ls -1 "$Dest_Dir"
