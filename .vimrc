set nocompatible
filetype off
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

set number
set mouse=a
set numberwidth=3
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
"set relativenumber
set laststatus=2
set autoindent expandtab tabstop=2 shiftwidth=2

set tabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1
set bg=dark

"Bindings
let mapleader=" "
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
