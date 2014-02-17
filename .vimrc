" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'supertab'
Bundle 'klen/python-mode'
Bundle 'git://github.com/davidhalter/jedi-vim'


syntax on
filetype plugin indent on

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set number
set cindent 
set autoindent

map <F2> :NERDTreeToggle<CR>

" my config
set ruler
set wrap
set hlsearch
"set statusline
