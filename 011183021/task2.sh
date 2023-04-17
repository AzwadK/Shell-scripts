#!/bin/bash

if [ -f "$1" ]; then
    echo "$(realpath $1)"
else
    touch ~/Documents/$1
    echo "$(realpath ~/Documents/$1)"
fi