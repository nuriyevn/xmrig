#!/bin/bash
# install firewalld from universe
# open ports 22 17990 80 443 17988
#firewall-cmd --zone=public --add-port=22/tcp --permanent
# firewall-cmd --reload
# apt-get install ssh
# service sshd restart
# sudo su
# passwd ubuntu
# *****
# ssh ubuntu@192.168.1.107
 
add-apt-repository universe && apt-get -y update && sudo apt-get  -y install firewalld git vim build-essential cmake libuv1-dev libmicrohttpd-dev && git clone https://github.com/nuriyevn/xmrig.git && cd xmrig && cd build && cmake .. && make 
#overclocking
apt-get install -y ncurses-dev ipmitool && cd ../.. && git clone http://github.com/turionpowercontrol/tpc && cd tpc && make && make install && modprobe cpuid && modprobe msr && tpc -psmax 1 && ipmitool sensor #last line show power consumption
#apt-add-repository 'deb http://downloads.linux.hpe.com/SDR/repo/mcp xenial current/non-free'
#apt-get install -y hp-health --allow-unauthenticated
cd .. && cd xmrig && cd build && ./xmrig
