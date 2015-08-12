set autowrite
set cinoptions=g0
set colorcolumn=80
set completeopt-=preview
set t_Co=16
set expandtab
set hidden
"set background=dark
set ignorecase
set laststatus=2
set matchpairs+=<:>
set noswapfile
set nowrap
set number
set report=0
set shell=/bin/bash
set shiftwidth=4
set smartcase
set tabstop=4
set tags=./tags;
set title
set undodir=~/.vim/undo
set undofile
set viminfo='100,h

nmap <down> gj
nmap <up> gk
vmap <down> gj
vmap <up> gk
imap <down> <c-o>gj
imap <up> <c-o>gk


filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Bundle "gmarik/Vundle.vim"
Bundle "altercation/vim-colors-solarized"
Bundle "Valloric/YouCompleteMe"
Bundle "vim-scripts/a.vim"
Bundle "kien/rainbow_parentheses.vim"
Bundle "bogado/file-line"
Bundle "bling/vim-airline"
call vundle#end()

filetype plugin indent on

let solarized_termtrans=1
syntax enable
colorscheme solarized

let g:alternateExtensions_h="cc,c,cpp,cxx,CC"

autocmd BufReadPost * if &readonly | setlocal nomodifiable | else | setlocal modifiable | endif

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let x = (((((((((0)))))))))

let g:rbpt_colorpairs = [
            \ ['DarkYellow',   'DarkYellow'],
            \ ['LightRed',     'LightRed'],
            \ ['DarkRed',      'DarkRed'],
            \ ['DarkMagenta',  'DarkMagenta'],
            \ ['LightMagenta', 'LightMagenta'],
            \ ['DarkBlue',     'DarkBlue'],
            \ ['DarkCyan',     'DarkCyan'],
            \ ['DarkGreen',    'DarkGreen']
            \ ]

nmap Q <nop>
