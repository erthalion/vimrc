#!/bin/sh

#sudo -- X :3 -ac & # Launches a new X session on display 3
X :3 -ac -layout 1024x780 & # Launches a new X session on display 3
sleep 10 # Forces the system to have a break for 2 seconds
#DISPLAY=:3 "/home/erthalion/GOG Games/Baldurs Gate 2 Enhanced Edition/start.sh"
#DISPLAY=:3 "/home/erthalion/loaded/HMM3/hmm3/startGAME"
cd "/home/erthalion/loaded/openmw/openmw-0.38.0-Linux-64Bit/"
#DISPLAY=:3 ./run_game.sh
#DISPLAY=:3 ./openmw-launcher
DISPLAY=:3 ./openmw
