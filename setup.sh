#!/usr/bin/env bash

# backup
old='/_old_dot_file/'
[ -d $HOME$old ]||$(mkdir $HOME$old)
if [ -d $HOME/.vim ];then
    mv $HOME/.vim $HOME$old/.vim
    echo "mv .vim"
fi
if [ -f $HOME/.vimrc ];then
    mv $HOME/.vimrc $HOME$old/.vimrc
    echo "mv .vimrc"
fi
if [ -f $HOME/.bashrc ];then
    mv $HOME/.bashrc $HOME$old/.bashrc
    echo "mv .bashrc"
fi
if [ -f $HOME/.bash_profile ];then
    mv $HOME/.bash_profile $HOME$old/.bash_profile
    echo "mv .bash_profile"
fi

# link
DIR=$(pwd)
ln -Fs $DIR/.bashrc ~/.bashrc
ln -Fs $DIR/.bash_profile ~/.bash_profile
ln -Fs $DIR/.vim ~/.vim
ln -Fs $DIR/.vimrc ~/.vimrc
ln -Fs $DIR/.screenrc ~/.screenrc
