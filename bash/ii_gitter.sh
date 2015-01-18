#!/bin/sh

# pass, nickname, fullname from https://irc.gitter.im/
# stunnel configuration:
#
# $ cat /etc/stunnel/stunnel.conf
# client = yes
# [irc.gitter.im]
# accept = 6667
# connect = irc.gitter.im:6667

# $ sudo /etc/initd/stunnel start

export IIPASS="pass"
ii -s localhost -n nickname -k IIPASS -f "fullname" &
sleep 10
echo "/j #ruHaskell/forall"> ~/irc/localhost/in
