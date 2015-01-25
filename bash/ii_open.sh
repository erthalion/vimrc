#!/bin/sh

tmux set-environment SERVER irc.freenode.net
tmux set-environment CHANNEL $1

tmux rename-window $1
tmux splitw -v -p 30 'vim'
multitail -cS ii ~/irc/irc.freenode.net/#$1/out
