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
    while [ -n "$1" ]
do
if [ "$1" -lt 0 -o "$1" -gt 6 ]
then
echo "given parameter $1 is out of range. Value must be between 1 and 6"
exit 0
fi
shift
done
}

function  color_scheme (){
    if [ -n "$1" ]
then
case "$1" in
1) echo "1 (white)";;
2) echo "2 (red)" ;;
3) echo "3 (green)" ;;
4) echo "4 (blue)" ;;
5) echo "5 (purple)" ;;
6) echo "6 (black)" ;;
esac
fi
}

function  color_spelling (){
    if [ -n "$1" ]
then
case "$1" in
1) echo " (white)";;
2) echo " (red)" ;;
3) echo " (green)" ;;
4) echo " (blue)" ;;
5) echo " (purple)" ;;
6) echo " (black)" ;;
esac
fi
}