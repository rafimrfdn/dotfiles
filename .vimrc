set autoindent 
set expandtab
set exrc
set hidden
set incsearch
set nobackup
set noerrorbells
set nohlsearch
set noswapfile
set nu relativenumber
set scrolloff=8
set shiftwidth=4 
set smartindent
set tabstop=4 softtabstop=4
set termguicolors
syntax enable

set laststatus=2
set t_Co=256

"nnoremap <S-Up> :m-2<CR>
"nnoremap <S-Down> :m+<CR>
"inoremap <S-Up> <Esc>:m-2<CR> 
"inoremap <S-Down> <Esc>:m+<CR>

"remap jk menjadi esc di mode insert
"inoremap jk <Esc>

"nnoremap <A-j> :m .+1<CR>==
"nnoremap <A-k> :m .-2<CR>==
"inoremap <A-j> <Esc>:m .+1<CR>==gi
"inoremap <A-k> <Esc>:m .-2<CR>==gi
"vnoremap <A-j> :m '>+1<CR>gv=gv
"vnoremap <A-k> :m '<-2<CR>gv=gv

"Start NERDTree and leave the cursor in it.
"autocmd VimEnter * NERDTree
"nnoremap <leader>n :NERDTreeFocus<CR> 

let g:airline_theme='luna'

"leader is \ simbol on keyboard 
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <F3> :NERDTreeToggle<CR>

"map <F9> :Goyo <bar> <CR>

"call plug#begin('~/.vim/plugged')
"Plug 'junegunn/goyo.vim'
"call plug#end()

" when use ST Terminal and open VIM 
" you must set Vim-specific sequences for RGB colors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
