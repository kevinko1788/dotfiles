#! /bin/bash
#source getdep.sh
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "OS = Linux"
    sudo apt-get install git
    git config --global core.editor "vim"
    sudo apt-get install python3-pip
elif [[ "$OSTYPE" == "darwin"* ]]; then
    echo "OS = MacOS"
    #install Brew
    echo "Brew installing"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    echo "Brew install finished"
fi
echo "Linking dotfiles"
ln -sf dotfiles/vim/.vimrc ~/.vimrc
ln -sf dotfiles/zsh/.zshrc ~/.zshrc
ln -sf dotfiles/zsh/.zshenv ~/.zshenv
