" My own config begin here
set nu relativenumber
set autoindent 
set expandtab
set exrc
"set hidden
set incsearch
set nobackup
set noerrorbells
set nohlsearch
set noswapfile
set shiftwidth=2 
set smartindent
set tabstop=2 softtabstop=2
"syntax on
"set termguicolors

" toggle to show and hide number
nnoremap <F10> <CMD>set nonumber norelativenumber<CR>
nnoremap <F10> <CMD>set nonumber! norelativenumber!<CR>

"copy and paste to another windows
vnoremap <C-c> "+y        
" use shift+ctrl+v to paste using kitty terminal, but if not use this below
"map <C-v> "+p

" toggle to show launch in Goyo mode
map <F9> :Goyo <bar> <CR>

" toogle to show nerdtree
nnoremap <F3> :NERDTreeToggle<CR>

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'junegunn/goyo.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Then run :PlugInstall to install theese plugins above
" It will automatically created plugin directory on .vim/plugged/
" Initialize plugin system
call plug#end() 

" set Netrw as default file explorer instead of NerdTree    
" default open with :Explore or :Sexplore or :Vexplore or :Sex    
let g:netrw_banner = 0    
