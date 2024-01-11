#!/bin/bash

source logging.sh
source color.sh
source configuration.conf
source check_configuration.sh

check_configuration
logging "$background_name" "$font_name" "$background_value" "$font_value"


echo -e "\nColumn 1 background = ${output_color_array[0]}"
echo "Column 1 font color = ${output_color_array[1]}"
echo "Column 2 background = ${output_color_array[2]}"
echo "Column 2 font color = ${output_color_array[3]}"
