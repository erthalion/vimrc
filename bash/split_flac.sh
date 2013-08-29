#!/bin/bash
#===============================================================================
#
#          FILE:  flac_split.sh
#
#         USAGE:  ./flac_split.sh ./flac_file.{flac,ape,wv} ./flack_file.cue
#===============================================================================
((COUNTER=0))
cuebreakpoints "$2" | shntool split -o flac "$1"
ALBUM="`cat "$2" | grep \^TITLE | sed 's/.*TITLE //g' | sed 's/"//g' | sed 's/.$//'`"
ARTIST="`cat "$2" | grep \^PERFORMER | sed 's/.*PERFORMER //g' | sed 's/"//g' | sed 's/.$//'`"
DIR_READY="$ARTIST - $ALBUM"
mkdir "$DIR_READY"
cat "$2" | grep TITLE | sed 's/.*TITLE//g' | sed 's/"//g'| while read rr;

        do
                num=`echo 0$COUNTER | grep -o ..$`
                mv ./split-track$num.flac "./$DIR_READY/$num `echo $rr | sed 's/.$//'`.flac"
                ((COUNTER++))
        done
