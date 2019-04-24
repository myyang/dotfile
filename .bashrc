#garfield.yang .bashrc

#setup prompt
function parse_git_branch { 
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
}
PS1="[\[\e[0;36m\]\A \[\e[0m\]>\[\e[0;33m\]\W \[\e[0;31m\]\$(parse_git_branch)\[\e[0m\]]\[\e[0;36m\]\\$ \[\e[0m\]"

# color schema
CLICOLOR=1
LSCOLORS=GxFxCxDxBxegedabagaced

# lazzzzzzzzzzy
alias v="vim"
alias vi="vim"
alias l="ls -valhG"
alias grep="grep --color=auto"

alias rm="rm -i"
alias mv="mv -i"

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# ptt
alias ptt="ssh bbsu@ptt.cc"

#post export (Naming or params exptected)
export PS1 CLICOLOR LSCOLORS
export EDITOR=/usr/bin/vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# quick file encryption
alias encrypt="openssl aes-256-cbc -a -in " # + filename [-out target.file]
alias decrypt="openssl aes-256-cbc -a -d -in " # + filename [-out target.file]
