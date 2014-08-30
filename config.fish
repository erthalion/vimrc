. /home/erthalion/build/fish-shell/share/fish/functions/fish_vi_mode.fish
. /home/erthalion/.config/fish/themes/fish_right_prompt.fish
. /home/erthalion/.config/fish/themes/fish_prompt.fish
. /etc/profile.d/autojump.fish
fish_vi_key_bindings

function fish_title
    echo $_
end

set fish_greeting ""

set -x EDITOR vim
set -x BROWSER 'chromium-browser'
set -x GREP_OPTIONS '--color=auto'
set -x GREP_COLOR '1;33'

#set -x GOROOT /usr/lib/go
set -x GOARCH amd64
set -x GOOS linux
#set -x GOBIN /usr/bin/go
set PATH /home/erthalion/bash /home/erthalion/.cabal/bin /home/erthalion/bin /home/erthalion/.local/bin /usr/local/bin /opt/bin $PATH

set -x AUTOJUMP_IGNORE_CASE 1
set -x AUTOJUMP_AUTOCOMPLETE_CMDS 'cp vim'

set -x CHROMIUM_FLAGS '--disk-cache-size=1 --media-cache-size=1'

set -x PYTHONDONTWRITEBYTECODE true
set -x PYTHONPATH /home/erthalion/.local/lib64/python2.7/site-packages/ $PYTHONPATH
set -x VIRTUAL_ENV_DISABLE_PROMPT 1

alias s='source .env/bin/activate.fish'
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias lastdiff='git lastdiff'
alias last='git last'
alias hist='git hist'
alias gout='git fetch; git log origin/master..'
alias gin='git fetch; git log ..origin/master'
alias goutshow='git fetch; git show origin/master..'
alias ginshow='git fetch; git show ..origin/master'
alias gt='gtc en ru '
alias ls='ls --color=always'
alias grep='grep --color=always'
alias vimread='vim -u ~/.vimrc_reading'

# by some reason keybinding is not working
# at the config.fish
# workaround - add to the share/fish/functions/fish_vi_key_bindings.fish
# bind -M insert \t accept-autosuggestion
# bind -M insert \co complete
