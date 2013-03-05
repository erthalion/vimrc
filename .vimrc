" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
"if has("syntax")
"  syntax on
"endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


set nocompatible
filetype off " обязательно!

set rtp+=~/.vim/bundle/vundle/

call vundle#rc()


""""""""""""""""""""""""""""""""""""""""""""""

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'snipMate'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/eclim'
Bundle 'wombat256.vim'
Bundle 'ujihisa/neco-ghc'
Bundle 'haskell/haskell-mode'
Bundle 'haskell.vim'
Bundle 'Twinside/vim-hoogle'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'cpp.vim'
Bundle 'vim-cpp-auto-include'
Bundle 'mattn/zencoding-vim'
Bundle 'othree/html5.vim'
Bundle 'closetag.vim'
Bundle 'Better-CSS-Syntax-for-Vim'
Bundle 'OmniCppComplete'
Bundle 'taglist.vim'
Bundle 'TaskList.vim'
Bundle 'sjl/gundo.vim'
Bundle 'pyflakes.vim'
Bundle 'pydoc.vim'
Bundle 'sontek/rope-vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'mileszs/ack.vim'
Bundle 'Git-Branch-Info'
Bundle 'motemen/git-vim'
Bundle 'python.vim'
Bundle 'mileszs/ack.vim'
"Bundle 'django.vim'
Bundle 'mjbrownie/pythoncomplete.vim'
Bundle 'lambdalisue/vim-django-support'
Bundle 'nvie/vim-flake8'
Bundle 'kchmck/vim-coffee-script'
Bundle 'LargeFile'
Bundle 'erthalion/taskpaper.vim'
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'
Bundle 'pythoncomplete'
Bundle 'erthalion/easy-doc.vim'
Bundle 'klen/python-mode'
" dont forget copy snippets from
" https://github.com/robhudson/snipmate_for_django


""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on " обязательно!

" Maximum size of file in megabytes (for enable largefile plugin)
let g:LargeFile=10
"let g:pydiction_location='/home/user/.vim/bundle/Pydiction/complete-dict'
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
let g:pymode_lint_write = 0
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8,mccabe"
let g:pymode_lint_onfly = 0

" Load rope plugin
let g:pymode_rope = 1
" Auto create and open ropeproject
let g:pymode_rope_auto_project = 1
" Enable autoimport
 let g:pymode_rope_enable_autoimport = 1
" Auto generate global cache
let g:pymode_rope_autoimport_generate = 1
let g:pymode_rope_autoimport_underlineds = 0
let g:pymode_rope_codeassist_maxfixes = 10
let g:pymode_rope_sorted_completions = 1
let g:pymode_rope_extended_complete = 1
let g:pymode_rope_autoimport_modules = ["os","shutil","datetime"]
let g:pymode_rope_confirm_saving = 1
let g:pymode_rope_global_prefix = "<C-x>p"
let g:pymode_rope_local_prefix = "<C-c>r"
let g:pymode_rope_vim_completion = 1
let g:pymode_rope_guess_project = 1
let g:pymode_rope_goto_def_newwin = ""
let g:pymode_rope_always_show_complete_menu = 0
" Enable python folding
let g:pymode_folding = 1
" Enable python objects and motion
let g:pymode_motion = 1
" Auto fix vim python paths if virtualenv enabled
let g:pymode_virtualenv = 1

"Enable pymode's custom syntax highlighting
let g:pymode_syntax = 1

" Enable all python highlightings
let g:pymode_syntax_all = 1

" Highlight "print" as function
let g:pymode_syntax_print_as_function = 0

" Highlight indentation errors
let g:pymode_syntax_indent_errors = g:pymode_syntax_all

" Highlight trailing spaces
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Highlight string formatting
let g:pymode_syntax_string_formatting = g:pymode_syntax_all

" Highlight str.format syntax
let g:pymode_syntax_string_format = g:pymode_syntax_all

" Highlight string.Template syntax
let g:pymode_syntax_string_templates = g:pymode_syntax_all

" Highlight doc-tests
let g:pymode_syntax_doctests = g:pymode_syntax_all

" Highlight builtin objects (__doc__, self, etc)
let g:pymode_syntax_builtin_objs = g:pymode_syntax_all

" Highlight builtin functions
let g:pymode_syntax_builtin_funcs = g:pymode_syntax_all

" Highlight exceptions
let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all

" For fast machines
let g:pymode_syntax_slow_sync = 0

set hlsearch
set cursorline
set nobackup
set noswapfile
set nocompatible
set ruler
set nu
set foldmethod=indent
set incsearch
"set nohlsearch
set scrolljump=7
set scrolloff=7
set novisualbell
set t_vb=
set mouse=a
set mousemodel=popup

if has("win32")
    set termencoding=cp1251,utf-8
    set encoding=cp1251
else
    set termencoding=utf-8,cp1251
    set encoding=utf8
endif

set hidden
set ch=1
set mousehide
set autoindent
syntax on
set backspace=indent,eol,start whichwrap+=<,>,[,]
set expandtab

set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P\ Git:\ %{GitBranch()} 
set laststatus=2
set smartindent
set smarttab
set fo+=cr
set sessionoptions=curdir,buffers,tabpages
set tabstop=4
set shiftwidth=4
set expandtab

let g:pyflakes_use_quickfix = 0
"for nerd tree
let NERDTreeIgnore = ['\.pyc$','\.orig$','\.rej$']


"-------------------------vim
"vim Горячие клавишы
"-------------------------
"nmap <F4> :tabnew <bar> :NERDTreeToggle<cr>
"vmap <F4> <esc> :tabnew <bar> :NERDTreeToggle<cr>i
"imap <F4> <esc> :tabnew <bar> :NERDTreeToggle<cr>i
nmap <leader>tn :tabnew <bar> :NERDTreeToggle<cr>i

"Tab switching
"nmap <F6> :tabnext<cr>
"vmap <F6> <esc> :tabnext<cr>i
"imap <F6> <esc> :tabnext<cr>i
nmap <leader>n :tabnext<cr>
nmap <leader>b :tabprevious<cr>

"Tab closing
nmap <leader>q :tabclose<cr>


"Clear search selection
nmap <leader>cls :let @/ = ""<cr>

nmap <C-T> <C-W><C-W>
" Пробел в нормальном режиме перелистывает страницы
nmap <Space> <PageDown>

"vim CTRL-F для omni completion
imap <C-F> <C-X><C-O>
"imap <C-F> <C-X><C-U>

" C-c and C-v - Copy/Paste в "глобальный клипборд"
vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

" Заставляем shift-insert работать как в Xterm
map <S-Insert> <MiddleMouse>

" C-y - удаление текущей строки
nmap <C-y> dd
imap <C-y> <esc>ddi

" C-d - дублирование текущей строки
imap <C-d> <esc>yypi

" Поиск и замена слова под курсором
nmap ; :%s/\<<c-r>=expand("<cword>")<cr>\>/

" F2 - быстрое сохранение
"nmap <F2>gggqG\|:w%<cr>
"vmap <F2> <esc>gggqG\|:w%<cr>i
"imap <F2> <esc>gggqG\|:w%<cr>i
nmap <F2> :w<cr>
inoremap <F2> <c-o>:w<cr>
"vmap <F2> <esc> :w<cr>i
"imap <F2> <esc> :w<cr>i

" F3 - просмотр ошибок
nmap <F3> :copen<cr>
vmap <F3> <esc>:copen<cr>
imap <F3> <esc>:copen<cr>

" F5 - просмотр списка буферов
"nmap <F5> <Esc>:BufExplorer<cr>
"vmap <F5> <esc>:BufExplorer<cr>
"imap <F5> <esc><esc>:BufExplorer<cr>


" F6 - предыдущий буфер
"map <F6> :bp<cr>
"vmap <F6> <esc>:bp<cr>i
"imap <F6> <esc>:bp<cr>i

" F7 - следующий буфер
"map <F7> :bn<cr>
"vmap <F7> <esc>:bn<cr>i
"imap <F7> <esc>:bn<cr>i

" F8 - список закладок
map <F8> :MarksBrowser<cr>
vmap <F8> <esc>:MarksBrowser<cr>
imap <F8> <esc>:MarksBrowser<cr>

" F9 - "make" команда
"map <F9> :make<cr>
"vmap <F9> <esc>:make<cr>i
"imap <F9> <esc>:make<cr>i

" F10 - удалить буфер
"map <F10> :bd<cr>
"vmap <F10> <esc>:bd<cr>
"imap <F10> <esc>:bd<cr>

" F11 - показать окно Taglist
map <F10> :TlistToggle<cr>
vmap <F10> <esc>:TlistToggle<cr>
imap <F10> <esc>:TlistToggle<cr>

" F12 - обозреватель файлов
"map <F12> :Ex<cr>
"vmap <F12> <esc>:Ex<cr>i
"imap <F12> <esc>:Ex<cr>i

" < & > - делаем отступы для блоков
vmap < <gv
vmap > >gv

" Выключаем ненавистный режим замены
imap >Ins> <Esc>i

set pastetoggle=<F3>

" Меню выбора кодировки текста (koi8-r, cp1251, cp866, utf8)
"set wildmode=longest,list,full
set wildmenu
set wcm=<Tab> 
menu Encoding.koi8-r :e ++enc=koi8-r<CR>
menu Encoding.windows-1251 :e ++enc=cp1251<CR>
menu Encoding.cp866 :e ++enc=cp866<CR>
menu Encoding.utf-8 :e ++enc=utf8 <CR>

" Редко когда надо [ без пары =)
imap [ []<LEFT>
" Аналогично и для {
imap {<CR> {<CR>}<Esc>O

" С-q - выход из Vim 
"map <C-Q> <Esc>:qa<cr>

filetype on
" Автозавершение слов по tab =)
function InsertTabWrapper()
     let col = col('.') - 1
     if !col || getline('.')[col - 1] !~ '\k'
         return "\<tab>"
     else
         return "\<c-p>"
     endif
endfunction
imap <tab> <c-r>=InsertTabWrapper()<cr>

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
"filetype on
"filetype indent on
"filetype plugin on
au BufRead,BufNewFile *.phps    set filetype=php
au BufRead,BufNewFile *.thtml    set filetype=php

" Настройки для SessionMgr
let g:SessionMgr_AutoManage = 0
let g:SessionMgr_DefaultName = "mysession"

" Настройки для Tlist (показвать только текущий файл в окне навигации по  коду)
let g:Tlist_Show_One_File = 1

set completeopt-=preview
set completeopt+=longest
set mps-=[:]

"Настройки табов для Python, согласно рекоммендациям

"set tabstop=4 
"set shiftwidth=4
"set smarttab
"set expandtab "Ставим табы пробелами
"set softtabstop=4 "4 пробела в табе

"Подсвечиваем все что можно подсвечивать

let python_highlight_all = 1

"Включаем 256 цветов в терминале, мы ведь работаем из иксов?
"Нужно во многих терминалах, например в gnome-terminal


autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType cs set omnifunc=cscomplete#CompleteCS
"autocmd FileType cs set omnifunc=syntaxcomplete#Complete
"Перед сохранением вырезаем пробелы на концах (только в .py файлах)

"autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

"В .py файлах включаем умные отступы после ключевых слов

"autocmd BufRead *.py set smartindent "cinwords=if,elif,else,for,while,try,except,finally,def,class

"all themes are in /usr/share/vim/vim73/colors
if exists('$DISPLAY')
"if $DISPLAY == ""
    set t_Co=256
    :colorscheme wombat256mod
else
    :colorscheme evening
endif

autocmd BufNewFile,BufRead *.cpp set formatprg=astyle\ -T4A1
autocmd BufNewFile,BufRead *.cs set formatprg=astyle\ -T4A1
autocmd BufNewFile,BufRead *.java set formatprg=astyle\ -T4A1
"autocmd BufWritePre *.cpp !astyle -T4A1 <afile>
"autocmd BufWritePre *.cs !astyle -T4A1 <afile>
"autocmd BufWritePre *.java !astyle -T4A1 <afile>

function! BindF5_C()
    if filereadable("Makefile")
        set makeprg=make
        map <f5>      :w<cr>:make<cr>:cw<cr>
        imap <f5> <esc>:w<cr>:make<cr>:cw<cr>
    else
        map <f5>      :w<cr>:make %:r<cr>:cw<cr>
        imap <f5> <esc>:w<cr>:make %:r<cr>:cw<cr>
    endif
endfunction
au FileType c,cc,cpp,h,hpp,s call BindF5_C()

function! BindF9_C()
    if filereadable("Makefile")
        set makeprg=make
        map <f9>      :w<cr>:make<cr>:cw<cr>:!./%<<cr>
        imap <f9> <esc>:w<cr>:make<cr>:cw<cr>:!./%<<cr>
    else
        map <f9>      :w<cr>:make %:r<cr>:cw<cr>:!./%<<cr>
        imap <f9> <esc>:w<cr>:make %:r<cr>:cw<cr>:!./%<<cr>
    endif
endfunction
au FileType c,cc,cpp,h,hpp,s call BindF9_C()

function! BindTag_C()
	" build tags of your own project with Ctrl-F12
	map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
endfunction
au FileType c,cc,cpp,h,hpp,s call BindTag_C()


command Pyflakes :call Pyflakes()
function! Pyflakes()
    let tmpfile = tempname()
    execute "w" tmpfile
    execute "set makeprg=(pyflakes\\ " . tmpfile .
            "\\\\\\|sed\\ s@" . tmpfile ."@%@)"
    silent make
    cw
endfunction

function! BindF5_Python()
	map <F5> :w\|call Pyflakes()\|!python %<cr>
	imap <F5> <Esc><F5>
endfunction
au FileType python call BindF5_Python()

function! BindTag_Python()
	" build tags of your own project with Ctrl-F12
	map <C-F12> :!ctags -R --python-kinds=-i<CR>
endfunction
au FileType python call BindTag_Python()

au VimEnter *  NERDTree
