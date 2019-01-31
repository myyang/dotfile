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
call vundle#begin()

Plugin 'gmarik/vundle'

" Genernal
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mzlogin/vim-markdown-toc'

Plugin 'tpope/vim-fugitive'

" Autocomplete
"Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" GDB
Plugin 'vim-scripts/Conque-GDB'

" Markup
Plugin 'Rykka/riv.vim'
Plugin 'plasticboy/vim-markdown'

" Python
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'

" Go
Plugin 'fatih/vim-go'

" Solidlity
Plugin 'tomlion/vim-solidity'

call vundle#end()

filetype plugin indent on

"General and other...
set modeline
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
set ruler           "lower right info
set number
set encoding=utf-8
set spelllang=en
set ve=block


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
set background=dark
highlight ColorColumn ctermbg=8

"search
set hlsearch    "highlight
set smartcase   "search case when input with case
set incsearch   "search like browser

"statusline
set laststatus=2
if has('statusline')
    "set statusline=%#Question#                          "highlighting
    set statusline+=%<%f%r%*%m                          "filename, readonly, modified
    set statusline+=%y                                  "filetype
    "set statusline+=%#Question#                         "highlighting
    set statusline+=\ [%{(&fenc==\"\"?&enc:&fenc)}]\    "encoding
    set statusline+=%=                                  "left/right-aligned separator
    set statusline+=0x%-8B\                             "character code under cursor
    set statusline+=%l-%c\ %P                           "line-column percentage
endif

"mapping

"mapping incrasing number to ctrl-i becase c-a would be caught by tmux
map <C-i> <C-a> 
nmap <leader>o o<Esc>
imap <C-X> <Esc>:w<CR>\x

map <C-D> :ConqueGdb
map <leader>2 :NERDTreeToggle<CR>
nmap <leader>8 :TagbarToggle<CR>


"auto complete
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsListSnippets="<C-u>"
let g:UltiSnipsJumpForwardTrigger="<C-k>"
let g:UltiSnipsJumpBackwardTrigger="<C-l>"
let g:UltiSnipsEditSplit="context"
let g:UltiSnipsSnippetsDir="~/.vim/ultisnips"
let g:UltiSnipsSnippetDirectories = ["UltiSnips", "~/.vim/ultisnips"]
"let g:deoplete#enable_at_startup = 1

"ctrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

set cm=blowfish
