#!/bin/bash

# An example of switch cases

echo "Please enter yes or no "
read text

case $text
in
    yes)
	echo you said yes;;
    no)
	echo you said no;;
    *)
	echo "i don't understand";;
esac

