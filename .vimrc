" Configuration file for vim

"no .swp/backup file
au BufWrite /private/tmp/crontab.* set nowritebackup
au BufWrite /private/etc/pw.* set nowritebackup

filetype off                   " required!

" auto-detect vundle ref=>http://blog.chh.tw/posts/vim-vundle/
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree'
Bundle 'supertab'
Bundle 'klen/python-mode'
Bundle 'git://github.com/davidhalter/jedi-vim'


filetype plugin indent on

"General and other...
set modelines=0		" CVE-2007-2438
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
set ruler           "lower right info
set number


"text, tab, indent
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autoindent
set smartindent
set wrap

"color
syntax on
"colorscheme desert
set background=dark

"search
set hlsearch    "highlight
set ignorecase  "ignore case when searching
set smartcase   "search case when input with case
set incsearch   "search like browser

"statusline
set laststatus=2
if has('statusline')
    "set statusline=%#Question#                          "highlighting
    set statusline+=%<%f%r%*%m                          "filename, readonly, modified
    "set statusline+=%#Question#                         "highlighting
    set statusline+=\ [%{(&fenc==\"\"?&enc:&fenc)}]\    "encoding
    set statusline+=%=                                  "left/right-aligned separator
    set statusline+=0x%-8B\                             "character code under cursor
    set statusline+=%l-%c\ %P                           "line-column percentage
endif

"mapping
map <F2> :NERDTreeToggle<CR>
"mapping incrasing number to ctrl-i becase c-a would be caught by tmux
map <C-i> <C-a> 
