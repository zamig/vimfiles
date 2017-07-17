"-------------------------------------------------
" file:     ~/.vimrc
" author:   jason ryan - http://jasonwryan.com/
" vim:fenc=utf-8:nu:ai:si:et:ts=4:sw=4:ft=vim
"-------------------------------------------------

syntax on
filetype plugin on
filetype indent on

set t_Co=256                            " ALL the colours…
set ttyfast                             " don't lag…
set cursorline                          " track position
set nocompatible                        " leave the old ways behind…
set nowrap                              " don't wrap lines
set nobackup                            " disable backup files (filename~)
set splitbelow                          " place new files below the current
set showmatch                           " matching brackets & the like
set clipboard+=unnamed                  " yank and copy to X clipboard
set encoding=utf-8                      " UTF-8 encoding for all new files
set backspace=2                         " full backspacing capabilities (indent,eol,start)
set scrolloff=10                        " keep 10 lines of context
set number                              " show line numbers
set ww=b,s,h,l,<,>,[,]                  " whichwrap -- left/right keys can traverse up/down
set linebreak                           " attempt to wrap lines cleanly
set wildmenu                            " enhanced tab-completion shows all matching cmds in a popup menu
set wildmode=list:longest,full          " full completion options
set spelllang=en_gb                     " real English spelling
set dictionary+=/usr/share/dict/words   " use standard dictionary

" tabs and indenting
set tabstop=4                           " tabs appear as n number of columns
set shiftwidth=4                        " n cols for auto-indenting
set expandtab                           " spaces instead of tabs
set autoindent                          " auto indents next new line

" searching
set hlsearch                            " highlight all search results
set incsearch                           " increment search
set ignorecase                          " case-insensitive search
set smartcase                           " uppercase causes case-sensitive search

" keep cursor centered
:nnoremap j jzz
:nnoremap k kzz

" space bar un-highlights search
:noremap <silent> <Space> :silent noh<Bar>echo<CR>

" Allows writing to files with root priviledges
cmap w!! w !sudo tee % > /dev/null

" disable syntax highlighting in vimdiff...
if &diff | syntax off | endif

" My Own .vimrc

" Unmap the arrow keys
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

" gO to create a new line below cursor in normal mode
nmap g<C-O> o<ESC>k
" g<Ctrl+o> to create a new line above cursor (Ctrl to prevent collision with 'go' command)
nmap gO O<ESC>j


"I really hate that things don't auto-center
nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz
