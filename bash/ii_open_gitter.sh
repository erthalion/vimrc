#!/bin/sh

# multitail 6.2.1 with unicode use flag required for unicode support

tmux set-environment SERVER localhost
tmux set-environment CHANNEL $1

tmux rename-window $1
tmux splitw -v -p 30 'vim'
multitail -cS ii ~/irc/localhost/#$1/out
