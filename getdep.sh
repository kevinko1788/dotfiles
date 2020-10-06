#!/usr/bin/env bash

echo "Getting dependencies"

# Do something under GNU/Linux platform
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # ...
    apt-get install git
    apt-get install vim
    apt-get install zsh

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    chsh -s $(which zsh)

elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
fi

echo "Dependencies download complete"
