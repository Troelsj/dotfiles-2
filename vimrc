" ~/.vimrc
"
" by Ivan Sokolov

" Vi Improved setting instead Vi settings
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

" Vundle

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
filetype plugin on

	Plugin 'gmarik/Vundle.vim'
	Plugin 'https://github.com/mhinz/vim-startify'

call vundle#end()

let g:startify_bookmarks = ['~/Projects/JLKCollections', '~/Projects/Messenger']
"let g:startify_change_to_vcs_root = 1
let g:rooter_patterns = ['.git', '.git/']
let g:startify_change_to_dir = 0
let g:startify_files_number = 5

set cinoptions+=j1

let java_comment_strings=1
"let java_highlight_java_lang_ids=1

let java_mark_braces_in_parens_as_errors=1
"let java_highlight_all=1
let java_highlight_debug=1
let java_ignore_javadoc=1
let java_highlight_java_lang_ids=1
"let java_highlight_functions="style"
let java_minlines = 150

"set foldmethod=syntax
"set foldenable
"syn region foldBraces start=/{/ end=/}/ transparent fold
"syn region foldJavadoc start=,/\*\*, end=,\*/, transparent fold keepend

"syntax clear javaBraces
"syntax clear javaDocComment

"syn region javaBraces start="{" end="}" transparent fold
"syn region javaDocComment start="/\*\*" end="\*/" keepend contains=javaCommentTitle,@javaHtml,javaDocTags,javaDocSeeTag,javaTodo,@Spell fold
