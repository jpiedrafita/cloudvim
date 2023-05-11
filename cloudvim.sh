#!/bin/bash

if command -v apt-get &> /dev/null; then
    echo "Using apt-get"
    sudo apt-get update -y
    sudo apt-get install -y git vim
elif command -v yum &> /dev/null; then
    sudo yum update -y
    sudo yum install -y git vim


git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/christoomey/vim-tmux-navigator.git ~/.vim/pack/plugins/start/vim-tmux-navigator
wget $HOME/.vimrc https://raw.githubusercontent.com/jpiedrafita/cloudvim/master/.vimrc
echo "source $HOME/aliases" >> $HOME/.bashrc
wget $HOME/aliases https://raw.githubusercontent.com/jpiedrafita/cloudvim/master/aliases
export PS1="\n\e[1;32m[\u@\h \W]\$ \e[m "
# export PS1='\n\[\033[01;32m\]\u@\H:\[\033[02;36m\] \w \$\[\033[00m\] '
