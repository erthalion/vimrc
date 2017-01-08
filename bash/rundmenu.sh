#!/bin/sh 

PROGSFILE="/home/erthalion/.proglist"

proglist() { 
        paths=$(echo "$@" | sed 'y/:/ /') 
        ls -lL $paths 2>/dev/null | awk '$1 ~ /^[^d].*x/ && NF > 2 { print $NF }' | sort | uniq
} 

if [ ! -f ~/.proglist ]; then
    proglist $PATH >$PROGSFILE
fi
#sh -c  "$(dmenu -fn 'termius-10' -b <$PROGSFILE)"
#sh -c  "$(dmenu -fn 'Monoid-10' -b <$PROGSFILE)"
sh -c  "$(dmenu -fn 'xft:DejaVu Sans Mono:size=9:antialias=true' -sb "#000000" -nb "#000000" -b <$PROGSFILE)"
