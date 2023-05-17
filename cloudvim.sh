#!/bin/bash

set -x

if command -v apt-get &> /dev/null; then
    echo "Using apt-get"
    sudo apt-get update -y
    sudo apt-get install -y git vim
elif command -v yum &> /dev/null; then
    sudo yum update -y
    sudo yum install -y git vim
fi

#shell
#export PS1="\n\e[1;32m[\u@\h \W]\$ \e[m "
echo 'export PS1="\n\e[1;32m[\u@\h \W]\$ \e[m "' >> ~/.bashrc


echo "source $HOME/aliases" >> $HOME/.bashrc
 
wget $HOME/aliases https://raw.githubusercontent.com/jpiedrafita/cloudvim/master/aliases

#Vim
wget $HOME/.vimrc https://raw.githubusercontent.com/jpiedrafita/cloudvim/master/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/christoomey/vim-tmux-navigator.git ~/.vim/pack/plugins/start/vim-tmux-navigator
vim +PluginInstall +qall

source $HOME/.bashrc

set +x