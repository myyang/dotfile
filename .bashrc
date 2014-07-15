#garfield.yang .bashrc

#setup prompt
function parse_git_branch { 
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
}
#PS1="[\[\e[0;36m\]\A \[\e[0;32m\]\u\[\e[0m\]@\[\e[0;35m\]\h\[\e[0m\]>\[\e[0;33m\]\W \[\e[0;31m\]\$(parse_git_branch)\[\e[0m\]]\[\e[0;36m\]\\$ \[\e[0m\]"
PS1="[\[\e[0;36m\]\A \[\e[0m\]>\[\e[0;33m\]\W \[\e[0;31m\]\$(parse_git_branch)\[\e[0m\]]\[\e[0;36m\]\\$ \[\e[0m\]"

#ls
CLICOLOR=1
LSCOLORS=GxFxCxDxBxegedabagaced

# virtualenv
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# mysql on imac
#alias mysql=/usr/local/mysql/bin/mysql
#alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias sqlserver="sudo /Library/StartupItems/MySQLCOM/MySQLCOM"
#PATH=${PATH}:/usr/local/mysql/bin

#hadoop
export PATH="$PATH:/usr/local/Cellar/hadoop/1.2.1/libxec/bin"

# lazzzzzzzzzzy
alias v="vim"
alias l="ls -valhG"
alias grep="grep --color=auto"

alias rm="rm -i"
alias mv="mv -i"

#export
export PS1 CLICOLOR LSCOLORS

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/garfield/.gvm/bin/gvm-init.sh" ]] && source "/Users/garfield/.gvm/bin/gvm-init.sh"
