autocmd! bufwritepost vimrc source % " Automatic reloading of .vimrc
 
" Autoload plugins
" -----------------------
execute pathogen#infect()
filetype plugin indent on

hi Normal guibg=NONE ctermbg=NONE
" Fix cursor in insert and normal mode 
" autocmd InsertEnter * : silent exec "!printf '\033]50;CursorShape=1\x7'" | exec ":redraw!"
" autocmd InsertLeave * : silent exec "!printf '\033]50;CursorShape=0\x7'" | exec ":redraw!"

" General configs
" ---------------------------------------------------------------------------------------------
set nocompatible                            " Break compatibility with vi
set history=700
set undolevels=700

" Colors
set guifont=Source\ Code\ Pro\ for\ Powerline
set t_Co=256                                " Use 256 colours 
color wombat256mod

set number " show line numbers

syntax on                                   " Show Syntax Highlight
set bs=2                                    " Make BackSpace Work
set enc=utf-8	                            " utf-8 by default
set encoding=utf-8
let mapleader = ","                         " Rebind <Leader> key

set clipboard=unnamed                       " use system clipboard
set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code
set showmatch                               " shows matching part of bracket pairs (), [], {}

set scrolloff=10                            " let 10 lines before/after cursor during scroll

set nobackup 	                            " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile 	                            " no swap files

" Shortcuts
" -----------------------------------------------------------------------------------------------
nmap <CR> o<Esc> " Insert new line with (Enter)
noremap <Leader>e :quit<CR> " Quit current window
noremap <Leader>E :qa!<CR> " Quit all windows


" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

vnoremap <Leader>s :sort<CR> " Sort lines (Visual Mode)



