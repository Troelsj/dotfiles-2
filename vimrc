set nocompatible

syntax on

set nowrap
set number

set cc=80

set mouse=a
set mousehide

set showcmd

set matchpairs+=<:>
"set showmatch

set autoread

set backspace=indent,eol,start

set whichwrap=b,<,>,[,],l,h

" let c_syntax_for_h=""

"set foldenable
"set foldmethod=syntax
"set foldmethod=indent
"set foldcolumn=3
"set foldopen=all
"set foldlevel=all

set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set smartindent

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
call plug#end()

set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set showcmd
