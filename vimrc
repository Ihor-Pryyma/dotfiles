let mapleader = " "
syntax on
set number
set hlsearch
set showmode
set showcmd
set ignorecase
set smartcase
set noerrorbells
set belloff=esc
set tabstop=2             " Tab size of 4 spaces
set softtabstop=2         " On insert use 4 spaces for tab
set shiftwidth=2
set expandtab             " Use apropiate number of spaces
set nowrap                " Wrapping sucks (except on markdown)
autocmd BufRead,BufNewFile *.md,*.txt setlocal wrap " DO wrap on markdown files
set title
set noswapfile            " Do not leve any backup files
set mouse=a               " Enable mouse on all modes
set clipboard+=unnamed
set showmatch
set encoding=utf8
set wildmenu
set termguicolors
set guifont=hack_nerd_font:h11
set splitright splitbelow
set autoindent
set list lcs=tab:\¦\      "(here is a space)
set scrolloff=10
let &t_SI = "\e[6 q"      " Make cursor a line in insert
let &t_EI = "\e[2 q"      " Make cursor a line in insert

inoremap jk <Esc>
" Keep VisualMode after indent with > or <
vmap < <gv
vmap > >gv
"
" Move Visual blocks with J an K
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Autocomand to remember las editing position
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

let g:kite_supported_languages = ['python', 'javascript', 'typescript', 'bash']
