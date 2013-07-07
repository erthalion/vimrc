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
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Bundle 'edsono/vim-matchit'
Bundle 'ivanov/vim-ipython'
Bundle 'xaizek/vim-inccomplete'
Bundle 'gavinheavyside/vim-asciidoc'
Bundle 'tpope/vim-abolish'
Bundle 'camelcasemotion'
Bundle 'mikewest/vimroom'
Bundle 'vcscommand.vim'
Bundle 'TwitVim'
Bundle 'hgrev'
" pip install powerline
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" pip install jedi
Bundle 'davidhalter/jedi-vim'
Bundle 'majutsushi/tagbar'
Bundle 'terryma/vim-multiple-cursors'
" dont forget copy snippets from
" https://github.com/robhudson/snipmate_for_django


""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on " обязательно!

let g:jedi#use_tabs_not_buffers = 0
let g:jedi#popup_on_dot = 0

let twitvim_enable_python = 1
let twitvim_count = 100

""" Vimroom
"let g:vimroom_background = "black"
let g:vimroom_min_sidebar_width = 5
let g:vimroom_sidebar_height = 5
let g:vimroom_width = 100

" Maximum size of file in megabytes (for enable largefile plugin)
let g:LargeFile=10

let g:pymode_breakpoint_key = "<leader>br"
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
let g:pymode_lint_write = 0
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8,mccabe"
let g:pymode_lint_onfly = 0

" Load rope plugin
let g:pymode_rope = 0
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
let g:pymode_rope_guess_project = 0
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

set fileencoding=utf-8
set fileencodings=utf8,koi8r,cp1251,cp866

set hidden
set ch=1
set mousehide
set autoindent
syntax on
set backspace=indent,eol,start whichwrap+=<,>,[,]
set expandtab

set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P\ Git:\ %{GitBranch()}\ %{HasPaste()}
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
"
"unmap F1 & F3
nmap <F1> <nop>
map <F1> <Esc>
imap <F1> <Esc>

nmap <leader>tc :tabnew <bar> :NERDTreeToggle<cr>i

imap <F6> <esc> :tabnext<cr>i
nmap <leader>tn :tabnext<cr>
nmap <leader>tb :tabprevious<cr>

"Tab closing
nmap <leader>tq :tabclose<cr>


"Clear search selection
nmap <leader>cls :noh<cr>

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
nmap <F2> :w<cr>
inoremap <F2> <c-o>:w<cr>
"
" F8 - список закладок
map <F8> :MarksBrowser<cr>
vmap <F8> <esc>:MarksBrowser<cr>
imap <F8> <esc>:MarksBrowser<cr>

" F11 - показать окно Taglist
map <F10> :Tagbar<cr>
vmap <F10> <esc>:Tagbar<cr>
imap <F10> <esc>:Tagbar<cr>

" < & > - делаем отступы для блоков
vmap < <gv
vmap > >gv

" Выключаем ненавистный режим замены
imap >Ins> <Esc>i

" \d - Go to definition (rope)
map <leader>def :RopeGotoDefinition<cr>
vmap <leader>def :RopeGotoDefinition<cr>
imap <leader>def :RopeGotoDefinition<cr>


set pastetoggle=<F3>

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

" Редко когда надо [ без пары =)
imap [ []<LEFT>
" Аналогично и для {
imap {<CR> {<CR>}<Esc>O

" С-q - выход из Vim 
"map <C-Q> <Esc>:qa<cr>

filetype on
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
au BufRead,BufNewFile *.phps    set filetype=php
au BufRead,BufNewFile *.thtml    set filetype=php
au BufRead,BufNewFile *.adoc    set syntax=asciidoc

" Настройки для SessionMgr
let g:SessionMgr_AutoManage = 0
let g:SessionMgr_DefaultName = "mysession"

" Настройки для Tlist (показвать только текущий файл в окне навигации по  коду)
let g:Tlist_Show_One_File = 1

set completeopt-=preview
set completeopt+=longest
set mps-=[:]

"Подсвечиваем все что можно подсвечивать

let python_highlight_all = 1

autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType cs set omnifunc=cscomplete#CompleteCS
"autocmd FileType cs set omnifunc=syntaxcomplete#Complete

"Перед сохранением вырезаем пробелы на концах (только в .py файлах)
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

"В .py файлах включаем умные отступы после ключевых слов
autocmd BufRead *.py set smartindent"cinwords=if,elif,else,for,while,try,except,finally,def,class

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

"cmake
let g:cmake_build_type = 'Debug'

function! SetCppStatusLine()
    set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P\ Git:\ %{GitBranch()}\ BuildType:\ %{g:cmake_build_type}
endfunction
au FileType c,cc,cpp,h,hpp,s call SetCppStatusLine()

function! ToggleCmakeBuildType()
    if g:cmake_build_type == 'Debug'
        let g:cmake_build_type = 'Release'
    else
        let g:cmake_build_type = 'Debug'
    endif
endfunction

function! CmakeBuild()
    silent !clear
    execute "!cmake -DCMAKE_BUILD_TYPE=" . g:cmake_build_type . " ."
    execute 'cw'
endfunction

function! BindCmake()
    map <F7> :call ToggleCmakeBuildType()<cr>
    imap <F7> <esc> :call ToggleCmakeBuildType()<cr>

    map <F8> :call CmakeBuild()<cr>
    imap <F8> <esc> :call CmakeBuild()<cr>
endfunction
au FileType c,cc,cpp,h,hpp,s call BindCmake()

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


""" For Vimroom
function! Read()
    execute ":NERDTreeClose"
    execute ":set nocursorline"
    execute ":set nonumber"
    execute ":VimroomToggle"
endfunction


""" For vcprompt
function! GetVcpromptBranch()
    let result = system('vcprompt')
    return result
endfunction

au VimEnter *  NERDTree

""" For ru lang
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбю;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.,ЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

map <F4>  :call TRANSLATE()<cr>
function TRANSLATE()
   let  a=getline('.')
   let co=col('.')-1
   let starts=strridx(a," ",co)
   let ends = stridx(a," ",co)
   if ends==-1
       let ends=strlen(a)
   endif
   let res = strpart(a,starts+1,ends-starts)
   let cmds = "~/.cabal/bin/gtc en ru " . res
   let out = system(cmds)
   echo out
endfunction

" Запуск проверки правописания

setlocal spell spelllang=
setlocal nospell
function ChangeSpellLang()
    if &spelllang =~ "en_us"
        setlocal spell spelllang=ru
        echo "spelllang: ru"
    elseif &spelllang =~ "ru"
        setlocal spell spelllang=
        setlocal nospell
        echo "spelllang: off"
    else
        setlocal spell spelllang=en_us
        echo "spelllang: en"
    endif
endfunc

" map spell on/off for English/Russian
map <leader>spl <Esc>:call ChangeSpellLang()<CR>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction
