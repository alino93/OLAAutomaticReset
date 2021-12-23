#!/bin/bash
cd /home/pi/Downloads/CH341SER-master
make clean
make
sudo make load
sudo rmmod ch341
lsmod | grep ch34

