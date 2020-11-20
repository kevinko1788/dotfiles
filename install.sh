#! /bin/bash
#source getdep.sh
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "OS = Linux"
    sudo apt-get install git python3-pip htop cmake zsh net-tools
    git config --global core.editor "vim"
    #install ohmyzsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    
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
ln -sf dotfiles/tmux/.tmux.conf ~/.tmux.conf

