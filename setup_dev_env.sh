#!/usr/bin/env bash

echo "----- setup dev -----"

pkgi=unknow
this=`uname`
if [ "$this" == "Darwin" ]; then
    # OSX
    echo "=====> setup  homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    pkgi="/usr/local/bin/brew install "
elif [ "$this" == "Linux" ]; then
    # assume debian
    pkgi="sudo apt-get install -y "
fi

echo "=====> installing cmd and git"
$pkgi git git-flow bash-completion

echo "=====> setup python and pip..."
bash < <(curl -sSL https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer)
pyenv update 
sudo easy_install pip

echo "=====> setup gvm ..."
bash < <(curl -sSL https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

echo "----- finish -----"
