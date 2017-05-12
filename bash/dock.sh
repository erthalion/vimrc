#! /bin/bash
# rediscover monitors and keyboard to work after undock/dock

autorandr --load docked
setxkbmap -layout us,de,ru -option "grp:alt_shift_toggle,grp_led:scroll"
