#!/bin/bash

SEARCH_URL='https://duckduckgo.com/?q='
QUERY=$(echo '' | dmenu -p "Search:" -fn 'xft:DejaVu Sans Mono:size=9:antialias=true' -sb "#000000" -nb "#000000" -b < ~/.sitelist)

if [[ ${QUERY} =~ ^http ]]; then
    dwb "${QUERY}"
elif [ -n "$QUERY" ]; then
    dwb "${SEARCH_URL}${QUERY}"
fi
