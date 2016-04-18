if [ -f ~/.bashrc ]; then
 source ~/.bashrc
fi

if [ -f ~/.host_alias ]; then
    source ~/.host_alias
fi

if [ -f ~/.devrc ]; then
    source ~/.devrc
fi
