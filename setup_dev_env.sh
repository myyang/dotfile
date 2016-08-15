#!/usr/bin/env bash

echo "----- setup dev -----"

pkgi=unknow
this=`uname`
if [ "$this" == "Darwin" ]; then
    # OSX
    echo "=====> setup  homebrew..."
    if [ ! -f /usr/local/bin/brew ]; then
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        echo "homebrew installed!"
    fi
    pkgi="/usr/local/bin/brew install "
elif [ "$this" == "Linux" ]; then
    # assume debian
    pkgi="apt-get install -y "
fi

if [ "$pkgi" == "unknow" ]; then
    echo "Error: No expected package management"
    exit 1
fi

echo "=====> installing cmd and git"
$pkgi git git-flow bash-completion make bison binutils gcc

echo "=====> setup python and pip..."
bash < <(curl -sSL https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer)
pyenv update 
easy_install pip

echo "=====> setup gvm ..."
bash < <(curl -sSL https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

echo "----- finish -----"
