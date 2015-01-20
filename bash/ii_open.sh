#!/bin/sh

export SERVER=irc.freenode.net
export CHANNEL=$1

tmux rename-window $1
tmux splitw -v -p 30 'vim'
multitail -cS ii ~/irc/irc.freenode.net/#$1/out
