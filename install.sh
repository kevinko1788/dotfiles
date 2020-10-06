#! /bin/bash
#source getdep.sh
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "OS = Linux"
    sudo apt-get install git
    git config --global core.editor "vim"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "OS = MacOS" 
fi
ln -sf dotfiles/vim/.vimrc ~/.vimrc
ln -sf dotfiles/zsh/.zshrc ~/.zshrc
ln -sf dotfiles/zsh/.zshenv ~/.zshenv
