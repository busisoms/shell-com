#!/bin/bash

# An example of While loops

num=0
while [ $num -le 15 ]
do
    echo "value of num is: $num"
    num=$((num + 1))
done


echo "Enter any text to start"
read Text
while [ $Text != "bye" ]
do
    echo $Text
    read Text
done
