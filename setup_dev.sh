#!/usr/bin/env bash

pkgi=unknown
this="$(uname)"
if [ "$this" == "Darwin" ]; then
    # OSX
    echo "=====> setup  homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    pkgi="brew install "
elif [ "$this" == "Linux" ]; then
    # assume debian
    pkgi="apt-get install -y "
fi

if [ "$pkgi" == "unknown" ]; then
    echo "Error: No expected package management"
    exit 1
fi

echo "=====> installing tools"
$pkgi git bash-completion make bison binutils gcc cmake curl tig tmux shellcheck cscope ctags

echo "=====> setup TMUX plugin manager"
if [ ! -d "$HOME/.tmux" ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    git clone https://github.com/tmux-plugins/tmux-resurrect ~/.tmux/plugins/tmux-resurrect
    git clone https://github.com/tmux-plugins/tmux-continuum ~/.tmux/plugins/tmux-continuum
fi
