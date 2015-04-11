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
colorscheme dotdev

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
set list listchars=tab:>\ ,trail:^,nbsp:^,extends:>,precedes:< ",eol:~

"set showmatch        " Shows matching brackets when text indicator is over them
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

" Test the actual colorscheme
syn match Comment      "\"__Comment.*"
syn match Constant     "\"__Constant.*"
syn match Cursor       "\"__Cursor.*"
syn match CursorLine   "\"__CursorLine.*"
syn match DiffAdd      "\"__DiffAdd.*"
syn match DiffChange   "\"__DiffChange.*"
syn match DiffText     "\"__DiffText.*"
syn match DiffDelete   "\"__DiffDelete.*"
syn match Folded       "\"__Folded.*"
syn match Function     "\"__Function.*"
syn match Identifier   "\"__Identifier.*"
syn match IncSearch    "\"__IncSearch.*"
syn match NonText      "\"__NonText.*"
syn match Normal       "\"__Normal.*"
syn match Pmenu        "\"__Pmenu.*"
syn match PreProc      "\"__PreProc.*"
syn match Search       "\"__Search.*"
syn match Special      "\"__Special.*"
syn match SpecialKey   "\"__SpecialKey.*"
syn match Statement    "\"__Statement.*"
syn match StatusLine   "\"__StatusLine.*"
syn match StatusLineNC "\"__StatusLineNC.*"
syn match String       "\"__String.*"
syn match Todo         "\"__Todo.*"
syn match Type         "\"__Type.*"
syn match Underlined   "\"__Underlined.*"
syn match VertSplit    "\"__VertSplit.*"
syn match Visual       "\"__Visual.*"

"__Comment              /* this is a comment */
"__Constant             var = SHBLAH
"__Cursor               char under the cursor?
"__CursorLine           Line where the cursor is
"__DiffAdd              +line added from file.orig
"__DiffChange           line changed from file.orig
"__DiffText             actual changes on this line
"__DiffDelete           -line removed from file.orig
"__Folded               +--- 1 line : Folded line ---
"__Function             function sblah()
"__Identifier           Never ran into that actually...
"__IncSearch            Next search term
"__NonText              This is not a text, move on
"__Normal               Typical text goes like this
"__Pmenu                Currently selected menu item
"__PreProc              #define SHBLAH true
"__Search               This is what you're searching for
"__Special              true false NULL SIGTERM
"__SpecialKey           Never ran into that either
"__Statement            if else return for switch
"__StatusLine           Statusline of current windows
"__StatusLineNC         Statusline of other windows
"__String               "Hello, World!"
"__Todo                 TODO: remove todos from source
"__Type                 int float char void unsigned uint32_t
"__Underlined           Anything underlined
"__VertSplit            :vsplit will only show ' | '
"__Visual               Selected text looks like this
