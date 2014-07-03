#!/usr/bin/env bash

echo "=====> setup..."

echo "=====> setup  homebrew..."
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

echo "=====> setup git..."
brew install git

echo "=====> setup pip..."
sudo easy_install pip

echo "=====> setup virtualenv & wrapper..."
pip install virtualenv
pip install virtualenvwrapper
