#!/bin/bash

function fibonacci() {
    if [ $1 -le 1 ]; then
        echo $1
    else
        echo $(( $(fibonacci $(( $1 - 1 ))) + $(fibonacci $(( $1 - 2 ))) ))
    fi
}

if [ $1 -lt 0 ]; then
    echo "Invalid input. Please enter a non-negative integer."
else
    echo "The $1-th Fibonacci number is: $(fibonacci $1)"
fi