function logging {
HOSTNAME=$HOSTNAME
TIMEZONE=$(timedatectl | awk 'FNR == 4 {printf "%-s\n", $0}')
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

echo "HOSTNAME = $HOSTNAME" 
echo "TIMEZONE = ${TIMEZONE#*: }"
echo "USER = $USER"
echo "OS = $OSTYPE"
echo "DATE = $DATE"
echo "UPTIME = UPTIME"
echo "UPTIME_SEC = $UPTIME_SEC"
echo "IP = $IP"
echo "MASK =$MASK"
echo "GETAWAY = $GETAWAY"
echo "RAM_TOTAL = $RAM_TOTAL"
echo "RAM_USED = $RAM_USED"
echo "RAM__FREE = $RAM_FREE"
echo "SPACE_ROOT = $SPACE_ROOT"
echo "SPACE_ROOT_USED = $SPACE_ROOT_USED"
echo "SPACE_ROOT_FREE = $SPACE_ROOT_FREE"
}