#!/bin/bash

source logging.sh

logging

read -p "Write data to the file: Yy/N?" answer

if [[ "$answer" == "y" || "$answer" == "Y" ]];
then 
filename="$(date +'%d_%m_%y').status"
logging>"$filename"
else 
echo "No logging"
fi