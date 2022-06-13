#!/bin/bash
sudo yum update -y
sudo yum install -y git vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/christoomey/vim-tmux-navigator.git ~/.vim/pack/plugins/start/vim-tmux-navigator
wget -O - $HOME/.vimrc https://raw.githubusercontent.com/jpiedrafita/cloudvim/master/.vimrc
wget -O - $HOME/.bashrc https://raw.githubusercontent.com/jpiedrafita/cloudvim/master/.bashrc
wget -O - $HOME/aliases https://raw.githubusercontent.com/jpiedrafita/cloudvim/master/aliases
