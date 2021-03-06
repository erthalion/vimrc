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
alias goutshow='git fetch && git show origin/master..'
alias ginshow='git fetch && git show ..origin/master'

export EC2_PRIVATE_KEY=/home/erthalion/.sss/erthalion.pem
export EC2_CERT=/home/erthalion/.sss/erthalion.pem

#Чтобы одинаковые команды не сохранялись в истории, добавьте строчку:
HISTCONTROL=ignoredups
#Не добавлять запись в историю команд, если команда начинается с пробела:
HISTCONTROL=ignorespace
#стираются все повторения, в том числе идущие не подряд, но в разной последовательности. (например, после cd..ls..cd..ls останется cd и ls)
HISTCONTROL=erasedups
# Чтобы история команд сохранялась сразу после ввода (а не во время закрытия терминала)
shopt -s histappend
PROMPT_COMMAND='history -a'

if [ -f /etc/bash_completion ]; then
. /etc/bash_completion
fi

source ~/programms/django/extras/django_bash_completion
source ~/.git_completion.bash
source ~/.hg_completion.bash

# if there is no autojump.bash - copy from repo 
# https://raw.githubusercontent.com/joelthelion/autojump/master/bin/autojump.bash
source /etc/profile.d/autojump.bash

#for change directory without cs
shopt -s autocd

export AUTOJUMP_IGNORE_CASE=1
export AUTOJUMP_AUTOCOMPLETE_CMDS='cp vim'

function newdir {
    mkdir -p "$*";
    cd "$*";
}

export CHROMIUM_FLAGS='--disk-cache-size=1 --media-cache-size=1'
export PYTHONDONTWRITEBYTECODE=true

alias s='source .env/bin/activate'
