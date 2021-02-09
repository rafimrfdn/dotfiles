set autoindent
set expandtab
set exrc
set hidden
set incsearch
set nobackup
set noerrorbells
set nohlsearch
set noswapfile
set nu
set relativenumber 
set scrolloff=8
set shiftwidth=4 
set smartindent
set tabstop=4 softtabstop=4
set termguicolors

set laststatus=2
set t_Co=256

"nnoremap <S-Up> :m-2<CR>
"nnoremap <S-Down> :m+<CR>
"inoremap <S-Up> <Esc>:m-2<CR> 
"inoremap <S-Down> <Esc>:m+<CR>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
