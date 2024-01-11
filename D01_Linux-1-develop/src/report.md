## Part 1. Installation of the OS
1. Version check 
- ![part1 - Ubunty version](../materials/1part.png)

## Part 2. Creating a user
1. User is added 
- ![part2 - User is added](../materials/2part1.png)
2. Cat /etc/passwd command output 
- ![part2 - cat /etc/passwd command output](../materials/2part.png)

## Part 3. Setting up the OS network
1. Hostname is changed 
- ![part3 - Ubunty version](../materials/3part1.png)
2. Timezone is changed 
- ![part3 - Timezone is changed ](../materials/3part2.png)
3. Network interfaces
- Names of network intefaces are showed 
- ![part3 - Names of network intefaces are showed](../materials/3part3.png)
- lo interface - (loopback device) is a virtual interface present by default in any Linux. It is used to debug network programs and run server applications on the local machine. This interface is always associated with the address 127.0.0.1. It has a DNS name - localhost. You can view the binding in the /etc/hosts file.
4. DHCP
- IP is fetched 
- ![part3 - IP is fetched](../materials/3part4.png)
- DHCP - Dynamic Host Configuration Protocol 
5. IP
- IP address of getaway 
- ![part3 - IP address of getaway](../materials/3part33.png) 
- Default IP adress 
- ![part3 - Default IP adress](../materials/3part34.png)
6. Static settings are set 
- ![part3 - static ip](../materials/static.png)
7. Pinging
- Ping 1.1.1.1 
- ![part3 - ping 1](../materials/ping1.png)
- Ping ya
- ![part3 - ping ya](../materials/ping_ya.png)

## Part 4. OS Update
1. Update is done 
- ![part4 - Update is done](../materials/4part.png)

## Part 5. Using the sudo command
1. sudo is a program for Unix-like computer operating systems that enables users to run programs with the security privileges of another user, by default the superuser.It originally stood for "superuser do". The main idea is to give users as few rights as possible, while still being sufficient to solve the assigned tasks.
Name is chтпув
- ![part5 - Name is changed](../materials/5part.png)

## Part 6. Installing and configuring the time service
- Date is shown 
- ![part6 - Date is shown](../materials/6part.png)
- Output of command 
- ![part6 - Output of command](../materials/6part1.png)

## Part 7. Installing and using text editors
1. Creating file
- Vim file is created 
- ![part7 - Vim file is created ](../materials/vim1.png)
:wq - is used for exit with saving

- nano file is created 
- ![part7 - nano file is created ](../materials/nano1.png)
- To exit with saving press CTRL+X, type y, then type name of the file

- emacs1 file is created 
- ![part7 - emacs1 file is created ](../materials/emacs1.png)
- To exit with saving press CTRL+X, followed by CTRL+S, then type y, then type yes
2. Changing file
- Vim file is changed 
- ![part7 - Vim file is changed ](../materials/vim2.png)
:q! - is used for exit without saving

- nano file is changed 
- ![part7 - nano file is changed ](../materials/nano2.png)
- To exit without saving press CTRL+X, type n

- emacs1 file is changed 
- ![part7 - emacs1 file is changed ](../materials/emacs2.png)
- To exit without saving press CTRL+X, followed by CTRL+c, then type n, then type yes
3. Searcing and replacing a word
- Vim file: search for a word 
- ![part7 - Vim file: search for a word ](../materials/vim3.png)
Vim file: replace a word 
- ![part7 - Vim file: replace a word ](../materials/vim4.png)

- nano file: search for a word ctrl + w 
- ![part7 - nano file: search for a word ](../materials/nano3.png)
- nano file: replace a word  ctrl +\ 
- ![part7 - nano file: replace a word ](../materials/nano4.png)

- emacs file: search for a word ctrl + s 
- ![part7 - emacs file: search for a word ](../materials/emacs3.png)
- emacs file: replace a word  alt +x 
- ![part7 - emacs file: replace a word ](../materials/emacs4.png)

