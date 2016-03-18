" vundle stuff
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

"set t_Co=256

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

autocmd FileType make set tabstop=8 shiftwidth=8 noexpandtab
autocmd FileType c set tabstop=8 shiftwidth=8 noexpandtab

"show bracket match
set showmatch

"highlight searched word
set hlsearch

"show line numbers
set number

set title

"show column
set colorcolumn=80

set laststatus=2

execute pathogen#infect()

let myrc = getcwd().'/.vim'
if filereadable(myrc)
        execute 'source '.fnameescape(myrc)
endif
