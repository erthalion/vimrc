export EDITOR=vim
export HISTSIZE=10000
set -o vi

#for go
export GOROOT=/usr/lib/go
export GOARCH=amd64
export GOOS=linux
export GOBIN=/usr/bin/go
export PATH=$GOBIN:$PATH

# main alias
alias gt='gtc en ru '
alias ls='ls --color=always'
alias grep='grep --color=always'

export GREP_OPTIONS='--color=auto'
#export GREP_COLOR='5;38' #мигающий
export GREP_COLOR='1;33' #ярко-желный на черном

export PS1="\n\[\033[1;37m\]\342\224\214($(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[02;32m\]\u\[\033[02;35m\]@\h'; fi)\[\033[1;37m\])\342\224\200(\$(if [[ \$? == 0 ]]; then echo \"\[\033[01;32m\]\342\234\223\"; else echo \"\[\033[01;31m\]\342\234\227\"; fi)\[\033[1;37m\])\342\224\200(\[\033[0;96m\]\A \d\[\033[1;37m\])\[\033[01;31m\]\$(vcprompt --format '[%s:%b]')\[\033[1;37m\]\n\342\224\224\342\224\200(\[\033[1;32m\]\W\[\033[1;37m\])\342\224\200(\[\033[1;32m\]\$(ls -1 | wc -l | sed 's: ::g') files, \$(ls -lah | grep -m 1 total | sed 's/total //')b\[\033[1;37m\])\342\224\200> \[\033[0m\]"

ORACLE_HOM=E/usr/lib/oracle/xe/app/oracle/product/10.2.0/server

PATH=$PATH:/home/erthalion/bash:/opt/intel/bin:/home/erthalion/.cabal/bin:ORACLE_HOME:/home/erthalion/programs/root/bin:/usr/local/heroku/bin:/home/erthalion/.gem/ruby/1.9.1/bin:/home/erthalion/bin
export ORACLE_HOME
export ORACLE_SID=XE
export PATH

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias lastdiff='git lastdiff'
alias last='git last'
alias hist='git hist'
alias gout='git fetch && git log origin/master..'
alias gin='git fetch && git log ..origin/master'

source ~/.git_completion.bash
source ~/.hg_completion.bash

export EC2_PRIVATE_KEY=/home/erthalion/.sss/erthalion.pem
export EC2_CERT=/home/erthalion/.sss/erthalion.pem
