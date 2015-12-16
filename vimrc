if &diff || exists("vimpager")

set noloadplugins

else

set nocompatible
set encoding=utf8
set nobackup noswapfile nowritebackup noundofile
set incsearch hlsearch
set mouse=a
set modeline
set more
set ruler
set cursorline
set showmode
set showcmd
set pastetoggle=<F2>
set backspace=2
set scrolloff=3
set lazyredraw
"set foldmethod=syntax
set wildmenu
set fillchars=vert:\-
"set statusline=\ \%F%m%r%h%w\ \ %y\ [%{&ff}]\%=\ %l
set laststatus=2
set cmdheight=1

set wildchar=<Tab>
set backspace=indent,eol,start
set number
set notitle
set hidden
set iskeyword+=_,$,@,%,#
set noconfirm
set noerrorbells visualbell t_vb=
set colorcolumn=80
set magic
set ignorecase
set smartcase
"set list listchars=tab:\|\ ,trail:~,precedes:<,extends:>
set list listchars=tab:\>\ ,trail:·,precedes:«,extends:»
",eol:⌐
set scrolloff=5 sidescrolloff=5 scrolljump=1
set ttyfast
set diffopt+=context:3
set startofline
set nowrap
set autoindent copyindent smartindent
set tabstop=4 softtabstop=4 shiftwidth=4
set smarttab noexpandtab
set splitbelow splitright
set exrc secure
set cinoptions+=j1
set whichwrap=b,s,<,>,[,]
set nojoinspaces
set autoread
set clipboard=unnamed
set foldmethod=syntax
set foldnestmax=1

syntax on
set background=dark
colorscheme jellybeans

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'udalov/kotlin-vim'
Plugin 'bling/vim-airline'
Plugin 'rust-lang/rust.vim'
Plugin 'cespare/vim-toml'

call vundle#end()

filetype plugin on
filetype plugin indent on

let g:airline_theme='custom'

let g:airline_symbols   = {}
let g:airline_left_sep  = ''
let g:airline_right_sep = ''
let g:airline_section_warning = ''

function! AirlineInit()
	let g:airline_section_a = airline#section#create(['mode'])
	let g:airline_section_b = airline#section#create(['filetype'])
	let g:airline_section_c = airline#section#create(['%t'])

	let g:airline_section_x = airline#section#create(['ffenc'])
	let g:airline_section_y = 'foo'
	let g:airline_section_z = 'bar'
endfunction
autocmd User AirlineAfterInit call AirlineInit()

:au User AirlineAfterInit call AirlineInit()

:au FocusLost * wa

:au BufNewFile,BufRead *Pkgfile set ft=sh

augroup filetype pascal
	let pascal_fpc=1
	let pascal_delphi=1
	let pascal_functions=1
"	set tabstop=2 softtabstop=2 shiftwidth=2 et
augroup END

endif
