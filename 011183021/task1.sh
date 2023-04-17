#!/bin/bash
sum_of_series() {
    local n=$1
    local sum=0
    for (( i=1; i<=$n; i++ ))
    do
        sum=$((sum+i))
    done
    echo $sum
}

read -p "Enter a number: " n
while [[ $n -le 0 ]]
do
    read -p "Invalid input. Please enter a valid number: " n
done

result=$(sum_of_series $n)
echo "The sum is: $result"