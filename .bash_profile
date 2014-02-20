if [ -f ~/.bashrc ]; then
 source ~/.bashrc
fi

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/garfield/.gvm/bin/gvm-init.sh" ]] && source "/Users/garfield/.gvm/bin/gvm-init.sh"
