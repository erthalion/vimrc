set shell=/bin/bash

set autoread

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

set wrap
set hlsearch
set cursorline
set nobackup
set noswapfile
set nocompatible
set ruler
set nu
set rnu
set foldmethod=indent
set foldlevelstart=40
set incsearch
set ignorecase " Make searches case-sensitive...
set smartcase  " ...unless they contain at least one uppercase character
"set gdefault   " Use global search by default
"set nohlsearch
set scrolljump=7
set scrolloff=7
set novisualbell
set t_vb=
set mouse=a
set mousemodel=popup
set breakindent

if has("win32")
    set termencoding=cp1251,utf-8
    set encoding=cp1251
else
    set termencoding=utf-8,cp1251
    set encoding=utf8
endif

set fileencoding=utf-8
set fileencodings=utf8,koi8r,cp1251,cp866

set hidden
set ch=1
set mousehide
set autoindent
syntax on
set backspace=indent,eol,start whichwrap+=<,>,[,]
set expandtab

set laststatus=2
set smartindent
set smarttab
set fo+=cr
set sessionoptions=curdir,buffers,tabpages
set tabstop=4
set shiftwidth=4
set expandtab

" Меню выбора кодировки текста (koi8-r, cp1251, cp866, utf8)
"set wildmode=longest,list,full
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

set wcm=<Tab> 
menu Encoding.koi8-r :e ++enc=koi8-r<CR>
menu Encoding.windows-1251 :e ++enc=cp1251<CR>
menu Encoding.cp866 :e ++enc=cp866<CR>
menu Encoding.utf-8 :e ++enc=utf8 <CR>

" Слова откуда будем завершать
set complete=""
" Из текущего буфера
set complete+=.
" Из словаря
set complete+=k
" Из других открытых буферов
set complete+=b
" из тегов 
set complete+=t

set nocp

set completeopt-=preview
set completeopt+=longest
set mps-=[:]

" Set comma as <leader> instead of default backslash
let mapleader=","

" Prevent Vim from clearing the scrollback buffer
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=

" Use the OS clipboard by default
set clipboard=unnamed

" Optimize for fast terminal connections
set ttyfast

" Time out on key codes but not mappings
set notimeout
set ttimeout
set ttimeoutlen=100

" Update syntax highlighting for more lines increased scrolling performance
syntax sync minlines=256

" Don't syntax highlight long lines
set synmaxcol=256

"" Blowfish for encryption
setlocal cm=zip
setlocal cm=blowfish

"" For ru lang
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбю;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.,ЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

"all themes are in /usr/share/vim/vim73/colors
if exists('$DISPLAY')
"if $DISPLAY == ""
    set t_Co=256
    :colorscheme wombat256mod
else
    :colorscheme evening
endif

" Spell checker
setlocal spell spelllang=
setlocal nospell

set wildignore+=*/build/*,*/bower_components/*,*/dist/*,*/node_modules/*,*/public/*,*/tmp/*,*/vendor/*,


let python_highlight_all = 1
let g:cmake_build_type = 'Debug'


set conceallevel=2
hi Conceal cterm=NONE ctermbg=NONE ctermfg=NONE

" Add hyphen into keywords to allow
" autocompletion with it
" http://stackoverflow.com/a/27070192
set iskeyword+=\-
