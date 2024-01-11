#!/bin/bash

source logging.sh
source color.sh

if [ $# != 4 ]
then 
echo "Number of arguments should be 4, not $#"
exit 0
fi

check_color "$1" "$2" "$3" "$4"

background_name="\e[4$(colorise "$1")m"
font_name="\e[3$(colorise "$2")m"
background_value="\e[4$(colorise "$3")m" 
font_value="\e[3$(colorise "$4")m"

logging "$background_name" "$font_name" "$background_value" "$font_value"