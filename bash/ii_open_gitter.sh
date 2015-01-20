#!/bin/sh

# multitail 6.2.1 with unicode use flag required for unicode support

export SERVER=localhost
export CHANNEL=$1

tmux rename-window $1
tmux splitw -v -p 30 'vim'
multitail -cS ii ~/irc/localhost/#$1/out
