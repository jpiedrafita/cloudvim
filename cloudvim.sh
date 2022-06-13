#!/bin/bash
sudo yum update -y
sudo yum install -y git vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/christoomey/vim-tmux-navigator.git ~/.vim/pack/plugins/start/vim-tmux-navigator
wget -O - $HOME/.vimrc htts://raw.githubusercontent.com/jpiedrafita/cloudvim/main/.vimrc
