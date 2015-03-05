" ~/.vimrc
"
" by Ivan Sokolov

set nocompatible

set title
set hidden

" Numbers
set number
"set numberwidth=4
set ruler

syntax enable
set nomodeline
set backspace=indent,eol,start " Backspace will delete EOL chars, as well as indents
set matchpairs+=<:>            " For characters that forms pairs for using % commands, this is for HTML Tags
set iskeyword+=_,$,@,%,#       " Keywords are use to searching and recognized with many commands
set history=1000
set undolevels=1000
set updatetime=1500
set confirm

set mouse=a

" Disable all bells"
set noerrorbells visualbell t_vb=

" Color column at 80
set colorcolumn=80

" Backup and Swap"
set nobackup
set nowritebackup
set noswapfile

" Search Options"
set hlsearch   " Highlight search
set incsearch  " Incremental search
set magic      " Set magic on, for regular expressions
set ignorecase " Searches are Non Case-sensitive
set smartcase

set encoding=utf-8

" Display extra whitespace
"set list listchars=tab:··,trail:^
set list listchars=tab:\>\ ,trail:^

set showmatch        " Shows matching brackets when text indicator is over them
set scrolloff=5      " Show 5 lines of context around the cursor
set sidescrolloff=20
set lazyredraw       " The screen won't be redrawn unless actions took place
set cursorline
set scrolljump=10
set showcmd
set ttyfast          " Improves redrawing for newer computers
set pumheight=10
set diffopt+=context:3
set startofline

" Formatting Options
set nowrap

" Indentation
set autoindent
set copyindent
set smartindent

" Tab Options
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set noexpandtab

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

colorscheme jellybeans

" Also use local .vimrc
set exrc
set secure

" Hooray, bindings!!!
"noremap : ;
"noremap ; :
