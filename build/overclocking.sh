#!/bin/bash

sudo -s
apt-get install -y ncurses-dev
git clone http://github.com/turionpowercontrol/tpc
cd tpc
make
make install
modprobe cpuid
modprobe msr
tpc -psmax 1

apt-add-repository 'deb http://downloads.linux.hpe.com/SDR/repo/mcp xenial current/non-free'
apt-get install -y hp-health --allow-unauthenticated
