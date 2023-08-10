#!/bin/bash
function File {
    # think you are inside the file
    # Change here
    echo "print the arguments"
    echo $1 $2 $3
    echo $#
}

# Do not change anything
if [ ! $# -lt 1 ]; then
    File $*
    exit 0
fi

# change here
# here you can pass the arguments
bash $0 shell is fun
