#!/bin/sh
mplayer -vfm ffmpeg -lavdopts lowres=0:fast:skiploopfilter=all -vo xv -cache 2048 $*
