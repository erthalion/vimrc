#!/bin/sh

tmux splitw -v -p 30 'vim'
multitail -cS ii ~/irc/irc.freenode.net/#$1/out
