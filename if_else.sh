#!/bin/bash

# This is an explanation of if_else in bash

echo starting if_else construct

if [ -e /home/vagrant/shell-com/my_vim_file ] ;
then
    less /home/vagrant/shell-com/my_vim_file
else
    echo does not exist
fi
