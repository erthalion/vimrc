#!/bin/bash

xdpyinfo -ext XINERAMA | sed '/^  head #/!d;s///' |
while IFS=' :x@,' read i w h x y; do
    import -window root -crop ${w}x$h+$x+$y screenshot-$(date +%F-%H%M%S-%N)-screen-$i.png
done
