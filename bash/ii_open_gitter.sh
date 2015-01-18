#!/bin/sh

# multitail 6.2.1 with unicode use flag required for unicode support

tmux splitw -v -p 30 'vim'
multitail -cS ii ~/irc/localhost/#$1/out
