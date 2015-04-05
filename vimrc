" ~/.vimrc
"
" by Ivan Sokolov

set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'gmarik/Vundle.vim'
	Plugin 'Raimondi/delimitMate'
	Plugin 'udalov/kotlin-vim'
call vundle#end()
filetype plugin indent on

set backspace=indent,eol,start
set ruler
set number
set showcmd

syntax on

set mouse=a

"set background=dark
colorscheme jellybeans

" delimitMate
let delimitMate_expand_cr = 1
augroup myDelimitMate
	au!
	au FileType java let b:delimitMate_quotes = ['"', "'"]
	au FileType java let b:delimitMate_matchpairs = "(:),[:],{:},<:>"
augroup END

set title
set hidden

set nomodeline
set iskeyword+=_,$,@,%,#       " Keywords are use to searching and recognized with many commands
set history=1000
set undolevels=1000
set updatetime=1500
set confirm

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

" Also use local .vimrc
set exrc
set secure

" Hooray, bindings!!!
"noremap : ;
"noremap ; :

set cinoptions+=j1

"let java_comment_strings=1
"let java_mark_braces_in_parens_as_errors=1
"let java_highlight_all=1
"let java_highlight_debug=1
"let java_ignore_javadoc=1
"let java_highlight_java_lang_ids=1
"let java_highlight_functions="style"
"let java_minlines = 150

"set foldmethod=syntax
"set foldenable
"syn region foldBraces start=/{/ end=/}/ transparent fold
"syn region foldJavadoc start=,/\*\*, end=,\*/, transparent fold keepend

"syntax clear javaBraces
"syntax clear javaDocComment

"syn region javaBraces start="{" end="}" transparent fold
"syn region javaDocComment start="/\*\*" end="\*/" keepend contains=javaCommentTitle,@javaHtml,javaDocTags,javaDocSeeTag,javaTodo,@Spell fold

set whichwrap=b,s,<,>,[,]
