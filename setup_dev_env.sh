#!/usr/bin/env bash

echo "=====> setup..."

echo "=====> setup  homebrew..."
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

echo "=====> setup git..."
/usr/local/bin/brew install git
/usr/local/bin/brew install git-flow

echo "=====> setup pip..."
sudo easy_install pip
sudo pip install yolk # yolk -V [pkg]: list availabe pkg version

echo "=====> setup virtualenv & wrapper..."
sudo pip install virtualenv
sudo pip install virtualenvwrapper


echo "=====> setup ruby-env, build"
/usr/local/bin/brew install rbenv ruby-build rbenv-gem-rehash
