#!/bin/bash

function colorise (){
    if [ -n "$1" ]
then
case "$1" in
1) echo 7 ;;
2) echo 1 ;;
3) echo 2 ;;
4) echo 4 ;;
5) echo 5 ;;
6) echo 0 ;;
esac
fi
}

function check_color (){
if [ "$1" == "$2" -o "$3" == "$4" ]
then
echo "column background and font color should not match. Please correct the input"
exit 0
fi 

    while [ -n "$1" ]
do
if ! [[ $1 =~ ^-?[0-9]+$ ]]
then
echo "given parameter $1 is not an integer"
exit 0
elif [ "$1" -lt 0 -o "$1" -gt 6 ] 
then
echo "given parameter $1 is out of range. Value must be between 1 and 6"
exit 0
fi
shift
done
}

