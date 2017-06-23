" for US keyboard
noremap ; :
noremap : ;

" kihon
set incsearch
set hlsearch
set smarttab
set title
set backspace=2
set laststatus=2
set statusline=%t\ %m%r%h%w[%Y][%{&fenc}][%{&ff}]%=%c,%l%11p%%
set directory=~/.vim/swp
set guioptions-=m
set nobackup
set nu

" for indent
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent

" encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932

" iroiro
set ambiwidth=double
set number
set ruler
set ttyfast
set list
set listchars=tab:▸\ ,
set wildmode=list:longest,full
set background=dark

