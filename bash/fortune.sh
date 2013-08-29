#!/bin/sh
strfile $1 $1.dat
sudo cp $1 /usr/share/fortune/
sudo cp $1.dat /usr/share/fortune/
