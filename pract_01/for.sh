#!/bin/bash

# examples for a "For loop"

for i in {1..6}
do
    echo "the value of i: $i"
done

echo -e "Next\n"

for j in {1..10..2}
do
    echo "the value of j: $j"
done
echo -e "Next\n"

for (( k = 1; k < 20; k++ ))
do
    echo "the value of k: $k"
done
