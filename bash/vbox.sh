#! /usr/bin/env bash
sudo modprobe vboxdrv 
sudo modprobe vboxnetadp
sudo modprobe vboxnetflt
sudo /usr/bin/VirtualBox
