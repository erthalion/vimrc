#!/bin/sh
#
# Public domain
# Author: roman [] tsisyk.com
#
# Usage: ./me url [youtube-dl parameters]
#

COOKIE_FILE=/var/tmp/youtube-dl-cookies.txt
mplayer -dumpstream -vfm ffmpeg -lavdopts lowres=0:fast:skiploopfilter=all -vo xv -cache 8192 -cookies -cookies-file ${COOKIE_FILE} $(youtube-dl -g --cookies ${COOKIE_FILE} $*)
