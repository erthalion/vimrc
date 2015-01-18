#!/bin/sh

tmux rename-window $1
tmux splitw -v -p 30 'vim'
multitail -cS ii ~/irc/irc.freenode.net/#$1/out
