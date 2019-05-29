#!/usr/bin/env bash

echo "=====> setup python and pip..."
bash < <(curl -sSL https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer)
pyenv update
easy_install pip
