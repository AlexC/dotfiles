syntax on
set background=dark

" More powerful backspacing
set backspace=indent,eol,start

" I've no need for backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Easier searching
set smartcase
set hlsearch

" Indentation
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" Be more verbose in Visual mode & show cursor position
set showcmd
set ruler

" Show line numbers on the right hand side
set number

" Enabling loading of plugins and indent files
filetype plugin indent on

" Highlight trailing whitespace
match Todo /\s\+$/
