runtime ./plug.vim
runtime ./mappings.vim

" Show numbers
set number
set numberwidth=5

" Add hybrid line numbers
set number relativenumber

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" set title in console title bar
set title

" map leader key to ,
let mapleader = ","

" Lua config
lua require("init")

" Add color config
lua require("colors")
