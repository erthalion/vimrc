#!/bin/sh 

PROGSFILE=".proglist" 

proglist() { 
        paths=$(echo "$@" | sed 'y/:/ /') 
        ls -lL $paths 2>/dev/null | awk '$1 ~ /^[^d].*x/ && NF > 2 { print $NF }' | sort | uniq
} 
proglist $PATH >$PROGSFILE 
sh -c  "$(eval dmenu -b <$PROGSFILE)"
