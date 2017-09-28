#!/bin/sh

if [ ! -d "$HOME/.yadr" ]; then
    echo "Installing YADR for the first time"
    git clone https://github.com/sumukh/dotfiles.git "$HOME/.yadr"
    cd "$HOME/.yadr"
    git checkout sumukh
    [ "$1" = "ask" ] && export ASK="true"
    rake install
else
    echo "YADR is already installed"
fi
