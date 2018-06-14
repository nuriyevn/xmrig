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
 
add-apt-repository universe && apt-get -y update && sudo apt-get  -y install firewalld git vim build-essential cmake libuv1-dev libmicrohttpd-dev && git clone https://github.com/nuriyevn/xmrig.git && cd xmrig && cd build && cmake .. && make && ./xmrig