## Part 8. Installing and basic setup of the SSHD service
1. $ sudo apt install openssh-server
2. $ sudo systemctl enable ssh.service
3. sudo nano /etc/ssh/sshd_config
Port is changed 
- ![part8 - Port is changed ](../materials/8part.png)
4. PS
- Process SSHd is shown 
- ![part8 - Process SSHd is shown](../materials/8part2.png)
- ps - report a snapshot of the current processes.
- -A - Select all processes.  Identical to -e.
5. Netstat
- netstat -tan 
- ![part8 - netstat -tan ](../materials/8part3.png)
- -tan - Represents every TCP connection without DNS resolution (rather than displays IP addresses).
- The first column (proto stands for protocol) lists all of the transmission control protocol (TCP) and user datagram protocol (UDP) connections on the machine running Netstat.
The second and the third columns represent the numer of querries received and sent. High Recv-Q means the data is put on TCP/IP receive buffer, but the application does not call recv() to copy it from TCP/IP buffer to the application buffer. High Send-Q means the data is put on TCP/IP send buffer, but it is not sent or it is sent but not ACKed.
The forth column is the machine’s local IP address and the fifth is a port number, while the sixth is the remote or foreign address and port number. 
The final column is called State, which is the state that the connection, or potential connection, is in.

## Part 9. Installing and using the top, htop utilities
1. top
- top 
- ![part9 - top ](../materials/9part.png)
- Uptime - 18 min
- Users - 1
- Total system load - 0.03, 0.04, 0.07
- Number of processes - 95
- CPu load - 0.05%
- memory load - 16%
- 1498 - pid of the process with the highest memory usage 
- ![part9 - highest memory usage ](../materials/9part2.png)
- 1834 - pid of the process taking the most CPU time 
- ![part9 - top ](../materials/9part1.png)
2. htop
- htop sorted by pid 
- ![part9 - sorted by pid ](../materials/pid.png)
- htop sorted by cpu 
- ![part9 - sorted by cpu ](../materials/cpu.png)
- htop sorted by mem 
- ![part9 - sorted by mem ](../materials/mem.png)
- htop sorted by time 
- ![part9 - sorted by time ](../materials/time.png)
- htop filtered by sshd 
- ![part9 - filtered by sshd](../materials/sshd.png)
- htop searched for syslog 
- ![part9 - searched for syslog ](../materials/syslog.png)
- htop: hostname, clock and uptime added 
- ![part9 - hostname, clock and uptime added  ](../materials/columns.png)

## Part 10. Using the fdisk utility
1. fdisk: name, capacity, number of sectors 
- ![part10 - name, capacity, number of sectors](../materials/10part.png)
2. swap size 
- ![part10 - swap size](../materials/swap.png)

## Part 11. Using the df utility
1. df: partition size, space used, space free, percentage used
- ![part11 - df](../materials/11part.png)
the measurement unit is Kb
2. df -Th: partition size, space used, space free, percentage used
- ![part11 - df -Th](../materials/11part1.png)
the system type is ext4

## Part 12. Using the du utility
1. du 
- ![part12 - du](../materials/12part0.png)
2. du -h -s /home, /var, /var/log 
- ![part12 - du -s /home, /var, /var/log](../materials/12part.png)
3. du -h /var/log 
- ![part12 - du  /var/log](../materials/12part2.png)

## Part 13. Installing and using the ncdu utility
1. sudo apt install ncdu
2. using ncdu
- ncdu /home, /var 
- ![part13 - /home, /var](../materials/13part.png)
- ncdu /var/log 
- ![part13 - ncdu  /var/log](../materials/13part1.png)

## Part 14. Working with system logs
1. the last successful login time, user name and login method in the report 
- ![part14 - log](../materials/14part.png)
2. restart ssh 
- ![part14 - restart ssh](../materials/14part1.png)

## Part 15. Using the CRON job scheduler
1. crating task
- lines in the system logs 
- ![part15 - uptime](../materials/15part.png)
- crontab -l
- ![part15 - crontab](../materials/15part1.png)
2. removing task
- crontab -r 
- ![part15 - crontab](../materials/15part2.png)