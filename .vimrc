syntax on
set background=dark

" More powerful backspacing
set backspace=indent,eol,start

" I've no need for backup and swap files
set nobackup
set nowritebackup
set noswapfile

" Easier searching
set ignorecase
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

" Show line numbers on the left hand side
set number

" Enabling loading of plugins and indent files
filetype plugin indent on

" Highlight trailing whitespace
match Todo /\s\+$/

" Vim max line width of 72
au FileType gitcommit set tw=72

"
" Custom key bindings
"
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

"
" VAM, Vim Addon Manager
" See https://github.com/MarcWeber/vim-addon-manager
"
fun SetupVAM()
  let vam_install_path = expand('$HOME') . '/.vim/vim-addons'
  exec 'set runtimepath+='.vam_install_path.'/vim-addon-manager'

  if !filereadable(vam_install_path.'/vim-addon-manager/.git/config') && 1 == confirm("git clone VAM into ".vam_install_path."?","&Y\n&N")
    " Install VAM from the Github repo
    exec '!p='.shellescape(vam_install_path).'; mkdir -p "$p" && cd "$p" && git clone --depth 1 git://github.com/MarcWeber/vim-addon-manager.git'
    exec 'helptags '.fnameescape(vam_install_path.'/vim-addon-manager/doc')
  endif

  call vam#ActivateAddons([
    \ "better-snipmate-snippet",
    \ "fugitive",
    \ "YouCompleteMe"
    \ ], {'auto_install' : 0})
endfun
call SetupVAM()
