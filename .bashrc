#garfield.yang .bashrc

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

#setup prompt
function parse_git_branch { 
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
}
PS1="[\[\e[0;36m\]\A \[\e[0m\]>\[\e[0;33m\]\W \[\e[0;31m\]\$(parse_git_branch)\[\e[0m\]]\[\e[0;36m\]\\$ \[\e[0m\]"

#ls
CLICOLOR=1
LSCOLORS=GxFxCxDxBxegedabagaced

# virtualenv
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# lazzzzzzzzzzy
alias v="vim"
alias l="ls -valhG"
alias grep="grep --color=auto"

alias rm="rm -i"
alias mv="mv -i"

#export
export PS1 CLICOLOR LSCOLORS
export EDITOR=/usr/bin/vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# ptt
alias ptt="ssh bbsu@ptt.cc"
