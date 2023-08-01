#!/bin/bash

echo "Enter a number between 0 and 10"
read NUM
GEN=$((RANDOM % 10 + 1))

if [ $NUM = $GEN ] ; then
    echo "You WIN!!!"
else
    echo "You LOSS :("
    echo "The number was $GEN"
fi
