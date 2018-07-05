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
