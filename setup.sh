#!/usr/bin/env bash

# backup
old='/_old_dot_file/'
[ -d $HOME$old ]||$(mkdir $HOME$old)
if [ -d $HOME/.vim ];then
    mv $HOME/.vim $HOME$old/.vim
    echo "mv .vim"
fi
for f in .vimrc .bashrc .bash_profile
do
    if [ -f $HOME/$f ];then
        mv $HOME/$f $HOME$old/$f
        echo "mv $f to $HOME$old/$f"
    fi
done

# link
DIR=$(pwd)
for f in .bashrc .bash_profile .vim .vimrc .screenrc .tmux_conf
do
    ln -Fs $DIR/$f ~/$f
done
