#!/bin/bash

function logging() {
HOSTNAME=$HOSTNAME
TIMEZONE=$(timedatectl | grep "Time zone")
DATE=$(date +"%d %b %Y %H:%M:%S")
UPTIME=$(uptime -p)
UPTIME_SEC=$(cat /proc/uptime | grep -o "^[^ ]*")
IP=$(hostname -I)
MASK=$(ifconfig enp0s3 | awk '/netmask/{split($4,a,":"); print a[1]}')
GETAWAY=$(ip -4 route show default)
RAM_TOTAL=$(free --mega  -t| awk 'FNR == 2 {printf "%.3fGb\n", $2/1024}')
RAM_USED=$(free --mega  -t| awk 'FNR == 2 {printf "%.3fGb\n", $3/1024}')
RAM_FREE=$(free --mega  -t| awk 'FNR == 2 {printf "%.3fGb\n", $4/1024}')
SPACE_ROOT=$(df --block-size=K /root/| awk 'FNR ==2{printf "%.2fMb\n", $2/1024}')
SPACE_ROOT_USED=$(df --block-size=K /root/| awk 'FNR ==2{printf "%.2fMb\n", $3/1024}')
SPACE_ROOT_FREE=$(df --block-size=K /root/| awk 'FNR ==2{printf "%.2fMb\n", $4/1024}')

echo -e "$1$2HOSTNAME\e[0m = $3$4$HOSTNAME\e[0m" 
echo -e "$1$2TIMEZONE\e[0m = $3$4${TIMEZONE#*: }\e[0m"
echo -e "$1$2USER\e[0m = $3$4$USER\e[0m"
echo -e "$1$2OS\e[0m = $3$4$OSTYPE\e[0m"
echo -e "$1$2DATE\e[0m = $3$4$DATE\e[0m"
echo -e "$1$2UPTIME\e[0m = $3$4$UPTIME\e[0m"
echo -e "$1$2UPTIME_SEC\e[0m = $3$4$UPTIME_SEC\e[0m"
echo -e "$1$2IP\e[0m = $3$4$IP\e[0m"
echo -e "$1$2MASK\e[0m = $3$4$MASK\e[0m"
echo -e "$1$2GETAWAY\e[0m = $3$4$GETAWAY\e[0m"
echo -e "$1$2RAM_TOTAL\e[0m = $3$4$RAM_TOTAL\e[0m"
echo -e "$1$2RAM_USED\e[0m = $3$4$RAM_USED\e[0m"
echo -e "$1$2RAM__FREE\e[0m = $3$4$RAM_FREE\e[0m"
echo -e "$1$2SPACE_ROOT\e[0m = $3$4$SPACE_ROOT\e[0m"
echo -e "$1$2SPACE_ROOT_USED\e[0m = $3$4$SPACE_ROOT_USED\e[0m"
echo -e "$1$2SPACE_ROOT_FREE\e[0m = $3$4$SPACE_ROOT_FREE\e[0m"
}