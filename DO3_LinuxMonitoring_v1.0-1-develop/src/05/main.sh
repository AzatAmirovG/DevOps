#!/bin/bash

source logging.sh

if [[ ! -n $1 ]]
    then 
    echo "Write a path"
elif [ "${1: -1}" != "/" ]; 
    then 
    echo "Error: expected '/' at the end of the path."
elif [[ ! -d $1 ]]; 
    then 
    echo "Path is not existing"
else  logging $1
fi