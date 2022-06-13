#!/bin/bash
sudo yum update -y
sudo yum install -y git vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/christoomey/vim-tmux-navigator.git ~/.vim/pack/plugins/start/vim-tmux-navigator
wget $HOME/.vimrc https://raw.githubusercontent.com/jpiedrafita/cloudvim/master/.vimrc
echo "source $HOME/aliases" >> $HOME/.bashrc
wget $HOME/aliases https://raw.githubusercontent.com/jpiedrafita/cloudvim/master/aliases
