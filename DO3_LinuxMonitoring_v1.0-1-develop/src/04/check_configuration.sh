#!/bin/bash

function check_configuration {
configuration_array=(9 9 9 9)
default_array=(6 1 2 4)
output_color_array=(f f f f)

configuration_array[0]=${column1_background-'default'}
configuration_array[1]=${column1_font_color-'default'}
configuration_array[2]=${column2_background-'default'}
configuration_array[3]=${column2_font_color-'default'}

for index in ${!configuration_array[*]}
do
output_color_array[$index]=$(color_scheme ${configuration_array[$index]})
if [[ "${configuration_array[$index]}" == "default" ]];
then
    configuration_array[$index]=${default_array[$index]}
    output_color_array[$index]="default $(color_spelling ${default_array[$index]})"
fi 
done

check_color ${configuration_array[0]} ${configuration_array[1]} ${configuration_array[2]} ${configuration_array[3]}

background_name="\e[4$(colorise "${configuration_array[0]}")m"
font_name="\e[3$(colorise "${configuration_array[1]}")m"
background_value="\e[4$(colorise "${configuration_array[2]}")m" 
font_value="\e[3$(colorise "${configuration_array[3]}")m"
}
